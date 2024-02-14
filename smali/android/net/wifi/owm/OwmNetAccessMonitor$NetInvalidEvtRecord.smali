.class Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;
.super Ljava/lang/Object;
.source "OwmNetAccessMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetAccessMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetInvalidEvtRecord"
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

.field public blacklist gatewayHealthStat:Ljava/lang/String;

.field public blacklist goodRssiDurationTime:I

.field public blacklist happenTime:Ljava/lang/String;

.field public blacklist httpHealthStat:Ljava/lang/String;

.field public blacklist isFirstNetInvalid:Z

.field public blacklist l2HealthStat:Ljava/lang/String;

.field public blacklist routerHealthStat:Ljava/lang/String;

.field public blacklist tcpHealthStat:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

.field public blacklist topPkg:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V
    .locals 1

    .line 954
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->happenTime:Ljava/lang/String;

    .line 956
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apName:Ljava/lang/String;

    .line 957
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apFreq:Ljava/lang/String;

    .line 958
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->topPkg:Ljava/lang/String;

    .line 960
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 961
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 962
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 964
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 965
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 966
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 967
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 968
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 969
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 971
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->durationTime:I

    .line 972
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->goodRssiDurationTime:I

    .line 973
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->errCode:I

    .line 975
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->isFirstNetInvalid:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;-><init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist resetRecord()V
    .locals 2

    .line 978
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->happenTime:Ljava/lang/String;

    .line 979
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apName:Ljava/lang/String;

    .line 980
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apFreq:Ljava/lang/String;

    .line 981
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->topPkg:Ljava/lang/String;

    .line 983
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 984
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 985
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 987
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 988
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 989
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 990
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 991
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 992
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 994
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->durationTime:I

    .line 995
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->goodRssiDurationTime:I

    .line 996
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->errCode:I

    .line 998
    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->isFirstNetInvalid:Z

    .line 999
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1002
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1004
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->happenTime:Ljava/lang/String;

    const-string v2, "happenTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apName:Ljava/lang/String;

    const-string v2, "apName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->apFreq:Ljava/lang/String;

    const-string v2, "apFreq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->topPkg:Ljava/lang/String;

    const-string v2, "topPkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->durationTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "durationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->goodRssiDurationTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "goodRssiDurationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->errCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "errCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->featHealthStat:Ljava/lang/String;

    const-string v3, "featHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->routerHealthStat:Ljava/lang/String;

    const-string v3, "routerHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->coexistHealthStat:Ljava/lang/String;

    const-string v3, "coexistHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->l2HealthStat:Ljava/lang/String;

    const-string v3, "l2HealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    const-string v3, "dhcpHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->dnsHealthStat:Ljava/lang/String;

    const-string v3, "dnsHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    const-string v3, "gatewayHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->httpHealthStat:Ljava/lang/String;

    const-string v3, "httpHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->tcpHealthStat:Ljava/lang/String;

    const-string v3, "tcpHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetInvalidEvtRecord;->isFirstNetInvalid:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isFirstNetInvalid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
