.class Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;
.super Ljava/lang/Object;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsHealthMonitor"
.end annotation


# instance fields
.field private blacklist isFinishCollected:Z

.field private blacklist isStartCollected:Z

.field private blacklist mFailCnt:I

.field private blacklist mPreFailCnt:I

.field private blacklist mPreRefuseCnt:I

.field private blacklist mPreRttBadCnt:I

.field private blacklist mPreRttGoodCnt:I

.field private blacklist mPreRttNormCnt:I

.field private blacklist mPreRttPoorCnt:I

.field private blacklist mPreTotalCnt:I

.field private blacklist mRefuseCnt:I

.field private blacklist mRttBadCnt:I

.field private blacklist mRttGoodCnt:I

.field private blacklist mRttNormCnt:I

.field private blacklist mRttPoorCnt:I

.field private blacklist mTotalCnt:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V
    .locals 0

    .line 500
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreFailCnt:I

    .line 503
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRefuseCnt:I

    .line 504
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreTotalCnt:I

    .line 506
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttGoodCnt:I

    .line 507
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttNormCnt:I

    .line 508
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttPoorCnt:I

    .line 509
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttBadCnt:I

    .line 512
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mFailCnt:I

    .line 513
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRefuseCnt:I

    .line 514
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mTotalCnt:I

    .line 516
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttGoodCnt:I

    .line 517
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttNormCnt:I

    .line 518
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttPoorCnt:I

    .line 519
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttBadCnt:I

    .line 521
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isStartCollected:Z

    .line 522
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isFinishCollected:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V

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

    .line 570
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isFinishCollected:Z

    if-nez v0, :cond_0

    .line 571
    const/4 v0, 0x0

    return-object v0

    .line 574
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 576
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mFailCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreFailCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRefuseCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRefuseCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RefuseCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mTotalCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreTotalCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttGoodCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttGoodCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttNormCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttNormCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttPoorCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttPoorCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttBadCnt:I

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttBadCnt:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RttBadCntDiff"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
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

    .line 525
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 526
    return-void

    .line 530
    :cond_0
    :try_start_0
    const-string v0, "FailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreFailCnt:I

    .line 531
    const-string v0, "RefuseCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRefuseCnt:I

    .line 532
    const-string v0, "TotalCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreTotalCnt:I

    .line 534
    const-string v0, "RttGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttGoodCnt:I

    .line 535
    const-string v0, "RttNormCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttNormCnt:I

    .line 536
    const-string v0, "RttPoorCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttPoorCnt:I

    .line 537
    const-string v0, "RttBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mPreRttBadCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    nop

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isStartCollected:Z

    .line 544
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isFinishCollected:Z

    .line 545
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 540
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

    .line 548
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isStartCollected:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 553
    :cond_0
    :try_start_0
    const-string v0, "FailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mFailCnt:I

    .line 554
    const-string v0, "RefuseCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRefuseCnt:I

    .line 555
    const-string v0, "TotalCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mTotalCnt:I

    .line 557
    const-string v0, "RttGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttGoodCnt:I

    .line 558
    const-string v0, "RttNormCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttNormCnt:I

    .line 559
    const-string v0, "RttPoorCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttPoorCnt:I

    .line 560
    const-string v0, "RttBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->mRttBadCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    nop

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->isFinishCollected:Z

    .line 567
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$DnsHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 563
    return-void

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
