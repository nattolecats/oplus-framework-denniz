.class Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;
.super Ljava/lang/Object;
.source "OwmL2Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmL2Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataStallEvtRecord"
.end annotation


# instance fields
.field public blacklist apFreq:Ljava/lang/String;

.field public blacklist apName:Ljava/lang/String;

.field public blacklist coexistHealthStat:Ljava/lang/String;

.field public blacklist dataStallType:Ljava/lang/String;

.field public blacklist featHealthStat:Ljava/lang/String;

.field public blacklist l2HealthStat:Ljava/lang/String;

.field public blacklist routerHealthStat:Ljava/lang/String;

.field public blacklist startTime:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmL2Monitor;

.field public blacklist topPkg:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmL2Monitor;)V
    .locals 0

    .line 477
    iput-object p1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->this$0:Landroid/net/wifi/owm/OwmL2Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmL2Monitor;Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;-><init>(Landroid/net/wifi/owm/OwmL2Monitor;)V

    return-void
.end method


# virtual methods
.method public blacklist resetRecord()V
    .locals 1

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->startTime:Ljava/lang/String;

    .line 491
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->apName:Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->apFreq:Ljava/lang/String;

    .line 493
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->topPkg:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->dataStallType:Ljava/lang/String;

    .line 496
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->featHealthStat:Ljava/lang/String;

    .line 497
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->routerHealthStat:Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->coexistHealthStat:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->l2HealthStat:Ljava/lang/String;

    .line 500
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 503
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 505
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->startTime:Ljava/lang/String;

    const-string v2, "startTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->apName:Ljava/lang/String;

    const-string v2, "apName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->apFreq:Ljava/lang/String;

    const-string v2, "apFreq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->topPkg:Ljava/lang/String;

    const-string v2, "topPkg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->dataStallType:Ljava/lang/String;

    const-string v2, "dataStallType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->featHealthStat:Ljava/lang/String;

    const-string v2, "featHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->routerHealthStat:Ljava/lang/String;

    const-string v2, "routerHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->coexistHealthStat:Ljava/lang/String;

    const-string v2, "coexistHealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Landroid/net/wifi/owm/OwmL2Monitor$DataStallEvtRecord;->l2HealthStat:Ljava/lang/String;

    const-string v2, "l2HealthStat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
