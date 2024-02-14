.class Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;
.super Ljava/lang/Object;
.source "OwmGameMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmGameMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RttBadEvtRecord"
.end annotation


# instance fields
.field public blacklist apFreq:Ljava/lang/String;

.field public blacklist apName:Ljava/lang/String;

.field public blacklist coexistHealthStat:Ljava/lang/String;

.field public blacklist dhcpHealthStat:Ljava/lang/String;

.field public blacklist dnsHealthStat:Ljava/lang/String;

.field public blacklist durationTime:I

.field public blacklist errCode:I

.field public blacklist featHealthStat:Ljava/lang/String;

.field public blacklist gameStartTime:Ljava/lang/String;

.field public blacklist gatewayHealthStat:Ljava/lang/String;

.field public blacklist goodRssiDurationTime:I

.field public blacklist happenTime:Ljava/lang/String;

.field public blacklist httpHealthStat:Ljava/lang/String;

.field public blacklist l2HealthStat:Ljava/lang/String;

.field public blacklist routerHealthStat:Ljava/lang/String;

.field public blacklist tcpHealthStat:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmGameMonitor;

.field public blacklist topPkg:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmGameMonitor;)V
    .locals 0

    .line 710
    iput-object p1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->this$0:Landroid/net/wifi/owm/OwmGameMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmGameMonitor;Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;-><init>(Landroid/net/wifi/owm/OwmGameMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist resetRecord()V
    .locals 1

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->happenTime:Ljava/lang/String;

    .line 734
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->gameStartTime:Ljava/lang/String;

    .line 735
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apName:Ljava/lang/String;

    .line 736
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apFreq:Ljava/lang/String;

    .line 737
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->topPkg:Ljava/lang/String;

    .line 739
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 740
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 741
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 743
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 744
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 745
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 746
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 747
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 748
    iput-object v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 750
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->durationTime:I

    .line 751
    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->goodRssiDurationTime:I

    .line 752
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->errCode:I

    .line 753
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 756
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 758
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->gameStartTime:Ljava/lang/String;

    const-string v2, "gameStartTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->happenTime:Ljava/lang/String;

    const-string v2, "happenTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apName:Ljava/lang/String;

    const-string v2, "apName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->apFreq:Ljava/lang/String;

    const-string v2, "apFreq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->topPkg:Ljava/lang/String;

    const-string v2, "topPkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->durationTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "durationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->goodRssiDurationTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "goodRssiDurationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->errCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->featHealthStat:Ljava/lang/String;

    const-string v2, "featHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->routerHealthStat:Ljava/lang/String;

    const-string v2, "routerHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->coexistHealthStat:Ljava/lang/String;

    const-string v2, "coexistHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->l2HealthStat:Ljava/lang/String;

    const-string v2, "l2HealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    const-string v2, "dhcpHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->dnsHealthStat:Ljava/lang/String;

    const-string v2, "dnsHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    const-string v2, "gatewayHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->httpHealthStat:Ljava/lang/String;

    const-string v2, "httpHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    iget-object v1, p0, Landroid/net/wifi/owm/OwmGameMonitor$RttBadEvtRecord;->tcpHealthStat:Ljava/lang/String;

    const-string v2, "tcpHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
