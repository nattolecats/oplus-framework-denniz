.class Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;
.super Ljava/lang/Object;
.source "OwmMultiMediaMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmMultiMediaMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StutterEvtRecord"
.end annotation


# instance fields
.field public blacklist apBand:Ljava/lang/String;

.field public blacklist apBandWidth:Ljava/lang/String;

.field public blacklist apFreq:Ljava/lang/String;

.field public blacklist apName:Ljava/lang/String;

.field public blacklist appHash:Ljava/lang/String;

.field public blacklist coexBtDetail:Ljava/lang/String;

.field public blacklist coexistHealthStat:Ljava/lang/String;

.field public blacklist dhcpHealthStat:Ljava/lang/String;

.field public blacklist dnsHealthStat:Ljava/lang/String;

.field public blacklist durationTime:J

.field public blacklist evtExitReason:Ljava/lang/String;

.field public blacklist featHealthStat:Ljava/lang/String;

.field public blacklist gatewayHealthStat:Ljava/lang/String;

.field public blacklist goodRssiDurationTime:J

.field public blacklist happenTime:Ljava/lang/String;

.field public blacklist httpHealthStat:Ljava/lang/String;

.field public blacklist ipStack:Ljava/lang/String;

.field public blacklist isUnderStutter:Z

.field public blacklist l2HealthStat:Ljava/lang/String;

.field public blacklist mRecordString:Ljava/lang/StringBuilder;

.field public blacklist routerHealthStat:Ljava/lang/String;

.field public blacklist stutterEndTimeStamp:J

.field public blacklist stutterScene:Ljava/lang/String;

.field public blacklist stutterStartTimeStamp:J

.field public blacklist tcpHealthStat:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

.field public blacklist wifiStandard:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/net/wifi/owm/OwmMultiMediaMonitor;)V
    .locals 0

    .line 477
    iput-object p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->this$0:Landroid/net/wifi/owm/OwmMultiMediaMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->mRecordString:Ljava/lang/StringBuilder;

    .line 479
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->isUnderStutter:Z

    .line 480
    return-void
.end method


# virtual methods
.method public blacklist resetRecord()V
    .locals 2

    .line 483
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->happenTime:Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterScene:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->evtExitReason:Ljava/lang/String;

    .line 486
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->appHash:Ljava/lang/String;

    .line 488
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apName:Ljava/lang/String;

    .line 489
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->ipStack:Ljava/lang/String;

    .line 490
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->wifiStandard:Ljava/lang/String;

    .line 491
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apFreq:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apBandWidth:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apBand:Ljava/lang/String;

    .line 495
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->coexBtDetail:Ljava/lang/String;

    .line 500
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 501
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    .line 502
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->dnsHealthStat:Ljava/lang/String;

    .line 503
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->httpHealthStat:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->tcpHealthStat:Ljava/lang/String;

    .line 507
    iget-object v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->mRecordString:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 509
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->durationTime:J

    .line 510
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    .line 511
    return-void
.end method

.method public blacklist toUploadMap()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 514
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 515
    .local v0, "recordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->stutterScene:Ljava/lang/String;

    const-string v2, "stutterScene"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->evtExitReason:Ljava/lang/String;

    const-string v2, "exitReason"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apName:Ljava/lang/String;

    const-string v2, "apName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->apFreq:Ljava/lang/String;

    const-string v2, "apFreq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->appHash:Ljava/lang/String;

    const-string v2, "appHash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->durationTime:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "durationTime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->goodRssiDurationTime:J

    div-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "goodRssiDurationTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->featHealthStat:Ljava/lang/String;

    const-string v2, "featHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->routerHealthStat:Ljava/lang/String;

    const-string v2, "routerHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->coexistHealthStat:Ljava/lang/String;

    const-string v2, "coexistHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->l2HealthStat:Ljava/lang/String;

    const-string v2, "l2HealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->dhcpHealthStat:Ljava/lang/String;

    const-string v2, "dhcpHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->dnsHealthStat:Ljava/lang/String;

    const-string v2, "dnsHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->gatewayHealthStat:Ljava/lang/String;

    const-string v2, "gatewayHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->httpHealthStat:Ljava/lang/String;

    const-string v2, "httpHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    iget-object v1, p0, Landroid/net/wifi/owm/OwmMultiMediaMonitor$StutterEvtRecord;->tcpHealthStat:Ljava/lang/String;

    const-string v2, "tcpHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    return-object v0
.end method
