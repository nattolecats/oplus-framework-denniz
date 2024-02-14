.class public final Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;
.super Ljava/lang/Object;
.source "BatteryStatsImplExtImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImplExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DevicePowerDetails"
.end annotation


# instance fields
.field public blacklist mActivtiyName:Ljava/lang/String;

.field public blacklist mBluetoothPowerDrainMaMs:J

.field public blacklist mBrightness:I

.field public blacklist mCurrentTime:J

.field public blacklist mDetaTxTimeMs:[I

.field public blacklist mEndcInfoSummary:Ljava/lang/String;

.field public blacklist mGpsPowerDrainMaMs:J

.field public blacklist mHeadsetConnectedType:I

.field public blacklist mLastStepRpmStatsSummary:Ljava/lang/String;

.field public blacklist mMobilePowerDrainMaMs:J

.field public blacklist mMobileRxTotalBytes:J

.field public blacklist mMobileTxTotalBytes:J

.field public blacklist mModemActivityInfo:Ljava/lang/String;

.field public blacklist mRefreshCounts:J

.field public blacklist mRefreshRateSetting:I

.field public blacklist mRefreshesPerSecond:D

.field public blacklist mTxTimeMs:[I

.field public blacklist mVolumeMusicSpeaker:I

.field public blacklist mWifiApEnabled:Z

.field public blacklist mWifiPowerDrainMaMs:J

.field public blacklist mWifiRxTotalBytes:J

.field public blacklist mWifiTxTotalBytes:J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->clear()V

    .line 785
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->readFromParcel(Landroid/os/Parcel;)V

    .line 789
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 4

    .line 796
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    .line 797
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    .line 798
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    .line 799
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    .line 800
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    .line 801
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mTxTimeMs:[I

    .line 802
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    .line 803
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mTxTimeMs:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 804
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->fill([II)V

    .line 805
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    .line 806
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    .line 807
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    .line 808
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    .line 809
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    .line 810
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    .line 811
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    .line 812
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    .line 813
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mVolumeMusicSpeaker:I

    .line 814
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mHeadsetConnectedType:I

    .line 815
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    .line 816
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;

    .line 817
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    .line 818
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 792
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getJsonString()Ljava/lang/String;
    .locals 1

    .line 941
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 850
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    .line 851
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    .line 852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    .line 853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    .line 854
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mActivtiyName:Ljava/lang/String;

    .line 855
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    .line 856
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    array-length v0, v0

    .line 857
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 858
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 860
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    .line 861
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    .line 862
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    .line 863
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    .line 865
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiApEnabled:Z

    .line 869
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    .line 870
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    .line 871
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v0    # "len":I
    goto :goto_1

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "read DevicePowerDetails"

    const-string v2, "Error reading fromParcel "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public blacklist setTo(Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;)V
    .locals 2
    .param p1, "out"    # Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    .line 878
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    .line 879
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    .line 880
    iget v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    .line 881
    iget v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    .line 882
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mActivtiyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mActivtiyName:Ljava/lang/String;

    .line 883
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    .line 884
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    .line 885
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    .line 886
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    .line 887
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    .line 888
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    .line 889
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    .line 890
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    .line 891
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    .line 892
    iget-wide v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    .line 893
    iget-boolean v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiApEnabled:Z

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiApEnabled:Z

    .line 894
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    .line 895
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    .line 896
    iget-object v0, p1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 9

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerDetails: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    const-string v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mActivtiyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    const-string v1, ", ref_counts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 906
    const-string v1, ", ref_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 908
    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 910
    const-string v1, ", refs_per_sec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, ", modem_txTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    const-string v1, ", traffic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    const-string v1, ", ctr_drain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    long-to-double v5, v5

    const-wide v7, 0x414b774000000000L    # 3600000.0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    long-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    long-to-double v5, v5

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    long-to-double v2, v2

    div-double/2addr v2, v7

    invoke-static {v2, v3}, Landroid/os/BatteryStats;->formatCharge(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    const-string v1, ", rpmstat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v1, ", sap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiApEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 926
    const-string v1, ", audio=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mVolumeMusicSpeaker:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", headset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mHeadsetConnectedType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    const-string v2, ", modem=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    const-string v1, ", endc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .line 824
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 825
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 826
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshRateSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mActivtiyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 829
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 830
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    array-length v0, v0

    .line 831
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 832
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    aget v2, v2, v1

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 831
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .end local v1    # "i":I
    :cond_0
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 835
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 836
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 837
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 838
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 839
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 840
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 841
    iget-wide v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 842
    iget-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiApEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 843
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 844
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mModemActivityInfo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mEndcInfoSummary:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 821
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->writeToParcel(Landroid/os/Parcel;)V

    .line 822
    return-void
.end method
