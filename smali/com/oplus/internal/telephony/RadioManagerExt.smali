.class public Lcom/oplus/internal/telephony/RadioManagerExt;
.super Ljava/lang/Object;
.source "RadioManagerExt.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RadioManagerExt"

.field private static blacklist sInstance:Lcom/oplus/internal/telephony/RadioManagerExt;


# instance fields
.field private blacklist mImpl:Lcom/android/internal/telephony/IOplusRadioManager;


# direct methods
.method private constructor blacklist <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getInstance()Lcom/android/internal/telephony/OplusTelephonyFactory;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IOplusRadioManager;->DEFAULT:Lcom/android/internal/telephony/IOplusRadioManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/OplusTelephonyFactory;->getFeature(Lcom/android/internal/telephony/common/IOplusCommonFeature;[Ljava/lang/Object;)Lcom/android/internal/telephony/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IOplusRadioManager;

    iput-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    .line 36
    return-void
.end method

.method public static blacklist getInstance()Lcom/oplus/internal/telephony/RadioManagerExt;
    .locals 2

    .line 39
    const-class v0, Lcom/oplus/internal/telephony/RadioManagerExt;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lcom/oplus/internal/telephony/RadioManagerExt;->sInstance:Lcom/oplus/internal/telephony/RadioManagerExt;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/oplus/internal/telephony/RadioManagerExt;

    invoke-direct {v1}, Lcom/oplus/internal/telephony/RadioManagerExt;-><init>()V

    sput-object v1, Lcom/oplus/internal/telephony/RadioManagerExt;->sInstance:Lcom/oplus/internal/telephony/RadioManagerExt;

    .line 43
    :cond_0
    sget-object v1, Lcom/oplus/internal/telephony/RadioManagerExt;->sInstance:Lcom/oplus/internal/telephony/RadioManagerExt;

    monitor-exit v0

    return-object v1

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 131
    const-string v0, "RadioManagerExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 134
    const-string v0, "RadioManagerExt"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void
.end method


# virtual methods
.method public blacklist forceRefreshSimState(ZI)V
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 106
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusRadioManager;->forceRefreshSimState(ZI)V

    goto :goto_0

    .line 109
    :cond_0
    const-string v0, "forceRefreshSimState: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 111
    :goto_0
    return-void
.end method

.method public blacklist isModemPowerOff(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 89
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusRadioManager;->isModemPowerOff(I)Z

    goto :goto_0

    .line 92
    :cond_0
    const-string v0, "isModemPowerOff: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 94
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPowerOnFeatureAllClosed()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusRadioManager;->isPowerOnFeatureAllClosed()Z

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, "isPowerOnFeatureAllClosed: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 61
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyAirplaneModeChange(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 48
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusRadioManager;->notifyAirplaneModeChange(Z)V

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "notifyAirplaneModeChange: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 53
    :goto_0
    return-void
.end method

.method public blacklist notifySimModeChange(ZI)V
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 81
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusRadioManager;->notifySimModeChange(ZI)V

    goto :goto_0

    .line 84
    :cond_0
    const-string v0, "notifySimModeChange: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void
.end method

.method public blacklist registerForRadioPowerChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IOplusRadioManager;->registerForRadioPowerChange(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 68
    :cond_0
    const-string v0, "registerForRadioPowerChange: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method

.method public blacklist sendRequestBeforeSetRadioPower(ZI)V
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 123
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusRadioManager;->sendRequestBeforeSetRadioPower(ZI)V

    goto :goto_0

    .line 126
    :cond_0
    const-string v0, "sendRequestBeforeSetRadioPower: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void
.end method

.method public blacklist setRadioPower(ZI)I
    .locals 1
    .param p1, "power"    # Z
    .param p2, "phoneId"    # I

    .line 114
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusRadioManager;->setRadioPower(ZI)I

    move-result v0

    return v0

    .line 117
    :cond_0
    const-string v0, "setRadioPower: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 118
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setSilentRebootPropertyForAllModem(Ljava/lang/String;)V
    .locals 1
    .param p1, "isSilentReboot"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 99
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusRadioManager;->setSilentRebootPropertyForAllModem(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "setSilentRebootPropertyForAllModem: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void
.end method

.method public blacklist unregisterForRadioPowerChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 73
    iget-object v0, p0, Lcom/oplus/internal/telephony/RadioManagerExt;->mImpl:Lcom/android/internal/telephony/IOplusRadioManager;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusRadioManager;->unregisterForRadioPowerChange(Landroid/os/Handler;)V

    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "unregisterForRadioPowerChange: null"

    invoke-static {v0}, Lcom/oplus/internal/telephony/RadioManagerExt;->loge(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void
.end method
