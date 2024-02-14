.class public Landroid/os/OplusGestureMonitorManager;
.super Ljava/lang/Object;
.source "OplusGestureMonitorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusGestureMonitorManager$OnGestureObserverDelegate;,
        Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;,
        Landroid/os/OplusGestureMonitorManager$OnGestureObserver;,
        Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;
    }
.end annotation


# static fields
.field public static final whitelist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusGestureMonitorManager"

.field private static volatile blacklist sInstance:Landroid/os/OplusGestureMonitorManager;


# instance fields
.field private blacklist mExService:Landroid/os/IOplusExService;

.field private final blacklist mGestureObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/OplusGestureMonitorManager$OnGestureObserver;",
            "Landroid/os/IOplusGestureCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPointersEventObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;",
            "Landroid/os/IOplusExInputCallBack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 30
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    .line 36
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusGestureMonitorManager;->sInstance:Landroid/os/OplusGestureMonitorManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    .line 50
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    .line 51
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    .line 52
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 53
    return-void
.end method

.method private blacklist checkExService()V
    .locals 1

    .line 261
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-nez v0, :cond_0

    .line 262
    nop

    .line 263
    const-string v0, "OPLUSExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 262
    invoke-static {v0}, Landroid/os/IOplusExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    .line 265
    :cond_0
    return-void
.end method

.method public static whitelist getInstance()Landroid/os/OplusGestureMonitorManager;
    .locals 2

    .line 39
    sget-object v0, Landroid/os/OplusGestureMonitorManager;->sInstance:Landroid/os/OplusGestureMonitorManager;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Landroid/os/OplusGestureMonitorManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Landroid/os/OplusGestureMonitorManager;->sInstance:Landroid/os/OplusGestureMonitorManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Landroid/os/OplusGestureMonitorManager;

    invoke-direct {v1}, Landroid/os/OplusGestureMonitorManager;-><init>()V

    sput-object v1, Landroid/os/OplusGestureMonitorManager;->sInstance:Landroid/os/OplusGestureMonitorManager;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/OplusGestureMonitorManager;->sInstance:Landroid/os/OplusGestureMonitorManager;

    return-object v0
.end method


