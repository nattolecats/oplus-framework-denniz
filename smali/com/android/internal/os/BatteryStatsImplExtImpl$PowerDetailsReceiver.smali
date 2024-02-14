.class Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStatsImplExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImplExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerDetailsReceiver"
.end annotation


# static fields
.field public static final blacklist ACTION_MDPWR_REPORT_TO_BATTERY_STATES:Ljava/lang/String; = "oplus.intent.action.MDPWR_REPORT_TO_BATTERY_STATES"

.field public static final blacklist ACTION_POWERSTATS_FORECE_UPDATE:Ljava/lang/String; = "oplus.intent.action.powerstats.FORECE_UPDATE"

.field public static final blacklist ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field public static final blacklist ACTION_SMART5G_KEY_INFO:Ljava/lang/String; = "oplus.intent.action.SMART5G_KEYINFO"

.field public static final blacklist TAG:Ljava/lang/String; = "BatteryStatsImplExtImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mRegistered:Z

.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 487
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 488
    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mContext:Landroid/content/Context;

    .line 489
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on receive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryStatsImplExtImpl"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 496
    const/16 v1, 0xb

    const-string v6, "wifi_state"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 497
    .local v1, "state":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi ap state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v6, "wifi"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 499
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    const/16 v7, 0xd

    if-ne v1, v7, :cond_0

    .line 500
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v7, v5}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmWifiApStateEnabled(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v7, v4}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmWifiApStateEnabled(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V

    .line 504
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wifi ap enabled "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v8}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmWifiApStateEnabled(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    .end local v1    # "state":I
    .end local v6    # "wifiManager":Landroid/net/wifi/WifiManager;
    goto/16 :goto_3

    :cond_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 507
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v6

    .line 508
    .local v6, "state":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BT headset connected state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-ne v3, v6, :cond_2

    .line 510
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2, v5}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmBTHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V

    goto :goto_1

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2, v4}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmBTHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V

    .line 514
    .end local v1    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v6    # "state":I
    :goto_1
    goto/16 :goto_3

    :cond_3
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 515
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 516
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 517
    .local v1, "state":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wired headset connected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2, v5}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmWiredHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V

    .line 519
    .end local v1    # "state":I
    goto/16 :goto_3

    .line 520
    :cond_4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1, v4}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmWiredHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V

    goto/16 :goto_3

    .line 522
    :cond_5
    const-string v1, "oplus.intent.action.MDPWR_REPORT_TO_BATTERY_STATES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 523
    const-string v1, "ModemActivityInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 525
    .local v1, "modemInfo":Ljava/lang/String;
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 526
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmLastModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmCurModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V

    .line 529
    .end local v1    # "modemInfo":Ljava/lang/String;
    :cond_6
    goto/16 :goto_3

    :cond_7
    const-string v1, "oplus.intent.action.SMART5G_KEYINFO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 530
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {p2}, Lcore/java/com/android/internal/os/SmartEndcStatus;->creatEndcStatusFormIntent(Landroid/content/Intent;)Lcore/java/com/android/internal/os/SmartEndcStatus;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmCurSmartEndcStatus(Lcom/android/internal/os/BatteryStatsImplExtImpl;Lcore/java/com/android/internal/os/SmartEndcStatus;)V

    .line 531
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurSmartEndcStatus(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcore/java/com/android/internal/os/SmartEndcStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcore/java/com/android/internal/os/SmartEndcStatus;->toStringLite()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "endcInfo":Ljava/lang/String;
    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v6}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmLastEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 534
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmLastEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fputmCurEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V

    goto :goto_2

    .line 537
    .end local v1    # "endcInfo":Ljava/lang/String;
    :cond_8
    const-string v1, "oplus.intent.action.powerstats.FORECE_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    :goto_2
    goto :goto_3

    .line 545
    :cond_a
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 546
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmOplusRpmManager(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/OplusRpmSubsystemManager;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 547
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmOplusRpmManager(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/OplusRpmSubsystemManager;

    move-result-object v1

    const-wide/32 v6, 0xea60

    invoke-virtual {v1, v6, v7}, Lcom/android/internal/os/OplusRpmSubsystemManager;->scheduleUpdateRpmPath(J)V

    goto :goto_3

    .line 549
    :cond_b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 550
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmOplusRpmManager(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/OplusRpmSubsystemManager;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 551
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmOplusRpmManager(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/OplusRpmSubsystemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/OplusRpmSubsystemManager;->onBootCompleted()V

    .line 555
    :cond_c
    :goto_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmBTHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 556
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iput v3, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mHeadsetConnectedType:I

    goto :goto_4

    .line 557
    :cond_d
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmWiredHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 558
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iput v5, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mHeadsetConnectedType:I

    goto :goto_4

    .line 560
    :cond_e
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iput v4, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mHeadsetConnectedType:I

    .line 562
    :goto_4
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmVolumeMusicSpeaker(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I

    move-result v2

    iput v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mVolumeMusicSpeaker:I

    .line 563
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmWifiApStateEnabled(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiApEnabled:Z

    .line 564
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    .line 565
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmCurEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public blacklist register()V
    .locals 4

    .line 569
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 570
    const-string v0, "BatteryStatsImplExtImpl"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 572
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v1, "oplus.intent.action.MDPWR_REPORT_TO_BATTERY_STATES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v1, "oplus.intent.action.powerstats.FORECE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v1, "oplus.intent.action.SMART5G_KEYINFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v1, "oplus.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const-string v3, "com.oplus.nhs.permission.NHS_MD_ACI_SAFE_PERMISSION"

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 581
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mRegistered:Z

    .line 583
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 586
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->mRegistered:Z

    .line 590
    :cond_0
    return-void
.end method
