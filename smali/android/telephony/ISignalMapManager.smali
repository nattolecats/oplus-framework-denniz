.class public interface abstract Landroid/telephony/ISignalMapManager;
.super Ljava/lang/Object;
.source "ISignalMapManager.java"


# static fields
.field public static final blacklist FAILURE:Z = false

.field public static final blacklist KEY_AWARE_AREA:Ljava/lang/String; = "aware_area"

.field public static final blacklist KEY_CITY:Ljava/lang/String; = "city"

.field public static final blacklist KEY_CONTINUE_TIME:Ljava/lang/String; = "continue_time"

.field public static final blacklist KEY_DIRECTION:Ljava/lang/String; = "direction"

.field public static final blacklist KEY_DWELL_TIME:Ljava/lang/String; = "dwell_time"

.field public static final blacklist KEY_LEFT_TIME:Ljava/lang/String; = "left_time"

.field public static final blacklist KEY_LINE:Ljava/lang/String; = "line"

.field public static final blacklist KEY_LOCATION_STATION:Ljava/lang/String; = "location_station"

.field public static final blacklist KEY_PREDICT_INDEX:Ljava/lang/String; = "low_qos_index"

.field public static final blacklist KEY_PREDICT_STATION:Ljava/lang/String; = "predict_station"

.field public static final blacklist KEY_QOS_INFOR:Ljava/lang/String; = "qos_info"

.field public static final blacklist KEY_QOS_SCORCE:Ljava/lang/String; = "qos_scorce"

.field public static final blacklist KEY_QOS_SRV_STATE:Ljava/lang/String; = "qos_srv_state"

.field public static final blacklist KEY_SIGNAL_MAP_VER:Ljava/lang/String; = "qos_signalmap_ver"

.field public static final blacklist KEY_STATION:Ljava/lang/String; = "station"

.field public static final blacklist KEY_STATION_INDEX:Ljava/lang/String; = "station_index"

.field public static final blacklist KEY_TIME_STAMP:Ljava/lang/String; = "tims_stamp"

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "SignalMap"

.field public static final blacklist SUCCESS:Z = true


# virtual methods
.method public blacklist canUseQoSService(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 268
    const-string v0, "SignalMapManager"

    const-string v1, "canUseQoSService NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getQoSPredictState()I
    .locals 1

    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerQosClient(Landroid/telephony/IQoSPredictionCallBack;)Z
    .locals 2
    .param p1, "cb"    # Landroid/telephony/IQoSPredictionCallBack;

    .line 197
    const-string v0, "SignalMapManager"

    const-string v1, "registerQosClient NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerQosCollectClient(Landroid/telephony/IQoSCollectCallBack;)Z
    .locals 2
    .param p1, "cb"    # Landroid/telephony/IQoSCollectCallBack;

    .line 283
    const-string v0, "SignalMapManager"

    const-string v1, "registerQosCollectClient NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerServiceInfoCallback(Landroid/telephony/IQoSServiceInfoCallBack;)Z
    .locals 2
    .param p1, "callback"    # Landroid/telephony/IQoSServiceInfoCallBack;

    .line 313
    const-string v0, "SignalMapManager"

    const-string v1, "registerServiceInfoCallback NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerSignalMapCallback(Ljava/util/concurrent/Executor;Landroid/telephony/SignalMapCallback;)Z
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/telephony/SignalMapCallback;

    .line 226
    const-string v0, "SignalMapManager"

    const-string v1, "registerSignalMapCallback NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOlkQoSClientPackages(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 357
    const-string v0, "SignalMapManager"

    const-string v1, "removeOlkQoSClientPackages NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public blacklist setOlkQoSClientPackages(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 343
    const-string v0, "SignalMapManager"

    const-string v1, "setOlkQoSClientPackages NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method

.method public blacklist unregisterQosClient(Landroid/telephony/IQoSPredictionCallBack;)Z
    .locals 2
    .param p1, "cb"    # Landroid/telephony/IQoSPredictionCallBack;

    .line 211
    const-string v0, "SignalMapManager"

    const-string v1, "unregisterQosClient NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterQosCollectClient(Landroid/telephony/IQoSCollectCallBack;)Z
    .locals 2
    .param p1, "cb"    # Landroid/telephony/IQoSCollectCallBack;

    .line 298
    const-string v0, "SignalMapManager"

    const-string v1, "unregisterQosCollectClient NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterServiceInfoCallback(Landroid/telephony/IQoSServiceInfoCallBack;)Z
    .locals 2
    .param p1, "callback"    # Landroid/telephony/IQoSServiceInfoCallBack;

    .line 328
    const-string v0, "SignalMapManager"

    const-string v1, "unregisterServiceInfoCallback NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterSignalMapCallback(Landroid/telephony/SignalMapCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/telephony/SignalMapCallback;

    .line 241
    const-string v0, "SignalMapManager"

    const-string v1, "unregisterSignalMapCallback NOT Supported"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v0, 0x0

    return v0
.end method
