.class Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OplusOwmMonitorCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OplusOwmMonitorCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OwmBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V
    .locals 0

    .line 198
    iput-object p1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;-><init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OwmBroadcastReceiver, onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$mlogD(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_3
    const-string v1, "com.qualcomm.qti.net.wifi.WIFI_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_4
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_5
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_9
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_a
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    move v1, v4

    :goto_1
    const-string v6, "wifi_state"

    const-string v7, "networkInfo"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 263
    :pswitch_0
    const-string v1, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 264
    .local v1, "btState":I
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$fgetmWifiCoexistMonitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmCoexistMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->addBtStateRecord(I)V

    .line 265
    goto/16 :goto_2

    .line 258
    .end local v1    # "btState":I
    :pswitch_1
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 259
    .local v1, "p2pNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    .line 260
    .local v2, "mP2pConnectedOrConnecting":Z
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v3}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$fgetmWifiCoexistMonitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmCoexistMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/owm/OwmCoexistMonitor;->addP2pStateRecord(Z)V

    .line 261
    goto/16 :goto_2

    .line 253
    .end local v1    # "p2pNetworkInfo":Landroid/net/NetworkInfo;
    .end local v2    # "mP2pConnectedOrConnecting":Z
    :pswitch_2
    const/16 v1, 0xe

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 255
    .local v1, "softApState":I
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$fgetmWifiCoexistMonitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmCoexistMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->addSoftApStateRecord(I)V

    .line 256
    goto :goto_2

    .line 249
    .end local v1    # "softApState":I
    :pswitch_3
    const-string v1, "alert_reasoncode"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 250
    .local v1, "errCode":I
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$fgetmWifiL2Monitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmL2Monitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/wifi/owm/OwmL2Monitor;->addDataStallReportedFromFirmwareRecord(I)V

    .line 251
    goto :goto_2

    .line 242
    .end local v1    # "errCode":I
    :pswitch_4
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 243
    .local v1, "info2":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_2

    .line 244
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 245
    .local v2, "isVpnConnected":Z
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v3}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$fgetmWifiBaseUtils(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmBaseUtils;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/owm/OwmBaseUtils;->getPrimaryClientIfname()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-virtual {v3, v4, v5, v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->addOplusFeatureActivedRecord(Ljava/lang/String;IZ)V

    .line 246
    .end local v2    # "isVpnConnected":Z
    goto :goto_2

    .line 222
    .end local v1    # "info2":Landroid/net/NetworkInfo;
    :pswitch_5
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 223
    .local v1, "info":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 224
    return-void

    .line 227
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 228
    .local v2, "connectState":Landroid/net/NetworkInfo$DetailedState;
    iget-object v3, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v3, v2}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$mhandleWifi0ConnectStateChangeAction(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Landroid/net/NetworkInfo$DetailedState;)V

    .line 229
    goto :goto_2

    .line 218
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v2    # "connectState":Landroid/net/NetworkInfo$DetailedState;
    :pswitch_6
    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 219
    .local v1, "enableState":I
    iget-object v2, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v2, v1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$mhandleWifiEnableStateChange(Landroid/net/wifi/owm/OplusOwmMonitorCenter;I)V

    .line 220
    goto :goto_2

    .line 215
    .end local v1    # "enableState":I
    :pswitch_7
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v1, v5}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$mhandleScreenOnAction(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Z)V

    .line 216
    goto :goto_2

    .line 211
    :pswitch_8
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v1, v3}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$mhandleScreenOnAction(Landroid/net/wifi/owm/OplusOwmMonitorCenter;Z)V

    .line 212
    goto :goto_2

    .line 207
    :pswitch_9
    iget-object v1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$OwmBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v1}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$msaveAllMonitorsRecordToDatabase(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V

    .line 208
    nop

    .line 269
    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_a
        -0x6fcd6bbb -> :sswitch_9
        -0x69a8390a -> :sswitch_8
        -0x56ac2893 -> :sswitch_7
        -0x45e5283a -> :sswitch_6
        -0x147b62d9 -> :sswitch_5
        0x186f64d7 -> :sswitch_4
        0x29cd492c -> :sswitch_3
        0x3e117848 -> :sswitch_2
        0x42f3be3f -> :sswitch_1
        0x741706da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
