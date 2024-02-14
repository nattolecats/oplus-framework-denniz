.class Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;
.super Ljava/lang/Object;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "L2HealthMonitor"
.end annotation


# instance fields
.field private blacklist isFinishCollected:Z

.field private blacklist isStartCollected:Z

.field private blacklist mEnvirBadCnt:I

.field private blacklist mEnvirGoodCnt:I

.field private blacklist mPerBadCnt:I

.field private blacklist mPerGoodCnt:I

.field private blacklist mPreEnvirBadCnt:I

.field private blacklist mPreEnvirGoodCnt:I

.field private blacklist mPrePerBadCnt:I

.field private blacklist mPrePerGoodCnt:I

.field private blacklist mPreRoamingCnt:I

.field private blacklist mPreRssiBadCnt:I

.field private blacklist mPreRssiGoodCnt:I

.field private blacklist mPreRxDataStallCnt:I

.field private blacklist mPreRxPkgCnt:J

.field private blacklist mPreScanCnt:I

.field private blacklist mPreTxDataStallCnt:I

.field private blacklist mPreTxPkgCnt:J

.field private blacklist mPreTxRetryPkgCnt:J

.field private blacklist mPreTxRxDataStallCnt:I

.field private blacklist mRoamingCnt:I

.field private blacklist mRssiBadCnt:I

.field private blacklist mRssiGoodCnt:I

.field private blacklist mRxDataStallCnt:I

.field private blacklist mRxPkgCnt:J

.field private blacklist mScanCnt:I

.field private blacklist mTxDataStallCnt:I

.field private blacklist mTxPkgCnt:J

.field private blacklist mTxRetryPkgCnt:J

.field private blacklist mTxRxDataStallCnt:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V
    .locals 2

    .line 271
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRssiGoodCnt:I

    .line 274
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRssiBadCnt:I

    .line 277
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreEnvirGoodCnt:I

    .line 278
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreEnvirBadCnt:I

    .line 281
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxPkgCnt:J

    .line 282
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxRetryPkgCnt:J

    .line 283
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRxPkgCnt:J

    .line 286
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPrePerGoodCnt:I

    .line 287
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPrePerBadCnt:I

    .line 290
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreScanCnt:I

    .line 291
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRoamingCnt:I

    .line 294
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxDataStallCnt:I

    .line 295
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRxDataStallCnt:I

    .line 296
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxRxDataStallCnt:I

    .line 299
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRssiGoodCnt:I

    .line 300
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRssiBadCnt:I

    .line 303
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mEnvirGoodCnt:I

    .line 304
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mEnvirBadCnt:I

    .line 307
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxPkgCnt:J

    .line 308
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxRetryPkgCnt:J

    .line 309
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRxPkgCnt:J

    .line 312
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPerGoodCnt:I

    .line 313
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPerBadCnt:I

    .line 316
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mScanCnt:I

    .line 317
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRoamingCnt:I

    .line 320
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxDataStallCnt:I

    .line 321
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRxDataStallCnt:I

    .line 322
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxRxDataStallCnt:I

    .line 324
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isStartCollected:Z

    .line 325
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isFinishCollected:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V

    return-void
.end method


# virtual methods
.method public blacklist getCollectDiffRecord()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isFinishCollected:Z

    if-nez v0, :cond_0

    .line 408
    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 413
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRssiGoodCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRssiGoodCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssiGoodCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRssiBadCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRssiBadCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RssiBadCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mEnvirGoodCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreEnvirGoodCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnvirGoodCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mEnvirBadCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreEnvirBadCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EnvirBadCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxRetryPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxRetryPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxRetryPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRxPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRxPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RxPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPerGoodCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPrePerGoodCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PerGoodCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPerBadCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPrePerBadCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PerBadCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mScanCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreScanCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScanCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRoamingCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRoamingCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RoamingCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxDataStallCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxDataStallCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TxDataStallCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRxDataStallCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRxDataStallCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RxDataStallCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxRxDataStallCnt:I

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxRxDataStallCnt:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TxRxDataStallCntDiff"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
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

    .line 328
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 329
    return-void

    .line 334
    :cond_0
    :try_start_0
    const-string v0, "RssiGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRssiGoodCnt:I

    .line 335
    const-string v0, "RssiBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRssiBadCnt:I

    .line 338
    const-string v0, "EnvirGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreEnvirGoodCnt:I

    .line 339
    const-string v0, "EnvirBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreEnvirBadCnt:I

    .line 342
    const-string v0, "TxPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxPkgCnt:J

    .line 343
    const-string v0, "TxRetryPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxRetryPkgCnt:J

    .line 344
    const-string v0, "RxPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRxPkgCnt:J

    .line 347
    const-string v0, "PerGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPrePerGoodCnt:I

    .line 348
    const-string v0, "PerBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPrePerBadCnt:I

    .line 351
    const-string v0, "ScanCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreScanCnt:I

    .line 352
    const-string v0, "RoamingCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRoamingCnt:I

    .line 355
    const-string v0, "TxDataStallCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxDataStallCnt:I

    .line 356
    const-string v0, "RxDataStallCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreRxDataStallCnt:I

    .line 357
    const-string v0, "TxRxDataStallCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPreTxRxDataStallCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    nop

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isStartCollected:Z

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isFinishCollected:Z

    .line 365
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 360
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

    .line 368
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isStartCollected:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 374
    :cond_0
    :try_start_0
    const-string v0, "RssiGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRssiGoodCnt:I

    .line 375
    const-string v0, "RssiBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRssiBadCnt:I

    .line 378
    const-string v0, "EnvirGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mEnvirGoodCnt:I

    .line 379
    const-string v0, "EnvirBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mEnvirBadCnt:I

    .line 382
    const-string v0, "TxPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxPkgCnt:J

    .line 383
    const-string v0, "TxRetryPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxRetryPkgCnt:J

    .line 384
    const-string v0, "RxPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRxPkgCnt:J

    .line 387
    const-string v0, "PerGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPerGoodCnt:I

    .line 388
    const-string v0, "PerBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mPerBadCnt:I

    .line 391
    const-string v0, "ScanCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mScanCnt:I

    .line 392
    const-string v0, "RoamingCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRoamingCnt:I

    .line 395
    const-string v0, "TxDataStallCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxDataStallCnt:I

    .line 396
    const-string v0, "RxDataStallCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mRxDataStallCnt:I

    .line 397
    const-string v0, "TxRxDataStallCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->mTxRxDataStallCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    nop

    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->isFinishCollected:Z

    .line 404
    return-void

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$L2HealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 400
    return-void

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
