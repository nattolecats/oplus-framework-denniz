.class Landroid/net/wifi/owm/OplusOwmMonitorCenter$1;
.super Ljava/lang/Object;
.source "OplusOwmMonitorCenter.java"

# interfaces
.implements Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OplusOwmMonitorCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    .line 842
    iput-object p1, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$1;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onNetworkQualityChange(IIIZII)V
    .locals 1
    .param p1, "netId"    # I
    .param p2, "oldScore"    # I
    .param p3, "newScore"    # I
    .param p4, "better"    # Z
    .param p5, "dnsScore"    # I
    .param p6, "tcpScore"    # I

    .line 845
    const/16 v0, 0x64

    if-gt p3, v0, :cond_0

    .line 846
    iget-object v0, p0, Landroid/net/wifi/owm/OplusOwmMonitorCenter$1;->this$0:Landroid/net/wifi/owm/OplusOwmMonitorCenter;

    invoke-static {v0}, Landroid/net/wifi/owm/OplusOwmMonitorCenter;->-$$Nest$fgetmWifiNetAccessMonitor(Landroid/net/wifi/owm/OplusOwmMonitorCenter;)Landroid/net/wifi/owm/OwmNetAccessMonitor;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/net/wifi/owm/OwmNetAccessMonitor;->addNetScoreRecord(I)V

    .line 848
    :cond_0
    return-void
.end method
