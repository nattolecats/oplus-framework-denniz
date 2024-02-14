.class Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;
.super Landroid/os/Handler;
.source "OplusThermalStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/OplusThermalStatsHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3918
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    .line 3919
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3920
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3924
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "OplusThermalStats"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    const/16 v6, 0x3f

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 4076
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    const/16 v1, 0x19

    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 4077
    goto/16 :goto_2

    .line 4070
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v7, v1, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 4071
    goto/16 :goto_2

    .line 4073
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    const/16 v1, 0x14

    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 4074
    goto/16 :goto_2

    .line 4064
    :pswitch_3
    const-string v0, "SYNC_TO_THERMAL_FILE"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalRecFile()V

    .line 4066
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->clearHistoryBuffer()V

    .line 4068
    goto/16 :goto_2

    .line 4060
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    const/16 v1, 0x1a

    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 4062
    goto/16 :goto_2

    .line 4048
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 4049
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4050
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 4051
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 4052
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalScreenBrightnessMode:Z

    iput-boolean v2, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    goto :goto_0

    .line 4054
    :cond_0
    const-string v1, "INIT_THERMAL_PAR: failed to get audioManager!!"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :goto_0
    goto/16 :goto_2

    .line 4037
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4038
    .local v0, "volume":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    if-eq v0, v1, :cond_2

    .line 4039
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 4040
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4041
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4043
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4046
    .end local v0    # "volume":I
    :cond_2
    goto/16 :goto_2

    .line 4033
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$minitUploadAlarm(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    .line 4035
    goto/16 :goto_2

    .line 4010
    :pswitch_8
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4011
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4013
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4014
    .local v0, "thermaldumpStart":J
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 4016
    .local v2, "pos":I
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHeatReasonDetails(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->analizyHeatRecItem(JI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4017
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 4018
    .local v3, "myMsg":Landroid/os/Message;
    const/16 v4, 0x3b

    iput v4, v3, Landroid/os/Message;->what:I

    .line 4019
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4020
    add-int/lit8 v4, v2, -0x1

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 4021
    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4022
    nop

    .end local v3    # "myMsg":Landroid/os/Message;
    goto :goto_1

    .line 4023
    :cond_4
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHeatReasonDetails(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatReasonDetails()V

    .line 4024
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHeatReasonDetails(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    move-result-object v3

    iput v5, v3, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    .line 4025
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3, v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmStartAnalizyHeat(Lcom/android/internal/os/OplusThermalStatsHelper;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4029
    .end local v0    # "thermaldumpStart":J
    .end local v2    # "pos":I
    :goto_1
    goto/16 :goto_2

    .line 4027
    :catch_0
    move-exception v0

    .line 4028
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4031
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_2

    .line 4001
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4002
    .local v0, "type":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-byte v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    if-eq v0, v1, :cond_5

    .line 4003
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    int-to-byte v2, v0

    iput-byte v2, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    .line 4004
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    const/16 v2, 0x9

    iget-object v3, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v1, v2, v3, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 4007
    .end local v0    # "type":I
    :cond_5
    goto/16 :goto_2

    .line 3993
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3994
    .local v0, "backlight":I
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v2, v2, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v2, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    if-eq v0, v2, :cond_6

    .line 3995
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v3, v2, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v2, v1, v0, v3, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BILandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 3998
    .end local v0    # "backlight":I
    :cond_6
    goto/16 :goto_2

    .line 3981
    :pswitch_b
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3982
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x61a8

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3984
    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalRecFile()V

    .line 3985
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->startUploadTemp()V

    .line 3988
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->startAnalyzeBatteryStats()V

    .line 3991
    goto/16 :goto_2

    .line 3970
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_8

    move v5, v7

    :cond_8
    move v0, v5

    .line 3971
    .local v0, "onOff":Z
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    if-eq v0, v1, :cond_a

    .line 3972
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    .line 3973
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3974
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3976
    :cond_9
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3979
    .end local v0    # "onOff":Z
    :cond_a
    goto/16 :goto_2

    .line 3959
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_b

    move v5, v7

    :cond_b
    move v0, v5

    .line 3960
    .restart local v0    # "onOff":Z
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    if-eq v0, v1, :cond_d

    .line 3961
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    .line 3962
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3963
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3965
    :cond_c
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3968
    .end local v0    # "onOff":Z
    :cond_d
    goto/16 :goto_2

    .line 3948
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_e

    move v5, v7

    :cond_e
    move v0, v5

    .line 3949
    .restart local v0    # "onOff":Z
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    if-eq v0, v1, :cond_10

    .line 3950
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    .line 3951
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3952
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3954
    :cond_f
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3957
    .end local v0    # "onOff":Z
    :cond_10
    goto :goto_2

    .line 3937
    :pswitch_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_11

    move v5, v7

    :cond_11
    move v0, v5

    .line 3938
    .restart local v0    # "onOff":Z
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    if-eq v0, v1, :cond_13

    .line 3939
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    .line 3940
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3941
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3943
    :cond_12
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3946
    .end local v0    # "onOff":Z
    :cond_13
    goto :goto_2

    .line 3926
    :pswitch_10
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_14

    move v5, v7

    :cond_14
    move v0, v5

    .line 3927
    .restart local v0    # "onOff":Z
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    if-eq v0, v1, :cond_16

    .line 3928
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    .line 3929
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3930
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 3932
    :cond_15
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3935
    .end local v0    # "onOff":Z
    :cond_16
    nop

    .line 4082
    :cond_17
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