# virtual methods
.method public whitelist dealScreenoffGesture(I)V
    .locals 3
    .param p1, "nGesture"    # I

    .line 216
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 217
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IOplusExService;->dealScreenoffGesture(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealScreenoffGesture failed, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGestureMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist getGestureState(I)Z
    .locals 3
    .param p1, "nGesture"    # I

    .line 238
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 239
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IOplusExService;->getGestureState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGestureState failed, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGestureMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist pauseExInputEvent()V
    .locals 3

    .line 140
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 141
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    .line 143
    :try_start_0
    invoke-interface {v0}, Landroid/os/IOplusExService;->pauseExInputEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseExInputEvent failed, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGestureMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist pilferPointers()V
    .locals 3

    .line 250
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 251
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    .line 253
    :try_start_0
    invoke-interface {v0}, Landroid/os/IOplusExService;->pilferPointers()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pilferPointers failed, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGestureMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist registerInputEvent(Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;)Z
    .locals 7
    .param p1, "observer"    # Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

    .line 56
    sget-boolean v0, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "start registerInputEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 60
    const-string v1, "OplusGestureMonitorManager"

    const-string v2, "observer is null, registerInputEvent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return v0

    .line 64
    :cond_1
    iget-object v1, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    const-string v2, "OplusGestureMonitorManager"

    const-string v3, "OnPointerEventObserver already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    monitor-exit v1

    return v0

    .line 69
    :cond_2
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 70
    new-instance v2, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;-><init>(Landroid/os/OplusGestureMonitorManager;Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .local v2, "delegate":Landroid/os/IOplusExInputCallBack;
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    invoke-interface {v3, v2}, Landroid/os/IOplusExService;->registerInputEvent(Landroid/os/IOplusExInputCallBack;)Z

    move-result v3

    .line 73
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 74
    iget-object v4, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v4, "OplusGestureMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerInputEvent succeed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " observer left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_3
    :try_start_2
    monitor-exit v1

    return v3

    .line 78
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusGestureMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerInputEvent failed, e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    nop

    .end local v2    # "delegate":Landroid/os/IOplusExInputCallBack;
    .end local v3    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 82
    return v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist registerRawInputEvent(Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;)Z
    .locals 7
    .param p1, "observer"    # Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

    .line 86
    sget-boolean v0, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "start registerRawInputEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 90
    const-string v1, "OplusGestureMonitorManager"

    const-string v2, "observer is null, registerRawInputEvent failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return v0

    .line 94
    :cond_1
    iget-object v1, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 96
    const-string v2, "OplusGestureMonitorManager"

    const-string v3, "raw OnPointerEventObserver already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v1

    return v0

    .line 99
    :cond_2
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 100
    new-instance v2, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/OplusGestureMonitorManager$OnPointerEventObserverDelegate;-><init>(Landroid/os/OplusGestureMonitorManager;Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v2, "delegate":Landroid/os/IOplusExInputCallBack;
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    invoke-interface {v3, v2}, Landroid/os/IOplusExService;->registerRawInputEvent(Landroid/os/IOplusExInputCallBack;)Z

    move-result v3

    .line 103
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 104
    iget-object v4, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v4, "OplusGestureMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRawInputEvent succeed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " observer left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :cond_3
    :try_start_2
    monitor-exit v1

    return v3

    .line 108
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusGestureMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRawInputEvent failed, e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    nop

    .end local v2    # "delegate":Landroid/os/IOplusExInputCallBack;
    .end local v3    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 112
    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist registerScreenoffGesture(Landroid/os/OplusGestureMonitorManager$OnGestureObserver;)Z
    .locals 7
    .param p1, "observer"    # Landroid/os/OplusGestureMonitorManager$OnGestureObserver;

    .line 162
    sget-boolean v0, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "start registerScreenoffGesture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 166
    const-string v1, "OplusGestureMonitorManager"

    const-string v2, "observer is null, registerScreenoffGesture failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v0

    .line 170
    :cond_1
    iget-object v1, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 172
    const-string v2, "OplusGestureMonitorManager"

    const-string v3, "OnGestureObserver already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    monitor-exit v1

    return v0

    .line 175
    :cond_2
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 176
    new-instance v2, Landroid/os/OplusGestureMonitorManager$OnGestureObserverDelegate;

    invoke-direct {v2, p0, p1}, Landroid/os/OplusGestureMonitorManager$OnGestureObserverDelegate;-><init>(Landroid/os/OplusGestureMonitorManager;Landroid/os/OplusGestureMonitorManager$OnGestureObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v2, "delegate":Landroid/os/IOplusGestureCallBack;
    :try_start_1
    iget-object v3, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    invoke-interface {v3, v2}, Landroid/os/IOplusExService;->registerScreenoffGesture(Landroid/os/IOplusGestureCallBack;)Z

    move-result v3

    .line 179
    .local v3, "result":Z
    if-eqz v3, :cond_3

    .line 180
    iget-object v4, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v4, "OplusGestureMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerScreenoffGesture succeed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " observer left."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_3
    :try_start_2
    monitor-exit v1

    return v3

    .line 184
    .end local v3    # "result":Z
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusGestureMonitorManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerScreenoffGesture failed, e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    nop

    .end local v2    # "delegate":Landroid/os/IOplusGestureCallBack;
    .end local v3    # "e":Landroid/os/RemoteException;
    monitor-exit v1

    .line 188
    return v0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public whitelist resumeExInputEvent()V
    .locals 3

    .line 151
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 152
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    .line 154
    :try_start_0
    invoke-interface {v0}, Landroid/os/IOplusExService;->resumeExInputEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeExInputEvent failed, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGestureMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setGestureState(IZ)V
    .locals 3
    .param p1, "nGesture"    # I
    .param p2, "isOpen"    # Z

    .line 227
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V

    .line 228
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    .line 230
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/IOplusExService;->setGestureState(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGestureState failed, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGestureMonitorManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist unregisterInputEvent(Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;)V
    .locals 6
    .param p1, "observer"    # Landroid/os/OplusGestureMonitorManager$OnPointerEventObserver;

    .line 116
    sget-boolean v0, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "start unregisterInputEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    if-nez p1, :cond_1

    .line 120
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "observer is null, unregisterInputEvent failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    monitor-enter v0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IOplusExInputCallBack;

    .line 126
    .local v1, "delegate":Landroid/os/IOplusExInputCallBack;
    if-eqz v1, :cond_2

    .line 127
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    invoke-interface {v2, v1}, Landroid/os/IOplusExService;->unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V

    .line 130
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, "OplusGestureMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterInputEvent succeed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/OplusGestureMonitorManager;->mPointersEventObservers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " observer left."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "OplusGestureMonitorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterInputEvent failed, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "delegate":Landroid/os/IOplusExInputCallBack;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist unregisterScreenoffGesture(Landroid/os/OplusGestureMonitorManager$OnGestureObserver;)V
    .locals 6
    .param p1, "observer"    # Landroid/os/OplusGestureMonitorManager$OnGestureObserver;

    .line 192
    sget-boolean v0, Landroid/os/OplusGestureMonitorManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "start unregisterScreenoffGesture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    if-nez p1, :cond_1

    .line 196
    const-string v0, "OplusGestureMonitorManager"

    const-string v1, "observer is null, unregisterScreenoffGesture failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IOplusGestureCallBack;

    .line 202
    .local v1, "delegate":Landroid/os/IOplusGestureCallBack;
    if-eqz v1, :cond_2

    .line 203
    invoke-direct {p0}, Landroid/os/OplusGestureMonitorManager;->checkExService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :try_start_1
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mExService:Landroid/os/IOplusExService;

    invoke-interface {v2, v1}, Landroid/os/IOplusExService;->unregisterScreenoffGesture(Landroid/os/IOplusGestureCallBack;)V

    .line 206
    iget-object v2, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v2, "OplusGestureMonitorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterScreenoffGesture succeed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/OplusGestureMonitorManager;->mGestureObservers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " observer left."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "OplusGestureMonitorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterScreenoffGesture failed, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .end local v1    # "delegate":Landroid/os/IOplusGestureCallBack;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
