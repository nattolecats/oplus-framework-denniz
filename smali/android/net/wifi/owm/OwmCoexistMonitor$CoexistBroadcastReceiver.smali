.class Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OwmCoexistMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmCoexistMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CoexistBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmCoexistMonitor;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmCoexistMonitor;Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;-><init>(Landroid/net/wifi/owm/OwmCoexistMonitor;)V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoexistBroadcastReceiver, onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OwmCoexistMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmCoexistMonitor;Ljava/lang/String;)V

    .line 109
    const/4 v1, -0x1

    .line 111
    .local v1, "currState":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "android.bluetooth.profile.extra.STATE"

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 118
    :pswitch_0
    const/16 v2, 0xa

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    iget-object v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CoexistBroadcastReceiver, audio current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/owm/OwmCoexistMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmCoexistMonitor;Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-static {v2, v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->-$$Nest$fputmHeadsetAudioState(Landroid/net/wifi/owm/OwmCoexistMonitor;I)V

    .line 121
    goto :goto_2

    .line 113
    :pswitch_1
    const/16 v2, 0xb

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    iget-object v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    invoke-static {v2, v1}, Landroid/net/wifi/owm/OwmCoexistMonitor;->-$$Nest$fputmA2dpPlayingState(Landroid/net/wifi/owm/OwmCoexistMonitor;I)V

    .line 115
    iget-object v2, p0, Landroid/net/wifi/owm/OwmCoexistMonitor$CoexistBroadcastReceiver;->this$0:Landroid/net/wifi/owm/OwmCoexistMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CoexistBroadcastReceiver, a2dp playing current state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/wifi/owm/OwmCoexistMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmCoexistMonitor;Ljava/lang/String;)V

    .line 116
    nop

    .line 125
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5591500b -> :sswitch_1
        -0x32fde36c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
