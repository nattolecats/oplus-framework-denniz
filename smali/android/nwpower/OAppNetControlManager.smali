.class public Landroid/nwpower/OAppNetControlManager;
.super Ljava/lang/Object;
.source "OAppNetControlManager.java"

# interfaces
.implements Landroid/nwpower/IOAppNetControlManager;


# static fields
.field private static final blacklist BG_APP_NET_CONTROL_SWITCH_ENABLE:Z

.field private static final blacklist OAPPNETCONTROL_SERVICE:Ljava/lang/String; = "oappnetcontrol"

.field private static final blacklist SCREENOFF_APP_NET_CONTROL_SWITCH_ENABLE:Z

.field private static blacklist sInstance:Landroid/nwpower/OAppNetControlManager;


# instance fields
.field private final blacklist mService:Landroid/nwpower/IOAppNetControl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.radio.nwpower_bg_app_net_control_switch_enable"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/nwpower/OAppNetControlManager;->BG_APP_NET_CONTROL_SWITCH_ENABLE:Z

    .line 39
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.radio.nwpower_screenoff_app_net_control_switch_enable"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/nwpower/OAppNetControlManager;->SCREENOFF_APP_NET_CONTROL_SWITCH_ENABLE:Z

    .line 38
    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, "oappnetcontrol"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nwpower/IOAppNetControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nwpower/IOAppNetControl;

    move-result-object v0

    iput-object v0, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    .line 55
    const-string v0, "OAppNetControlManager"

    const-string v1, "Service init ok!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public static blacklist getInstance()Landroid/nwpower/OAppNetControlManager;
    .locals 2

    .line 45
    const-class v0, Landroid/nwpower/OAppNetControlManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Landroid/nwpower/OAppNetControlManager;->sInstance:Landroid/nwpower/OAppNetControlManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Landroid/nwpower/OAppNetControlManager;

    invoke-direct {v1}, Landroid/nwpower/OAppNetControlManager;-><init>()V

    sput-object v1, Landroid/nwpower/OAppNetControlManager;->sInstance:Landroid/nwpower/OAppNetControlManager;

    .line 49
    :cond_0
    sget-object v1, Landroid/nwpower/OAppNetControlManager;->sInstance:Landroid/nwpower/OAppNetControlManager;

    monitor-exit v0

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist destroySocket(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 89
    iget-object v0, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    if-nez v0, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/nwpower/IOAppNetControl;->destroySocket(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getStaticOAppNetControlEnable()Z
    .locals 1

    .line 60
    sget-boolean v0, Landroid/nwpower/OAppNetControlManager;->BG_APP_NET_CONTROL_SWITCH_ENABLE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/nwpower/OAppNetControlManager;->SCREENOFF_APP_NET_CONTROL_SWITCH_ENABLE:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist legacyDestroySocket()V
    .locals 2

    .line 101
    iget-object v0, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    if-nez v0, :cond_0

    .line 102
    return-void

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/nwpower/IOAppNetControl;->legacyDestroySocket()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist networkDisableWhiteList(Ljava/util/List;I)I
    .locals 3
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 113
    .local p1, "appConfigUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 114
    .local v0, "returnValue":I
    iget-object v1, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    invoke-interface {v1, p1, p2}, Landroid/nwpower/IOAppNetControl;->networkDisableWhiteList(Ljava/util/List;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 121
    nop

    .line 122
    return v0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 115
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist requestAppFireWallHistoryStamp(I)[J
    .locals 2
    .param p1, "uid"    # I

    .line 128
    iget-object v0, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 129
    new-array v0, v1, [J

    fill-array-data v0, :array_0

    return-object v0

    .line 132
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/nwpower/IOAppNetControl;->requestAppFireWallHistoryStamp(I)[J

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    new-array v1, v1, [J

    fill-array-data v1, :array_1

    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public blacklist setFirewall(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 65
    iget-object v0, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    if-nez v0, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/nwpower/IOAppNetControl;->setFirewall(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .line 73
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setFirewallWithArgs(IZII)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .param p3, "netrestore"    # I
    .param p4, "scenes"    # I

    .line 77
    iget-object v0, p0, Landroid/nwpower/OAppNetControlManager;->mService:Landroid/nwpower/IOAppNetControl;

    if-nez v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/nwpower/IOAppNetControl;->setFirewallWithArgs(IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    nop

    .line 85
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
