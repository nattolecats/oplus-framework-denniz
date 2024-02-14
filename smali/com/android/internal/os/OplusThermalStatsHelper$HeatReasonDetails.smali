.class Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeatReasonDetails"
.end annotation


# instance fields
.field private blacklist mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field public blacklist mAnalizyPosition:I

.field private blacklist mAudioTime:I

.field private blacklist mBackLight:I

.field private blacklist mBackLightCount:I

.field private blacklist mBatRm0:I

.field private blacklist mBatRm1:I

.field public blacklist mBatTemp:I

.field private blacklist mCameraTime:I

.field private blacklist mCpuLoading:I

.field private blacklist mCpuLoadingCount:I

.field private blacklist mEnviTemp:I

.field private blacklist mFlashlightTime:I

.field private blacklist mForeProcTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mGpsTime:I

.field private blacklist mHeartReason:I

.field private blacklist mHeatRatio:I

.field private blacklist mIsUploadHeat:Z

.field private blacklist mJobProcTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mJobTime:I

.field private blacklist mLastAnalizyItem:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private blacklist mLongTopCpuProc:Ljava/lang/String;

.field private blacklist mLongTopCpuTime:I

.field private blacklist mMaxForeProc:Ljava/lang/String;

.field private blacklist mMaxForeProcTime:I

.field private blacklist mMaxJobProc:Ljava/lang/String;

.field private blacklist mMaxJobTime:I

.field private blacklist mMaxSyncProc:Ljava/lang/String;

.field private blacklist mMaxSyncTime:I

.field private blacklist mMaxTopCpuProc:Ljava/lang/String;

.field private blacklist mMaxTopCpuRatio:I

.field private blacklist mNet2GTime:I

.field private blacklist mNet3GTime:I

.field private blacklist mNet4GTime:I

.field private blacklist mPhoneOnTime:I

.field private blacklist mPhoneSignal:I

.field private blacklist mPhoneSignalCount:I

.field public blacklist mPhoneTemp:I

.field private blacklist mPlug:Z

.field private blacklist mPlugAcTime:I

.field private blacklist mPlugNoneTime:I

.field private blacklist mPlugTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPlugUsbTime:I

.field private blacklist mPlugWireTime:I

.field private blacklist mSyncProcTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSyncTime:I

.field private blacklist mTemp0:I

.field private blacklist mTemp1:I

.field private blacklist mTopCpuProcRatioMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTopCpuProcTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTotalTime:I

.field blacklist mUpLoadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVersionName:Ljava/lang/String;

.field private blacklist mVideoTime:I

.field private blacklist mWifiStrenth:I

.field private blacklist mWifiStrenthCount:I

