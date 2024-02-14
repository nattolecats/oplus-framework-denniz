.class public final Lcom/oplus/nwpower/OSysNetControlManager;
.super Ljava/lang/Object;
.source "OSysNetControlManager.java"


# static fields
.field public static final blacklist OSYSNETCONTROL_SERVICE:Ljava/lang/String; = "osysnetcontrol"

.field private static final blacklist TAG:Ljava/lang/String; = "OSysNetControlManager"

.field private static volatile blacklist sInstance:Lcom/oplus/nwpower/OSysNetControlManager;


# instance fields
.field private final blacklist mService:Lcom/oplus/nwpower/IOSysNetControl;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/nwpower/IOSysNetControl;)V
    .locals 0
    .param p1, "service"    # Lcom/oplus/nwpower/IOSysNetControl;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/oplus/nwpower/OSysNetControlManager;->mService:Lcom/oplus/nwpower/IOSysNetControl;

    .line 39
    return-void
.end method

.method public static greylist getInstance()Lcom/oplus/nwpower/OSysNetControlManager;
    .locals 5

    .line 50
    sget-object v0, Lcom/oplus/nwpower/OSysNetControlManager;->sInstance:Lcom/oplus/nwpower/OSysNetControlManager;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lcom/oplus/nwpower/OSysNetControlManager;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/oplus/nwpower/OSysNetControlManager;->sInstance:Lcom/oplus/nwpower/OSysNetControlManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 54
    :try_start_1
    new-instance v1, Lcom/oplus/nwpower/OSysNetControlManager;

    const-string v2, "osysnetcontrol"

    .line 55
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/nwpower/IOSysNetControl$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/nwpower/IOSysNetControl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oplus/nwpower/OSysNetControlManager;-><init>(Lcom/oplus/nwpower/IOSysNetControl;)V

    sput-object v1, Lcom/oplus/nwpower/OSysNetControlManager;->sInstance:Lcom/oplus/nwpower/OSysNetControlManager;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_2
    const-string v2, "OSysNetControlManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceNotFoundException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ServiceManager$ServiceNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .end local v1    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/oplus/nwpower/OSysNetControlManager;->sInstance:Lcom/oplus/nwpower/OSysNetControlManager;

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 63
    :cond_1
    sget-object v0, Lcom/oplus/nwpower/OSysNetControlManager;->sInstance:Lcom/oplus/nwpower/OSysNetControlManager;

    return-object v0
.end method


# virtual methods
.method public blacklist setDataEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/oplus/nwpower/OSysNetControlManager;->mService:Lcom/oplus/nwpower/IOSysNetControl;

    invoke-interface {v0, p1}, Lcom/oplus/nwpower/IOSysNetControl;->setDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    nop

    .line 86
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set data enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSysNetControlManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWifiEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/oplus/nwpower/OSysNetControlManager;->mService:Lcom/oplus/nwpower/IOSysNetControl;

    invoke-interface {v0, p1}, Lcom/oplus/nwpower/IOSysNetControl;->setWifiEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    nop

    .line 108
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not set wifi enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSysNetControlManager"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
