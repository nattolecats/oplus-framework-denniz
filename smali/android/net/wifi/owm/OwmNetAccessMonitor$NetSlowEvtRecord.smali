.class Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;
.super Ljava/lang/Object;
.source "OwmNetAccessMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetAccessMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetSlowEvtRecord"
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

.field public blacklist l2HealthStat:Ljava/lang/String;

.field public blacklist netSlowEnterScore:I

.field public blacklist netSlowExitScore:I

.field public blacklist routerHealthStat:Ljava/lang/String;

.field public blacklist tcpHealthStat:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

.field public blacklist topPkg:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V
    .locals 1

    .line 1031
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->this$0:Landroid/net/wifi/owm/OwmNetAccessMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->happenTime:Ljava/lang/String;

    .line 1033
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apName:Ljava/lang/String;

    .line 1034
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apFreq:Ljava/lang/String;

    .line 1035
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->topPkg:Ljava/lang/String;

    .line 1037
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 1038
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 1039
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 1041
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 1042
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 1043
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 1044
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 1045
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 1046
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 1048
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->durationTime:I

    .line 1049
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->goodRssiDurationTime:I

    .line 1050
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->errCode:I

    .line 1052
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowEnterScore:I

    .line 1053
    iput p1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowExitScore:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;-><init>(Landroid/net/wifi/owm/OwmNetAccessMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist resetRecord()V
    .locals 2

    .line 1056
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->happenTime:Ljava/lang/String;

    .line 1057
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apName:Ljava/lang/String;

    .line 1058
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apFreq:Ljava/lang/String;

    .line 1059
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->topPkg:Ljava/lang/String;

    .line 1061
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 1062
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 1063
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 1065
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 1066
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 1067
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 1068
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 1069
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 1070
    iput-object v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 1072
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->durationTime:I

    .line 1073
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->goodRssiDurationTime:I

    .line 1074
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->errCode:I

    .line 1076
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowEnterScore:I

    .line 1077
    iput v0, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowExitScore:I

    .line 1078
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 1081
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1083
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->happenTime:Ljava/lang/String;

    const-string v2, "happenTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apName:Ljava/lang/String;

    const-string v2, "apName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->apFreq:Ljava/lang/String;

    const-string v2, "apFreq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->topPkg:Ljava/lang/String;

    const-string v2, "topPkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->durationTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "durationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->goodRssiDurationTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "goodRssiDurationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->errCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "errCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->featHealthStat:Ljava/lang/String;

    const-string v3, "featHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->routerHealthStat:Ljava/lang/String;

    const-string v3, "routerHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->coexistHealthStat:Ljava/lang/String;

    const-string v3, "coexistHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->l2HealthStat:Ljava/lang/String;

    const-string v3, "l2HealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    const-string v3, "dhcpHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->dnsHealthStat:Ljava/lang/String;

    const-string v3, "dnsHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    const-string v3, "gatewayHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->httpHealthStat:Ljava/lang/String;

    const-string v3, "httpHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->tcpHealthStat:Ljava/lang/String;

    const-string v3, "tcpHealthStat"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowEnterScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "netSlowEnterScore"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/net/wifi/owm/OwmNetAccessMonitor$NetSlowEvtRecord;->netSlowExitScore:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netSlowExitScore"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