.field private blacklist mWifiTime:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/OplusThermalStatsHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsUploadHeat(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mIsUploadHeat:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUploadHeat(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mIsUploadHeat:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mencodeThermalHeatEvent(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->encodeThermalHeatEvent()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHeatReson(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatReson()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMaxTopCpuProc(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxTopCpuProc()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V
    .locals 2

    .line 444
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    .line 388
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneTemp:I

    .line 389
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatTemp:I

    .line 390
    iput-boolean p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlug:Z

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    .line 392
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAudioTime:I

    .line 393
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCameraTime:I

    .line 394
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVideoTime:I

    .line 395
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mGpsTime:I

    .line 396
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mFlashlightTime:I

    .line 397
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneOnTime:I

    .line 398
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignal:I

    .line 399
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignalCount:I

    .line 400
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiTime:I

    .line 401
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenth:I

    .line 402
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenthCount:I

    .line 403
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet2GTime:I

    .line 404
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet3GTime:I

    .line 405
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet4GTime:I

    .line 406
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoadingCount:I

    .line 407
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoading:I

    .line 408
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLight:I

    .line 409
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLightCount:I

    .line 410
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobTime:I

    .line 411
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobTime:I

    .line 412
    const-string v1, "null"

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobProc:Ljava/lang/String;

    .line 413
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncTime:I

    .line 414
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncTime:I

    .line 415
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncProc:Ljava/lang/String;

    .line 416
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProcTime:I

    .line 417
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProc:Ljava/lang/String;

    .line 418
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuRatio:I

    .line 419
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    .line 420
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLongTopCpuTime:I

    .line 421
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLongTopCpuProc:Ljava/lang/String;

    .line 422
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mHeartReason:I

    .line 423
    const/16 v1, -0x3ff

    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp0:I

    .line 424
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp1:I

    .line 425
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mHeatRatio:I

    .line 426
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mEnviTemp:I

    .line 427
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm0:I

    .line 428
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm1:I

    .line 429
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugNoneTime:I

    .line 430
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugUsbTime:I

    .line 431
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugAcTime:I

    .line 432
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugWireTime:I

    .line 433
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVersionName:Ljava/lang/String;

    .line 434
    const/16 v0, 0x190

    new-array v1, v0, [Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 435
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    .line 436
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    .line 437
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    .line 438
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    .line 439
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    .line 440
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    .line 441
    new-instance v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLastAnalizyItem:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 442
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    .line 443
    iput-boolean p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mIsUploadHeat:Z

    .line 445
    iget-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    if-nez p1, :cond_0

    .line 446
    new-array p1, v0, [Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 448
    :cond_0
    const/4 p1, 0x0

    .local p1, "i":I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 449
    new-instance v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v0}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    .line 450
    .local v0, "item":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    aput-object v0, v1, p1

    .line 448
    .end local v0    # "item":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 452
    .end local p1    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist addAudioTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 534
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAudioTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAudioTime:I

    .line 535
    return-void
.end method

.method private blacklist addBackLight(I)V
    .locals 1
    .param p1, "backLight"    # I

    .line 615
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLight:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLight:I

    .line 616
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLightCount:I

    .line 617
    return-void
.end method

.method private blacklist addCameraTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 540
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCameraTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCameraTime:I

    .line 541
    return-void
.end method

.method private blacklist addCpuLoading(I)V
    .locals 1
    .param p1, "cpuLoading"    # I

    .line 608
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoadingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoadingCount:I

    .line 609
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoading:I

    .line 610
    return-void
.end method

.method private blacklist addFlashlightTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 558
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mFlashlightTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mFlashlightTime:I

    .line 559
    return-void
.end method

.method private blacklist addGpsTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 552
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mGpsTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mGpsTime:I

    .line 553
    return-void
.end method

.method private blacklist addNet2GTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 590
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet2GTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet2GTime:I

    .line 591
    return-void
.end method

.method private blacklist addNet3GTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 596
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet3GTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet3GTime:I

    .line 597
    return-void
.end method

.method private blacklist addNet4GTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 602
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet4GTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet4GTime:I

    .line 603
    return-void
.end method

.method private blacklist addPhoneOnTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 564
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneOnTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneOnTime:I

    .line 565
    return-void
.end method

.method private blacklist addPhoneSignal(I)V
    .locals 1
    .param p1, "signal"    # I

    .line 570
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignal:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignal:I

    .line 571
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignalCount:I

    .line 572
    return-void
.end method

.method private blacklist addTotalTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 531
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    .line 532
    return-void
.end method

.method private blacklist addVideoTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 546
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVideoTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVideoTime:I

    .line 547
    return-void
.end method

.method private blacklist addWifiStrenth(I)V
    .locals 1
    .param p1, "strenth"    # I

    .line 583
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenth:I

    .line 584
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenthCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenthCount:I

    .line 585
    return-void
.end method

.method private blacklist addWifiTime(I)V
    .locals 1
    .param p1, "time"    # I

    .line 577
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiTime:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiTime:I

    .line 578
    return-void
.end method

.method private blacklist encodeThermalHeatEvent()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1162
    move-object/from16 v1, p0

    const-string v2, "="

    new-instance v0, Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object v3, v0

    .line 1163
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map$Entry;

    .line 1165
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "foreProc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "null"

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v7, :cond_0

    .line 1166
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$menCoderString(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    :cond_0
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "topcpuproc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v7, :cond_1

    .line 1169
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$menCoderString(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "simpleTopPro"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v7, "invalid"

    if-eq v0, v7, :cond_7

    .line 1172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1173
    .local v7, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1174
    .local v8, "sb1":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1178
    .local v10, "str":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    array-length v13, v10

    if-ge v12, v13, :cond_6

    .line 1179
    aget-object v13, v10, v12

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 1180
    .local v13, "str1":[Ljava/lang/String;
    aget-object v14, v13, v0

    const-string v15, "lastSamepleWallTime"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1181
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v15, v13, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-object v15, v13, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    move v1, v9

    goto/16 :goto_2

    .line 1184
    :cond_2
    iget-object v14, v1, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    aget-object v15, v13, v0

    invoke-static {v14, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$menCoderString(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1185
    .local v14, "encode":Ljava/lang/String;
    array-length v15, v10

    sub-int/2addr v15, v9

    const/4 v0, 0x2

    if-ne v12, v15, :cond_4

    .line 1186
    array-length v15, v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "}"

    if-lt v15, v0, :cond_3

    .line 1187
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v15, 0x1

    aget-object v1, v13, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_2

    .line 1190
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_2

    .line 1194
    :cond_4
    array-length v1, v13

    if-lt v1, v0, :cond_5

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v9, v13, v1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1198
    :cond_5
    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1178
    .end local v13    # "str1":[Ljava/lang/String;
    .end local v14    # "encode":Ljava/lang/String;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    const/4 v0, 0x0

    move v9, v1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 1206
    .end local v12    # "i":I
    :cond_6
    goto :goto_3

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    .end local v8    # "sb1":Ljava/lang/StringBuilder;
    .end local v10    # "str":[Ljava/lang/String;
    :cond_7
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1210
    :cond_8
    return-object v3
.end method

.method private blacklist getAudioTimeThousandths()I
    .locals 2

    .line 537
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAudioTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getAvgBackLight()I
    .locals 2

    .line 619
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLightCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLight:I

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getAvgCpuLoading()I
    .locals 2

    .line 612
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoadingCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoading:I

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getAvgPhoneSignal()I
    .locals 2

    .line 574
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignalCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignal:I

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getAvgWifiStrenth()I
    .locals 2

    .line 587
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenthCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenth:I

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getCameraTimeThousandths()I
    .locals 2

    .line 543
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCameraTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getCurrent()I
    .locals 4

    .line 634
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm0:I

    const/16 v1, 0x270f

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm1:I

    if-eq v3, v2, :cond_1

    if-le v0, v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getPlugNoneTimeThousandths()I

    move-result v0

    const/16 v2, 0x3b6

    if-le v0, v2, :cond_1

    .line 635
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm0:I

    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm1:I

    sub-int/2addr v1, v2

    const v2, 0x36ee80

    mul-int/2addr v1, v2

    div-int/2addr v1, v0

    :goto_0
    return v1

    .line 637
    :cond_1
    return v1
.end method

.method private blacklist getEnviTmep()I
    .locals 1

    .line 625
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mEnviTemp:I

    return v0
.end method

.method private blacklist getFlashlightTimeThousandths()I
    .locals 2

    .line 561
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mFlashlightTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getGpsTimeThousandths()I
    .locals 2

    .line 555
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mGpsTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getHeatRatio()I
    .locals 4

    .line 647
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp1:I

    const/16 v1, 0x270f

    const/16 v2, -0x3ff

    if-eq v0, v2, :cond_1

    iget v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp0:I

    if-eq v3, v2, :cond_1

    if-le v0, v3, :cond_1

    .line 648
    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v3

    const v1, 0xea60

    mul-int/2addr v0, v1

    div-int v1, v0, v2

    :goto_0
    return v1

    .line 650
    :cond_1
    return v1
.end method

.method private blacklist getHeatReson()I
    .locals 6

    .line 928
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getPlugNoneTimeThousandths()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xfa

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 929
    .local v0, "isCharge":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAudioTimeThousandths()I

    move-result v3

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getJobTimeThousandths()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getVideoTimeThousandths()I

    move-result v4

    add-int/2addr v3, v4

    .line 930
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getCameraTimeThousandths()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getSyncTimeThousandths()I

    move-result v4

    add-int/2addr v3, v4

    .line 931
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getPhoneOnTimeThousandths()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getFlashlightTimeThousandths()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x2ee

    if-lt v3, v4, :cond_1

    move v1, v2

    .line 933
    .local v1, "isMultiReson":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxTopCpuProc()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxForeProc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x258

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxForeTimeThousandths()I

    move-result v3

    if-lt v3, v4, :cond_3

    .line 934
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatRatio()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v5, v5, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioThreshold:I

    if-lt v3, v5, :cond_3

    .line 935
    if-nez v0, :cond_2

    .line 936
    const/4 v2, 0x3

    return v2

    .line 938
    :cond_2
    const/4 v2, 0x4

    return v2

    .line 940
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxTopCpuProc()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxForeProc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxForeTimeThousandths()I

    move-result v3

    if-lt v3, v4, :cond_5

    .line 941
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatRatio()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v4, v4, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioThreshold:I

    if-lt v3, v4, :cond_5

    .line 942
    if-nez v0, :cond_4

    .line 943
    return v2

    .line 945
    :cond_4
    const/4 v2, 0x2

    return v2

    .line 947
    :cond_5
    if-eqz v1, :cond_7

    .line 948
    if-nez v0, :cond_6

    .line 949
    const/4 v2, 0x5

    return v2

    .line 951
    :cond_6
    const/4 v2, 0x6

    return v2

    .line 954
    :cond_7
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatRatio()I

    move-result v2

    const/16 v3, 0x270f

    const/16 v4, 0x1f4

    if-gt v2, v4, :cond_a

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAvgCpuLoading()I

    move-result v2

    const/16 v5, 0x96

    if-gt v2, v5, :cond_a

    .line 955
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getCurrent()I

    move-result v2

    const/16 v5, -0xc8

    if-ge v2, v5, :cond_8

    .line 956
    const/4 v2, 0x7

    return v2

    .line 957
    :cond_8
    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getCurrent()I

    move-result v2

    if-ge v2, v4, :cond_9

    .line 958
    const/16 v2, 0x8

    return v2

    .line 960
    :cond_9
    return v3

    .line 964
    :cond_a
    return v3
.end method

.method private blacklist getJobTimeThousandths()I
    .locals 2

    .line 716
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getMaxForeProc()Ljava/lang/String;
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProc:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getMaxForeTimeThousandths()I
    .locals 2

    .line 768
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProcTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getMaxJobProc()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobProc:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getMaxJobTimeThousandths()I
    .locals 2

    .line 719
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getMaxSyncProc()Ljava/lang/String;
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncProc:Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getMaxSyncTimeThousandths()I
    .locals 2

    .line 745
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getMaxTopCpuProc()Ljava/lang/String;
    .locals 8

    .line 818
    const/4 v0, -0x1

    .line 820
    .local v0, "maxRatio":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 821
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 822
    .local v3, "topRatioProc":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 823
    .local v4, "temp":I
    const v5, 0xffff

    and-int v6, v4, v5

    .line 824
    .local v6, "ratio":I
    shr-int/lit8 v7, v4, 0x10

    and-int/2addr v5, v7

    .line 825
    .local v5, "count":I
    iget v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoadingCount:I

    div-int v7, v6, v7

    .line 826
    .local v7, "avgratio":I
    if-ge v0, v7, :cond_0

    .line 827
    move v0, v7

    .line 828
    iput-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "topRatioProc":Ljava/lang/String;
    .end local v4    # "temp":I
    .end local v5    # "count":I
    .end local v6    # "ratio":I
    .end local v7    # "avgratio":I
    :cond_0
    goto :goto_0

    .line 834
    :cond_1
    goto :goto_1

    .line 832
    :catch_0
    move-exception v1

    .line 833
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 836
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getMaxTopCpuRatio()I
    .locals 4

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 808
    .local v0, "temp":I
    const v1, 0xffff

    and-int v2, v0, v1

    .line 809
    .local v2, "ratio":I
    shr-int/lit8 v3, v0, 0x10

    and-int/2addr v1, v3

    .line 810
    .local v1, "count":I
    div-int v3, v2, v1

    iput v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuRatio:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    .end local v0    # "temp":I
    .end local v1    # "count":I
    .end local v2    # "ratio":I
    :cond_0
    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuRatio:I

    return v0
.end method

.method private blacklist getNet2GTimeThousandths()I
    .locals 2

    .line 593
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet2GTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getNet3GTimeThousandths()I
    .locals 2

    .line 599
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet3GTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getNet4GTimeThousandths()I
    .locals 2

    .line 605
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet4GTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getPhoneOnTimeThousandths()I
    .locals 2

    .line 567
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneOnTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getPlugAcTimeThousandths()I
    .locals 3

    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 685
    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    mul-int/lit16 v2, v0, 0x3e8

    div-int v1, v2, v1

    :goto_0
    return v1
.end method

.method private blacklist getPlugNoneTimeThousandths()I
    .locals 4

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 671
    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    mul-int/lit16 v2, v0, 0x3e8

    div-int/2addr v2, v1

    :goto_0
    return v2
.end method

.method private blacklist getPlugUsbTimeThousandths()I
    .locals 3

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 678
    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    mul-int/lit16 v2, v0, 0x3e8

    div-int v1, v2, v1

    :goto_0
    return v1
.end method

.method private blacklist getPlugWireTimeThousandths()I
    .locals 3

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 690
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 692
    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    mul-int/lit16 v2, v0, 0x3e8

    div-int v1, v2, v1

    :goto_0
    return v1
.end method

.method private blacklist getSyncTimeThousandths()I
    .locals 2

    .line 742
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getTopCpuTimeThousandths()I
    .locals 3

    .line 784
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 785
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    div-int v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return v0

    .line 789
    :cond_1
    goto :goto_2

    .line 787
    :catch_0
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 790
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return v0
.end method

.method private blacklist getVideoTimeThousandths()I
    .locals 2

    .line 549
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVideoTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist getWifiTimeThousandths()I
    .locals 2

    .line 580
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiTime:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    :goto_0
    return v0
.end method

.method private blacklist putForeProcAndTime(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "proc"    # Ljava/lang/String;
    .param p3, "time"    # I

    .line 751
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 753
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    add-int v2, p3, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    .end local v0    # "tempTime":I
    goto :goto_0

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 758
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 759
    .local v2, "foreProc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 760
    .local v3, "foreTime":I
    iget v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProcTime:I

    if-ge v4, v3, :cond_1

    .line 761
    iput v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProcTime:I

    .line 762
    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProc:Ljava/lang/String;

    .line 764
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "foreProc":Ljava/lang/String;
    .end local v3    # "foreTime":I
    :cond_1
    goto :goto_1

    .line 765
    :cond_2
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVersionName:Ljava/lang/String;

    .line 766
    return-void
.end method

.method private blacklist putJobProcAndTime(Ljava/lang/String;I)V
    .locals 5
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "time"    # I

    .line 695
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 697
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    add-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .end local v0    # "tempTime":I
    goto :goto_0

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :goto_0
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobTime:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobTime:I

    .line 703
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 704
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 705
    .local v2, "jobProc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 706
    .local v3, "jobTime":I
    iget v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobTime:I

    if-ge v4, v3, :cond_1

    .line 707
    iput v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobTime:I

    .line 708
    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobProc:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "jobProc":Ljava/lang/String;
    .end local v3    # "jobTime":I
    :cond_1
    goto :goto_1

    .line 713
    :cond_2
    goto :goto_2

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private blacklist putPlugTypeAndTime(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "time"    # I

    .line 654
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 657
    const/4 p1, 0x0

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 661
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .end local v0    # "tempTime":I
    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    :goto_0
    return-void
.end method

.method private blacklist putSyncProcAndTime(Ljava/lang/String;I)V
    .locals 5
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "time"    # I

    .line 725
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 727
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    add-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    .end local v0    # "tempTime":I
    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    :goto_0
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncTime:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncTime:I

    .line 732
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 733
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 734
    .local v2, "syncProc":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 735
    .local v3, "syncTime":I
    iget v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncTime:I

    if-ge v4, v3, :cond_1

    .line 736
    iput v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncTime:I

    .line 737
    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncProc:Ljava/lang/String;

    .line 739
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "syncProc":Ljava/lang/String;
    .end local v3    # "syncTime":I
    :cond_1
    goto :goto_1

    .line 740
    :cond_2
    return-void
.end method

.method private blacklist putTopCpuProcAndRatio(Ljava/lang/String;I)V
    .locals 6
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "ratio"    # I

    .line 795
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 797
    .local v0, "temp":I
    const v1, 0xffff

    and-int v2, v0, v1

    .line 798
    .local v2, "tempRatio":I
    shr-int/lit8 v3, v0, 0x10

    and-int/2addr v1, v3

    .line 799
    .local v1, "tempCount":I
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    add-int v4, p2, v2

    add-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .end local v0    # "temp":I
    .end local v1    # "tempCount":I
    .end local v2    # "tempRatio":I
    goto :goto_0

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    const/high16 v1, 0x10000

    or-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :goto_0
    return-void
.end method

.method private blacklist putTopCpuProcAndTime(Ljava/lang/String;I)V
    .locals 3
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "time"    # I

    .line 775
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 777
    .local v0, "tempTime":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    add-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .end local v0    # "tempTime":I
    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :goto_0
    return-void
.end method

.method private blacklist setBatRm0(I)V
    .locals 0
    .param p1, "batrm"    # I

    .line 628
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm0:I

    .line 629
    return-void
.end method

.method private blacklist setBatRm1(I)V
    .locals 0
    .param p1, "batrm"    # I

    .line 631
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm1:I

    .line 632
    return-void
.end method

.method private blacklist setEnviTmep(I)V
    .locals 0
    .param p1, "temp"    # I

    .line 622
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mEnviTemp:I

    .line 623
    return-void
.end method

.method private blacklist setTemp0(I)V
    .locals 0
    .param p1, "temp"    # I

    .line 641
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp0:I

    .line 642
    return-void
.end method

.method private blacklist setTemp1(I)V
    .locals 0
    .param p1, "temp"    # I

    .line 644
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp1:I

    .line 645
    return-void
.end method


# virtual methods
.method public blacklist addToHeatItem(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 4
    .param p1, "item"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 454
    sget-boolean v0, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    const-string v1, "OplusThermalStats"

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToHeatItem:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v2, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mAnalizyPosition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_0
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    rem-int/lit16 v2, v0, 0x190

    .line 458
    .local v2, "res":I
    const/16 v3, 0x18f

    if-gt v0, v3, :cond_1

    if-ltz v0, :cond_1

    if-gez v2, :cond_2

    .line 459
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizyPosition reach max limit, mAnalizyPosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " res="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    move v2, v0

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 465
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    .line 468
    :cond_3
    return-void
.end method

.method public blacklist analizyHeatRecItem(JI)Z
    .locals 7
    .param p1, "thermaldumpStart"    # J
    .param p3, "pos"    # I

    .line 839
    const/4 v0, 0x0

    if-ltz p3, :cond_18

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    add-int/lit16 v1, v1, -0x190

    if-ge p3, v1, :cond_0

    goto/16 :goto_3

    .line 842
    :cond_0
    const/4 v1, 0x0

    .line 843
    .local v1, "item":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    rem-int/lit16 v2, p3, 0x190

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyHeatArray:[Landroid/os/BatteryStatsExtImpl$ThermalItem;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 844
    rem-int/lit16 v2, p3, 0x190

    aget-object v1, v3, v2

    .line 847
    :cond_1
    if-nez v1, :cond_2

    .line 848
    return v0

    .line 850
    :cond_2
    iget-wide v2, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    cmp-long v2, v2, p1

    if-ltz v2, :cond_17

    iget v2, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v3, v3, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    add-int/lit8 v3, v3, -0x46

    if-ge v2, v3, :cond_3

    goto/16 :goto_2

    .line 854
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLastAnalizyItem:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-wide v2, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_11

    .line 855
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLastAnalizyItem:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-wide v3, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 856
    .local v0, "relTime":I
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addTotalTime(I)V

    .line 857
    iget-boolean v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    if-eqz v3, :cond_4

    .line 858
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addAudioTime(I)V

    .line 860
    :cond_4
    iget-boolean v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    if-eqz v3, :cond_5

    .line 861
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addCameraTime(I)V

    .line 863
    :cond_5
    iget-boolean v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    if-eqz v3, :cond_6

    .line 864
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addVideoTime(I)V

    .line 866
    :cond_6
    iget-boolean v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    if-eqz v3, :cond_7

    .line 867
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addGpsTime(I)V

    .line 869
    :cond_7
    iget-boolean v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    if-eqz v3, :cond_8

    .line 870
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addFlashlightTime(I)V

    .line 872
    :cond_8
    iget-boolean v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    if-eqz v3, :cond_9

    .line 873
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addPhoneOnTime(I)V

    .line 875
    :cond_9
    iget-byte v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    if-ne v3, v2, :cond_a

    .line 876
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addWifiTime(I)V

    goto :goto_0

    .line 877
    :cond_a
    iget-byte v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    .line 878
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addNet2GTime(I)V

    goto :goto_0

    .line 879
    :cond_b
    iget-byte v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    .line 880
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addNet3GTime(I)V

    goto :goto_0

    .line 881
    :cond_c
    iget-byte v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    .line 882
    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addNet4GTime(I)V

    .line 884
    :cond_d
    :goto_0
    iget v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    invoke-direct {p0, v3, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putPlugTypeAndTime(II)V

    .line 885
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    const-string v4, "null"

    if-eqz v3, :cond_e

    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 886
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putJobProcAndTime(Ljava/lang/String;I)V

    .line 888
    :cond_e
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 889
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putSyncProcAndTime(Ljava/lang/String;I)V

    .line 891
    :cond_f
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 892
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    iget-object v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putForeProcAndTime(Ljava/lang/String;Ljava/lang/String;I)V

    .line 894
    :cond_10
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 895
    iget-object v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putTopCpuProcAndTime(Ljava/lang/String;I)V

    .line 898
    .end local v0    # "relTime":I
    :cond_11
    iget-byte v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    if-ne v0, v2, :cond_12

    .line 899
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addWifiStrenth(I)V

    .line 901
    :cond_12
    iget-byte v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addPhoneSignal(I)V

    .line 902
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addCpuLoading(I)V

    .line 903
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addBackLight(I)V

    .line 904
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getEnviTmep()I

    move-result v0

    const/16 v3, -0x3ff

    if-ne v0, v3, :cond_13

    .line 905
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->setEnviTmep(I)V

    .line 907
    :cond_13
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    sub-int/2addr v0, v2

    if-ne p3, v0, :cond_14

    .line 908
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    if-eq v0, v3, :cond_15

    .line 909
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->setBatRm1(I)V

    .line 910
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->setTemp1(I)V

    goto :goto_1

    .line 913
    :cond_14
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    if-eq v0, v3, :cond_15

    .line 914
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->setBatRm0(I)V

    .line 915
    iget v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->setTemp0(I)V

    .line 921
    :cond_15
    :goto_1
    iget-object v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 922
    iget-object v0, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    iget v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    invoke-direct {p0, v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putTopCpuProcAndRatio(Ljava/lang/String;I)V

    .line 924
    :cond_16
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLastAnalizyItem:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 925
    return v2

    .line 852
    :cond_17
    :goto_2
    return v0

    .line 840
    .end local v1    # "item":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    :cond_18
    :goto_3
    return v0
.end method

.method public blacklist clear()V
    .locals 4

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlug:Z

    .line 471
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    .line 472
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAudioTime:I

    .line 473
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCameraTime:I

    .line 474
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVideoTime:I

    .line 475
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mGpsTime:I

    .line 476
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mFlashlightTime:I

    .line 477
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignal:I

    .line 478
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneSignalCount:I

    .line 479
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiTime:I

    .line 480
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenth:I

    .line 481
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mWifiStrenthCount:I

    .line 482
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet2GTime:I

    .line 483
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet3GTime:I

    .line 484
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mNet4GTime:I

    .line 485
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoadingCount:I

    .line 486
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mCpuLoading:I

    .line 487
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLight:I

    .line 488
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBackLightCount:I

    .line 489
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobTime:I

    .line 490
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobTime:I

    .line 491
    const-string v1, "null"

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxJobProc:Ljava/lang/String;

    .line 492
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncTime:I

    .line 493
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncTime:I

    .line 494
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxSyncProc:Ljava/lang/String;

    .line 495
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProcTime:I

    .line 496
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxForeProc:Ljava/lang/String;

    .line 497
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuRatio:I

    .line 498
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mMaxTopCpuProc:Ljava/lang/String;

    .line 499
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLongTopCpuTime:I

    .line 500
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLongTopCpuProc:Ljava/lang/String;

    .line 501
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mHeartReason:I

    .line 502
    const/16 v2, -0x3ff

    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp0:I

    .line 503
    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTemp1:I

    .line 504
    const/16 v3, -0x7f

    iput v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mHeatRatio:I

    .line 505
    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mEnviTemp:I

    .line 506
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm0:I

    .line 507
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatRm1:I

    .line 508
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugNoneTime:I

    .line 509
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugUsbTime:I

    .line 510
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugAcTime:I

    .line 511
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugWireTime:I

    .line 512
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVersionName:Ljava/lang/String;

    .line 513
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPlugTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 514
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mJobProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 515
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mSyncProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 516
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mForeProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 517
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 518
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTopCpuProcRatioMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 519
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mLastAnalizyItem:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->clear()V

    .line 520
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 521
    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mIsUploadHeat:Z

    .line 522
    return-void
.end method

.method public blacklist dumpThemalHeatDetailLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1213
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1215
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadHeatReasonDetails "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 1218
    :cond_1
    const-string v0, "no heat record"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1220
    :goto_1
    return-void
.end method

.method public blacklist getHeatReasonDetails()V
    .locals 4

    .line 995
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v3, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "heatTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatReson()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heatReason"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mTotalTime:I

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "totalTime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAudioTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "audioTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getCameraTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cameraTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getCameraTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gpsTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getFlashlightTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flashlightTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getPhoneOnTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "phoneOnTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAvgPhoneSignal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "phoneSignal"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getWifiTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "wifiTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAvgWifiStrenth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "wifiSignal"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getNet2GTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "2GTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getNet3GTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "3GTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getNet4GTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "4GTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAvgCpuLoading()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "cpuLoading"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getAvgBackLight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "backlight"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getJobTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "jobTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getSyncTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "syncTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v1, "foreProc"

    const-string v3, "null"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxForeTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "foreProcTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxTopCpuProc()Ljava/lang/String;

    move-result-object v1

    const-string v3, "topcpuproc"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getTopCpuTimeThousandths()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "topcpuTimeRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getMaxTopCpuRatio()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v3, "topcpuRatio"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getHeatRatio()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heatRatio"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getCurrent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "current"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->getEnviTmep()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enviTemp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneTemp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "temp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatTemp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batTemp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneTemp:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxPhoneTemp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatTemp:I

    div-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxBatTemp"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "heatThreshold"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mVersionName:Ljava/lang/String;

    const-string v2, "foreProcVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1031
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "syncProcc"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    goto :goto_0

    .line 1034
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeatReasonDetails "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusThermalStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1038
    :cond_1
    return-void
.end method

.method public blacklist hasCode()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 525
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist putHeatMaxTemp(II)V
    .locals 4
    .param p1, "maxTemp"    # I
    .param p2, "maxBatTemp"    # I

    .line 967
    invoke-virtual {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 968
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v1, "maxPhoneTemp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 971
    .local v0, "tmpValue":I
    if-ge v0, p1, :cond_0

    .line 972
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 974
    .end local v0    # "tmpValue":I
    :catch_0
    move-exception v0

    .line 975
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 976
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    goto :goto_1

    .line 978
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    const-string v1, "maxBatTemp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 982
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 983
    .local v0, "tmpValue":I
    if-ge v0, p2, :cond_2

    .line 984
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 986
    .end local v0    # "tmpValue":I
    :catch_1
    move-exception v0

    .line 987
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 988
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    goto :goto_3

    .line 990
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_4
    :goto_3
    return-void
.end method

.method public blacklist uploadHeatEvent()V
    .locals 4

    .line 1040
    invoke-virtual {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mUpLoadMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1042
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1043
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadHeatEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusThermalStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1046
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails$1;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1158
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1160
    :cond_1
    return-void
.end method
