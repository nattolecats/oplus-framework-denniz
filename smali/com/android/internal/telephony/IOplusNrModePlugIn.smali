.class public interface abstract Lcom/android/internal/telephony/IOplusNrModePlugIn;
.super Ljava/lang/Object;
.source "IOplusNrModePlugIn.java"


# virtual methods
.method public blacklist addNrModeChangedEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "bizName"    # Ljava/lang/String;
    .param p3, "whatToDo"    # Ljava/lang/String;

    .line 69
    return-void
.end method

.method public blacklist addNrModeChangedEvent(Ljava/lang/String;IIZ)Z
    .locals 1
    .param p1, "clsName"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "mode"    # I
    .param p4, "isSpecial"    # Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist cancelBWPDumpCause()V
    .locals 0

    .line 40
    return-void
.end method

.method public blacklist cancelDisableSAState()V
    .locals 0

    .line 32
    return-void
.end method

.method public blacklist getDisableSAState()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getHasBWPDumpCause()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNrModeChangedEvent()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public blacklist getNrModeFromCityCfg(II)I
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "modeupdate"    # I

    .line 21
    return p2
.end method

.method public blacklist initialOnce(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginApk"    # Ljava/lang/String;

    .line 14
    const-string v0, "error"

    const-string v1, "OplusNrMode not plugIn"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-void
.end method

.method public blacklist modemDumpMonitor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .line 25
    return-void
.end method

.method public blacklist notifyNrModeChanged(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "nrMode"    # I

    .line 89
    return-void
.end method

.method public blacklist oemIfNeedChangeRetryTime(ILcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist oemIsCloseSAReason(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 55
    return-void
.end method

.method public blacklist onReceiveErrorCode(II)V
    .locals 0
    .param p1, "messageRat"    # I
    .param p2, "messageErrorCode"    # I

    .line 62
    return-void
.end method

.method public blacklist onRejectedCall(II)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I

    .line 43
    return-void
.end method

.method public blacklist reportGameEnterOrLeave(Z)V
    .locals 0
    .param p1, "enter"    # Z

    .line 82
    return-void
.end method

.method public blacklist reportGameInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameInfo"    # Ljava/lang/String;

    .line 79
    return-void
.end method

.method public blacklist reportNetWorkLatency(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .line 76
    return-void
.end method

.method public blacklist setupDataComplete(ILcom/android/internal/telephony/dataconnection/ApnContext;ZIZ)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p3, "success"    # Z
    .param p4, "cause"    # I
    .param p5, "isPermanentFail"    # Z

    .line 52
    return-void
.end method

.method public blacklist startTimerForSetupData(ILcom/android/internal/telephony/dataconnection/ApnContext;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 49
    return-void
.end method

.method public blacklist updateCityNrModeCfg()V
    .locals 0

    .line 46
    return-void
.end method

.method public blacklist updateDdsAndSubSimInfo(I)V
    .locals 0
    .param p1, "mCurSubId"    # I

    .line 18
    return-void
.end method

.method public blacklist updateIfGameFeatureBackOffSa()Z
    .locals 1

    .line 85
    const/4 v0, 0x0

    return v0
.end method
