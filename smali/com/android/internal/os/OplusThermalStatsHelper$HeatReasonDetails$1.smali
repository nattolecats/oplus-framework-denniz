.class Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->uploadHeatEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    .line 1046
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 11

    .line 1050
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1051
    .local v0, "stampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1052
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-static {v2}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->-$$Nest$fgetmIsUploadHeat(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    monitor-exit v1

    return-void

    .line 1055
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1056
    monitor-exit v1

    return-void

    .line 1058
    :cond_1
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "heatReason"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1059
    monitor-exit v1

    return-void

    .line 1061
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1062
    const-string v2, "OplusThermalStats"

    const-string v3, "upload heat event failed for context uninit!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    monitor-exit v1

    return-void

    .line 1065
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "simpleTopPro"

    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v4, v4, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmSimpleTopProcessesNeedUpload(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "cpuFreq"

    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v4, v4, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmCpuFreqValuesNeedUpload(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "fcc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryFcc:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "batteryRm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryRealtimeCapacity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "plugType"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalPlugType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "fastCharge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFastCharger:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "batteryCurrent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryCurrent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "batteryVoltage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryVoltage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v3, "volumeLevel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalVolumeLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1075
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->-$$Nest$mencodeThermalHeatEvent(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)Ljava/util/Map;

    move-result-object v8

    .line 1076
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v8, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "20139"

    const-string v6, "20139"

    const-string v7, "id_thermal_heat"

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 1077
    const/4 v2, 0x0

    .line 1078
    .local v2, "timeOut":I
    const/4 v3, 0x0

    .line 1079
    .local v3, "isUploadLog":Z
    :goto_0
    invoke-static {}, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics;->getOnCommon()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    const/16 v4, 0x32

    if-ge v2, v4, :cond_4

    .line 1081
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1082
    add-int/lit8 v2, v2, 0x1

    .line 1085
    goto :goto_0

    .line 1083
    :catch_0
    move-exception v4

    .line 1084
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v5, "OplusThermalStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sleep 100 ms is Interrupted because of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    nop

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1087
    :cond_4
    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v4, v4, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalRecFile()V

    .line 1088
    new-instance v4, Landroid/content/Intent;

    const-string v5, "oplus.intent.action.ACTION_THERMAL_SCENE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v4, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v6, "heatReason"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1090
    const-string v5, "reason"

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v7, "heatReason"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 1092
    :cond_5
    const-string v5, "reason"

    const-string v6, "9999"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    :goto_1
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v6, "current"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1095
    const-string v5, "current"

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v7, "current"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1097
    :cond_6
    const-string v5, "current"

    const-string v6, "9999"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    :goto_2
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v6, "maxPhoneTemp"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1100
    const-string v5, "temp"

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v7, "maxPhoneTemp"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 1102
    :cond_7
    const-string v5, "temp"

    const-string v6, "9999"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1104
    :goto_3
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v6, "maxBatTemp"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1105
    const-string v5, "batTemp"

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v7, "maxBatTemp"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 1107
    :cond_8
    const-string v5, "batTemp"

    const-string v6, "9999"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    :goto_4
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v6, "cpuLoading"

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1110
    const-string v5, "cpuLoading"

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v7, "cpuLoading"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 1112
    :cond_9
    const-string v5, "cpuLoading"

    const-string v6, "9999"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    :goto_5
    const-string v5, "package"

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-static {v6}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->-$$Nest$mgetMaxTopCpuProc(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadLog:Z

    const/4 v6, 0x1

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadErrLog:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-static {v5}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->-$$Nest$mgetHeatReson(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)I

    move-result v5

    if-eq v5, v6, :cond_a

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-static {v5}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->-$$Nest$mgetHeatReson(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_b

    .line 1117
    :cond_a
    const/4 v3, 0x1

    .line 1119
    :cond_b
    const-string v5, "uploadLog"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1120
    const-string v5, "com.oplus.powermonitor"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalCaptureLog:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxPhoneTemp:I

    iget-object v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v7, v7, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v7, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalCaptureLogThreshold:I

    if-lt v5, v7, :cond_d

    .line 1122
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 1123
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v9, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v5, v4, v7, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1125
    :cond_c
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-static {v5, v6}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->-$$Nest$fputmIsUploadHeat(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;Z)V

    goto :goto_6

    .line 1127
    :cond_d
    const-string v5, "OplusThermalStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CaptureLog="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v7, v7, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v7, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalCaptureLog:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,skip capture log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :goto_6
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-static {v5, v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$mgetStampThermalHeat(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v0, v5

    .line 1132
    if-eqz v0, :cond_f

    .line 1133
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1134
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "syncProcc"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1135
    goto :goto_7

    .line 1137
    :cond_e
    const-string v7, "OplusThermalStats"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uploadStampHeat "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7

    .line 1140
    .end local v2    # "timeOut":I
    .end local v3    # "isUploadLog":Z
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1141
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 1142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .local v1, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "oplus.intent.action.ACTION_HEAT_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1144
    .local v2, "heatIntent":Landroid/content/Intent;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1145
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1146
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_8

    .line 1148
    :cond_10
    const-string v3, "keyList"

    .line 1149
    .local v3, "strkeyList":Ljava/lang/String;
    const-string v4, "plugedType"

    .line 1150
    .local v4, "plugedType":Ljava/lang/String;
    const-string v5, "forapk"

    .line 1151
    .local v5, "forapk":Ljava/lang/String;
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1152
    const-string v6, "com.oplus.powermonitor"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalPlugType:I

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1154
    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1155
    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;->this$1:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v6, v6, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v8, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1157
    .end local v1    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "heatIntent":Landroid/content/Intent;
    .end local v3    # "strkeyList":Ljava/lang/String;
    .end local v4    # "plugedType":Ljava/lang/String;
    .end local v5    # "forapk":Ljava/lang/String;
    :cond_11
    return-void

    .line 1140
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method
