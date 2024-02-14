.class Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;
.super Ljava/lang/Object;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GatewayHealthMonitor"
.end annotation


# instance fields
.field private blacklist isFinishCollected:Z

.field private blacklist isStartCollected:Z

.field private blacklist mFailCnt:I

.field private blacklist mNudFailCnt:I

.field private blacklist mPreFailCnt:I

.field private blacklist mPreNudFailCnt:I

.field private blacklist mPreRttBadCnt:I

.field private blacklist mPreRttGoodCnt:I

.field private blacklist mPreRttNormCnt:I

.field private blacklist mPreRttPoorCnt:I

.field private blacklist mPreTotalCnt:I

.field private blacklist mRttBadCnt:I

.field private blacklist mRttGoodCnt:I

.field private blacklist mRttNormCnt:I

.field private blacklist mRttPoorCnt:I

.field private blacklist mTotalCnt:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V
    .locals 0

    .line 589
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreNudFailCnt:I

    .line 592
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreFailCnt:I

    .line 593
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreTotalCnt:I

    .line 595
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttGoodCnt:I

    .line 596
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttNormCnt:I

    .line 597
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttPoorCnt:I

    .line 598
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttBadCnt:I

    .line 601
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mNudFailCnt:I

    .line 602
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mFailCnt:I

    .line 603
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mTotalCnt:I

    .line 605
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttGoodCnt:I

    .line 606
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttNormCnt:I

    .line 607
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttPoorCnt:I

    .line 608
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttBadCnt:I

    .line 610
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isStartCollected:Z

    .line 611
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isFinishCollected:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V

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

    .line 659
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isFinishCollected:Z

    if-nez v0, :cond_0

    .line 660
    const/4 v0, 0x0

    return-object v0

    .line 663
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 665
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mNudFailCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreNudFailCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "NudFailCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mFailCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreFailCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FailCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mTotalCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreTotalCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TotalCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttGoodCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttGoodCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttNormCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttNormCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttPoorCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttPoorCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttBadCnt:I

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttBadCnt:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RttBadCntDiff"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
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

    .line 614
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 615
    return-void

    .line 619
    :cond_0
    :try_start_0
    const-string v0, "NudFailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreNudFailCnt:I

    .line 620
    const-string v0, "FailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreFailCnt:I

    .line 621
    const-string v0, "TotalCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreTotalCnt:I

    .line 623
    const-string v0, "RttGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttGoodCnt:I

    .line 624
    const-string v0, "RttNormCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttNormCnt:I

    .line 625
    const-string v0, "RttPoorCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttPoorCnt:I

    .line 626
    const-string v0, "RttBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mPreRttBadCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    nop

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isStartCollected:Z

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isFinishCollected:Z

    .line 634
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 629
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

    .line 637
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isStartCollected:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 642
    :cond_0
    :try_start_0
    const-string v0, "NudFailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mNudFailCnt:I

    .line 643
    const-string v0, "FailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mFailCnt:I

    .line 644
    const-string v0, "TotalCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mTotalCnt:I

    .line 646
    const-string v0, "RttGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttGoodCnt:I

    .line 647
    const-string v0, "RttNormCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttNormCnt:I

    .line 648
    const-string v0, "RttPoorCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttPoorCnt:I

    .line 649
    const-string v0, "RttBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->mRttBadCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    nop

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->isFinishCollected:Z

    .line 656
    return-void

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$GatewayHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 652
    return-void

    .line 638
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
