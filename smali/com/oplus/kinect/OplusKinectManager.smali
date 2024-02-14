.class public Lcom/oplus/kinect/OplusKinectManager;
.super Ljava/lang/Object;
.source "OplusKinectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;,
        Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;
    }
.end annotation


# static fields
.field public static final whitelist KINECT_FLIP:I = 0x2

.field public static final whitelist KINECT_PICK_UP:I = 0x1

.field public static final whitelist TAG:Ljava/lang/String; = "OplusKinectManager"

.field private static volatile blacklist sInstance:Lcom/oplus/kinect/OplusKinectManager;

.field private static blacklist sServiceName:Ljava/lang/String;


# instance fields
.field private final blacklist mKinectObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;",
            "Lcom/oplus/kinect/IOplusKinectObserver;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKinectService:Lcom/oplus/kinect/IOplusKinectService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 35
    const-string v0, "KinectService"

    sput-object v0, Lcom/oplus/kinect/OplusKinectManager;->sServiceName:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    .line 58
    invoke-direct {p0}, Lcom/oplus/kinect/OplusKinectManager;->verifyService()V

    .line 59
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/kinect/OplusKinectManager;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    sget-object v0, Lcom/oplus/kinect/OplusKinectManager;->sInstance:Lcom/oplus/kinect/OplusKinectManager;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/oplus/kinect/OplusKinectManager;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/oplus/kinect/OplusKinectManager;->sInstance:Lcom/oplus/kinect/OplusKinectManager;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/oplus/kinect/OplusKinectManager;

    invoke-direct {v1}, Lcom/oplus/kinect/OplusKinectManager;-><init>()V

    sput-object v1, Lcom/oplus/kinect/OplusKinectManager;->sInstance:Lcom/oplus/kinect/OplusKinectManager;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/kinect/OplusKinectManager;->sInstance:Lcom/oplus/kinect/OplusKinectManager;

    return-object v0
.end method

.method public static whitelist getServiceName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    sget-object v0, Lcom/oplus/kinect/OplusKinectManager;->sServiceName:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist verifyService()V
    .locals 3

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectService:Lcom/oplus/kinect/IOplusKinectService;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/oplus/kinect/OplusKinectManager;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/kinect/IOplusKinectService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/kinect/IOplusKinectService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectService:Lcom/oplus/kinect/IOplusKinectService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
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

    const-string v2, "OplusKinectManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist registerKinectObserver(Landroid/content/Context;Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;I)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;
    .param p3, "config"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-gtz p3, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    monitor-enter v1

    .line 78
    :try_start_0
    iget-object v2, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "OplusKinectManager"

    const-string v3, "already registered before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v1

    return v0

    .line 83
    :cond_1
    new-instance v2, Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;

    invoke-direct {v2, p0, p2}, Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;-><init>(Lcom/oplus/kinect/OplusKinectManager;Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;)V

    .line 84
    .local v2, "delegate":Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;
    const-string v3, "OplusKinectManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start registerKinectObserver:"

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

    .line 86
    :try_start_1
    invoke-direct {p0}, Lcom/oplus/kinect/OplusKinectManager;->verifyService()V

    .line 87
    iget-object v3, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectService:Lcom/oplus/kinect/IOplusKinectService;

    if-eqz v3, :cond_3

    .line 88
    invoke-interface {v3, v2, p3}, Lcom/oplus/kinect/IOplusKinectService;->registerKinectObserver(Lcom/oplus/kinect/IOplusKinectObserver;I)Z

    move-result v3

    .line 89
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 90
    iget-object v4, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_2
    :try_start_2
    monitor-exit v1

    return v3

    .line 96
    .end local v3    # "result":Z
    :cond_3
    goto :goto_0

    .line 94
    :catch_0
    move-exception v3

    .line 95
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusKinectManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerKinectObserver RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v2    # "delegate":Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserverDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 99
    return v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 74
    :cond_4
    :goto_1
    const-string v1, "OplusKinectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerKinectObserver failed, invalid args:"

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

    .line 75
    return v0
.end method

.method public whitelist unregisterKinectObserver(Landroid/content/Context;Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Lcom/oplus/kinect/OplusKinectManager$OplusKinectObserver;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/kinect/IOplusKinectObserver;

    .line 110
    .local v2, "delegate":Lcom/oplus/kinect/IOplusKinectObserver;
    const-string v3, "OplusKinectManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start unregisterKinectObserver:"

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
    invoke-direct {p0}, Lcom/oplus/kinect/OplusKinectManager;->verifyService()V

    .line 114
    iget-object v3, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectService:Lcom/oplus/kinect/IOplusKinectService;

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectObservers:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v3, p0, Lcom/oplus/kinect/OplusKinectManager;->mKinectService:Lcom/oplus/kinect/IOplusKinectService;

    invoke-interface {v3, v2}, Lcom/oplus/kinect/IOplusKinectService;->unregisterKinectObserver(Lcom/oplus/kinect/IOplusKinectObserver;)Z

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
    const-string v4, "OplusKinectManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterKinectObserver RemoteException, err: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v2    # "delegate":Lcom/oplus/kinect/IOplusKinectObserver;
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
    const-string v1, "OplusKinectManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterKinectObserver failed, invalid args:"

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
