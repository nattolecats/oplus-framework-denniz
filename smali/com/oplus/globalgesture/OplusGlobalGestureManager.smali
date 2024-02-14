.class public Lcom/oplus/globalgesture/OplusGlobalGestureManager;
.super Ljava/lang/Object;
.source "OplusGlobalGestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;,
        Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ABORT:I = 0x3

.field public static final blacklist ACTION_DOWN:I = 0x0

.field public static final blacklist ACTION_MOVE:I = 0x2

.field public static final blacklist ACTION_UP:I = 0x1

.field public static final blacklist GESTURE_FIVE_FINGERS:I = 0x8

.field public static final blacklist GESTURE_FORE_FINGERS:I = 0x4

.field public static final blacklist GESTURE_MULTI_FINGERS_WITH_MOVE:I = 0x10000000

.field public static final blacklist GESTURE_THREE_FINGERS:I = 0x2

.field public static final blacklist GESTURE_TWO_FINGERS:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "OplusGlobalGestureManager"

.field private static blacklist sBundleKeyMotion:Ljava/lang/String;

.field private static blacklist sBundleKeyReason:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lcom/oplus/globalgesture/OplusGlobalGestureManager;

.field private static blacklist sServiceName:Ljava/lang/String;


# instance fields
.field private blacklist mExService:Landroid/os/IOplusExService;

.field private final blacklist mGlobalGestureObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;",
            "Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    const-string v0, "OPLUSExService"

    sput-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sServiceName:Ljava/lang/String;

    .line 29
    const-string v0, "reason"

    sput-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sBundleKeyReason:Ljava/lang/String;

    .line 30
    const-string v0, "MotionEvent"

    sput-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sBundleKeyMotion:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mExService:Landroid/os/IOplusExService;

    .line 60
    invoke-direct {p0}, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->verifyService()V

    .line 61
    return-void
.end method

.method public static blacklist getBundleKeyMotion()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sBundleKeyMotion:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getBundleKeyReason()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sBundleKeyReason:Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/oplus/globalgesture/OplusGlobalGestureManager;
    .locals 2

    .line 49
    sget-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sInstance:Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    if-nez v0, :cond_1

    .line 50
    const-class v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sInstance:Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    invoke-direct {v1}, Lcom/oplus/globalgesture/OplusGlobalGestureManager;-><init>()V

    sput-object v1, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sInstance:Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    .line 54
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 56
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sInstance:Lcom/oplus/globalgesture/OplusGlobalGestureManager;

    return-object v0
.end method

.method public static blacklist getServiceName()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->sServiceName:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist verifyService()V
    .locals 3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mExService:Landroid/os/IOplusExService;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IOplusExService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mExService:Landroid/os/IOplusExService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyService e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusGlobalGestureManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist registerGestureObserver(Landroid/content/Context;Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;ILjava/util/List;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;
    .param p3, "config"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    .line 74
    .local p4, "validRegion":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-gtz p3, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 80
    const-string v2, "OplusGlobalGestureManager"

    const-string v3, "already registered before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    monitor-exit v1

    return v0

    .line 84
    :cond_1
    new-instance v2, Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;

    invoke-direct {v2, p0, p2}, Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;-><init>(Lcom/oplus/globalgesture/OplusGlobalGestureManager;Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;)V

    .line 85
    .local v2, "delegate":Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;
    const-string v3, "OplusGlobalGestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start registerGestureObserver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delegate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :try_start_1
    invoke-direct {p0}, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->verifyService()V

    .line 88
    iget-object v3, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v3, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4, p3, p4}, Landroid/os/IOplusExService;->registerGlobalGestureObserver(Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;Ljava/lang/String;ILjava/util/List;)Z

    move-result v3

    .line 90
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 91
    iget-object v4, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :cond_2
    :try_start_2
    monitor-exit v1

    return v3

    .line 97
    .end local v3    # "result":Z
    :cond_3
    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusGlobalGestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerGestureObserver RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v2    # "delegate":Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserverDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 100
    return v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 75
    :cond_4
    :goto_1
    const-string v1, "OplusGlobalGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerGestureObserver failed, invalid args:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0
.end method

.method public blacklist unregisterGestureObserver(Landroid/content/Context;Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oplus/globalgesture/OplusGlobalGestureManager$OplusGlobalGestureObserver;

    .line 104
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;

    .line 110
    .local v2, "delegate":Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    const-string v3, "OplusGlobalGestureManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start unregisterGestureObserver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", delegate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v2, :cond_2

    .line 113
    :try_start_1
    invoke-direct {p0}, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->verifyService()V

    .line 114
    iget-object v3, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mExService:Landroid/os/IOplusExService;

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mGlobalGestureObservers:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lcom/oplus/globalgesture/OplusGlobalGestureManager;->mExService:Landroid/os/IOplusExService;

    invoke-interface {v3, v2}, Landroid/os/IOplusExService;->unregisterGlobalGestureObserver(Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return v0

    .line 120
    :cond_1
    goto :goto_0

    .line 118
    :catch_0
    move-exception v3

    .line 119
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusGlobalGestureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterGestureObserver RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2    # "delegate":Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v1

    .line 124
    return v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 105
    :cond_3
    :goto_1
    const-string v1, "OplusGlobalGestureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterGestureObserver failed, invalid args:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v0
.end method
