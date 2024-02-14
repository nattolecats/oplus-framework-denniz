.class public interface abstract Lcom/oplus/deepthinker/IOplusDeepThinkerManager;
.super Ljava/lang/Object;
.source "IOplusDeepThinkerManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/oplus/deepthinker/IOplusDeepThinkerManager$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->DEFAULT:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    return-void
.end method


# virtual methods
.method public whitelist call(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "request"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 157
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAlgorithmPlatformVersion()I
    .locals 1

    .line 63
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAppPredictResult(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    .locals 1
    .param p1, "callerName"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppPredictResultMap(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;",
            ">;"
        }
    .end annotation

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByComplex()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppQueueSortedByTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getAppType(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 98
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getAppTypeMap(Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 102
    .local p1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAvailableEvent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/eventhub/sdk/aidl/Event;",
            ">;"
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeepSleepPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 1

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDeepSleepTotalPredictResult()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    .locals 1

    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 42
    invoke-interface {p0}, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->getDefault()Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Lcom/oplus/deepthinker/IOplusDeepThinkerManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/oplus/deepthinker/IOplusDeepThinkerManager;->DEFAULT:Lcom/oplus/deepthinker/IOplusDeepThinkerManager;

    return-object v0
.end method

.method public whitelist getInOutDoorState()I
    .locals 1

    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInOutDoorState(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLastDeepSleepRecord()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    .locals 1

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPredictAABResult()Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
    .locals 1

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPredictResultWithFeedBack()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 1

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartGpsBssidList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getWifiLocationLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;",
            ">;"
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 53
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusDeepThinkerManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist isApplicationEnable()Z
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAvailableEvent(Lcom/oplus/eventhub/sdk/aidl/Event;)Z
    .locals 1
    .param p1, "event"    # Lcom/oplus/eventhub/sdk/aidl/Event;

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventRequestConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;Lcom/oplus/eventhub/sdk/aidl/EventConfig;)I
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .param p2, "config"    # Lcom/oplus/eventhub/sdk/aidl/EventConfig;

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerServiceStateObserver(Lcom/oplus/deepthinker/ServiceStateObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/oplus/deepthinker/ServiceStateObserver;

    .line 60
    return-void
.end method

.method public whitelist run(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 188
    return-void
.end method

.method public whitelist triggerHookEvent(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "uid"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "extra"    # Landroid/os/Bundle;

    .line 109
    return-void
.end method

.method public whitelist triggerHookEvent(Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;)V
    .locals 0
    .param p1, "triggerEvent"    # Lcom/oplus/eventhub/sdk/aidl/TriggerEvent;

    .line 106
    return-void
.end method

.method public whitelist triggerHookEventAsync(Landroid/os/Handler;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "eventID"    # I
    .param p3, "uid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "extra"    # Landroid/os/Bundle;

    .line 112
    return-void
.end method

.method public whitelist unregisterCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterEventCallback(Lcom/oplus/eventhub/sdk/aidl/IEventCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/oplus/eventhub/sdk/aidl/IEventCallback;

    .line 138
    const/4 v0, 0x0

    return v0
.end method
