.class Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;
.super Ljava/lang/Object;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpHealthMonitor"
.end annotation


# instance fields
.field private blacklist isFinishCollected:Z

.field private blacklist isStartCollected:Z

.field private blacklist mDupOfferCnt:I

.field private blacklist mIpConflictCnt:I

.field private blacklist mPreDupOfferCnt:I

.field private blacklist mPreIpConflictCnt:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V
    .locals 0

    .line 437
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mPreIpConflictCnt:I

    .line 442
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mPreDupOfferCnt:I

    .line 445
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mIpConflictCnt:I

    .line 448
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mDupOfferCnt:I

    .line 450
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isStartCollected:Z

    .line 451
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isFinishCollected:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist getCollectDiffRecord()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 487
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isFinishCollected:Z

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 491
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 493
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mIpConflictCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mPreIpConflictCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IpConflictCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mDupOfferCnt:I

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mPreDupOfferCnt:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DupOfferCntDiff"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-object v0
.end method

.method public blacklist startCollect(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 454
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 455
    return-void

    .line 459
    :cond_0
    :try_start_0
    const-string v0, "IpConflictCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mPreIpConflictCnt:I

    .line 460
    const-string v0, "DupOfferCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mPreDupOfferCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    nop

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isStartCollected:Z

    .line 467
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isFinishCollected:Z

    .line 468
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCollect, catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public blacklist stopCollect(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 471
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isStartCollected:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    :try_start_0
    const-string v0, "IpConflictCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mIpConflictCnt:I

    .line 477
    const-string v0, "DupOfferCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->mDupOfferCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    nop

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->isFinishCollected:Z

    .line 484
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DhcpHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCollect, catch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/wifi/owm/OwmNetHealthMonitor;->-$$Nest$mlogD(Landroid/net/wifi/owm/OwmNetHealthMonitor;Ljava/lang/String;)V

    .line 480
    return-void

    .line 472
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
