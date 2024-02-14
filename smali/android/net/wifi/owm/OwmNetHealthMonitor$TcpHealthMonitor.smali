.class Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;
.super Ljava/lang/Object;
.source "OwmNetHealthMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/owm/OwmNetHealthMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TcpHealthMonitor"
.end annotation


# instance fields
.field private blacklist isFinishCollected:Z

.field private blacklist isStartCollected:Z

.field private blacklist mIpv4RtoEvtCnt:I

.field private blacklist mIpv6RtoEvtCnt:I

.field private blacklist mLossPkgCnt:J

.field private blacklist mPreIpv4RtoEvtCnt:I

.field private blacklist mPreIpv6RtoEvtCnt:I

.field private blacklist mPreLossPkgCnt:J

.field private blacklist mPreRecvPkgCnt:J

.field private blacklist mPreRetryPkgCnt:J

.field private blacklist mPreRttBadCnt:I

.field private blacklist mPreRttGoodCnt:I

.field private blacklist mPreRttNormCnt:I

.field private blacklist mPreRttPoorCnt:I

.field private blacklist mPreSendPkgCnt:J

.field private blacklist mPreSyncFailCnt:I

.field private blacklist mPreSyncSlowCnt:I

.field private blacklist mPreSyncTotalCnt:I

.field private blacklist mRecvPkgCnt:J

.field private blacklist mRetryPkgCnt:J

.field private blacklist mRttBadCnt:I

.field private blacklist mRttGoodCnt:I

.field private blacklist mRttNormCnt:I

.field private blacklist mRttPoorCnt:I

.field private blacklist mSendPkgCnt:J

.field private blacklist mSyncFailCnt:I

.field private blacklist mSyncSlowCnt:I

.field private blacklist mSyncTotalCnt:I

.field final synthetic blacklist this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;


# direct methods
.method private constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V
    .locals 2

    .line 736
    iput-object p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    const/4 p1, 0x0

    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncFailCnt:I

    .line 739
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncTotalCnt:I

    .line 740
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncSlowCnt:I

    .line 743
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSendPkgCnt:J

    .line 744
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRecvPkgCnt:J

    .line 745
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRetryPkgCnt:J

    .line 746
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreLossPkgCnt:J

    .line 749
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttGoodCnt:I

    .line 750
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttNormCnt:I

    .line 751
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttPoorCnt:I

    .line 752
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttBadCnt:I

    .line 755
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreIpv4RtoEvtCnt:I

    .line 756
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreIpv6RtoEvtCnt:I

    .line 759
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncFailCnt:I

    .line 760
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncTotalCnt:I

    .line 761
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncSlowCnt:I

    .line 764
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSendPkgCnt:J

    .line 765
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRecvPkgCnt:J

    .line 766
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRetryPkgCnt:J

    .line 767
    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mLossPkgCnt:J

    .line 770
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttGoodCnt:I

    .line 771
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttNormCnt:I

    .line 772
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttPoorCnt:I

    .line 773
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttBadCnt:I

    .line 776
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mIpv4RtoEvtCnt:I

    .line 777
    iput p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mIpv6RtoEvtCnt:I

    .line 779
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isStartCollected:Z

    .line 780
    iput-boolean p1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isFinishCollected:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;-><init>(Landroid/net/wifi/owm/OwmNetHealthMonitor;)V

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

    .line 844
    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isFinishCollected:Z

    if-nez v0, :cond_0

    .line 845
    const/4 v0, 0x0

    return-object v0

    .line 848
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 850
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncFailCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncFailCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncFailCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncTotalCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncTotalCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncTotalCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncSlowCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncSlowCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SyncSlowCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSendPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSendPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SendPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRecvPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRecvPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RecvPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRetryPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRetryPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RetryPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mLossPkgCnt:J

    iget-wide v5, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreLossPkgCnt:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LossPkgCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttGoodCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttGoodCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttGoodCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttNormCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttNormCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttNormCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttPoorCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttPoorCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttPoorCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttBadCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttBadCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RttBadCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mIpv4RtoEvtCnt:I

    iget v4, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreIpv4RtoEvtCnt:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Ipv4RtoEvtCntDiff"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mIpv6RtoEvtCnt:I

    iget v3, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreIpv6RtoEvtCnt:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ipv6RtoEvtCntDiff"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
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

    .line 783
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 784
    return-void

    .line 788
    :cond_0
    :try_start_0
    const-string v0, "SyncFailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncFailCnt:I

    .line 789
    const-string v0, "SyncTotalCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncTotalCnt:I

    .line 790
    const-string v0, "SyncSlowCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSyncSlowCnt:I

    .line 792
    const-string v0, "SendPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreSendPkgCnt:J

    .line 793
    const-string v0, "RecvPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRecvPkgCnt:J

    .line 794
    const-string v0, "RetryPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRetryPkgCnt:J

    .line 795
    const-string v0, "LossPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreLossPkgCnt:J

    .line 797
    const-string v0, "RttGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttGoodCnt:I

    .line 798
    const-string v0, "RttNormCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttNormCnt:I

    .line 799
    const-string v0, "RttPoorCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttPoorCnt:I

    .line 800
    const-string v0, "RttBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreRttBadCnt:I

    .line 802
    const-string v0, "Ipv4RtoEvtCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreIpv4RtoEvtCnt:I

    .line 803
    const-string v0, "Ipv6RtoEvtCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mPreIpv6RtoEvtCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    nop

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isStartCollected:Z

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isFinishCollected:Z

    .line 811
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 806
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

    .line 814
    .local p1, "curRecord":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isStartCollected:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 819
    :cond_0
    :try_start_0
    const-string v0, "SyncFailCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncFailCnt:I

    .line 820
    const-string v0, "SyncTotalCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncTotalCnt:I

    .line 821
    const-string v0, "SyncSlowCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSyncSlowCnt:I

    .line 823
    const-string v0, "SendPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mSendPkgCnt:J

    .line 824
    const-string v0, "RecvPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRecvPkgCnt:J

    .line 825
    const-string v0, "RetryPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRetryPkgCnt:J

    .line 826
    const-string v0, "LossPkgCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mLossPkgCnt:J

    .line 828
    const-string v0, "RttGoodCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttGoodCnt:I

    .line 829
    const-string v0, "RttNormCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttNormCnt:I

    .line 830
    const-string v0, "RttPoorCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttPoorCnt:I

    .line 831
    const-string v0, "RttBadCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mRttBadCnt:I

    .line 833
    const-string v0, "Ipv4RtoEvtCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mIpv4RtoEvtCnt:I

    .line 834
    const-string v0, "Ipv6RtoEvtCnt"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->mIpv6RtoEvtCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    nop

    .line 840
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->isFinishCollected:Z

    .line 841
    return-void

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/net/wifi/owm/OwmNetHealthMonitor$TcpHealthMonitor;->this$0:Landroid/net/wifi/owm/OwmNetHealthMonitor;

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

    .line 837
    return-void

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method
