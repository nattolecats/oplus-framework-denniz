.class public Lcom/android/internal/os/ProcessCpuTrackerExtImpl;
.super Ljava/lang/Object;
.source "ProcessCpuTrackerExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IProcessCpuTrackerExt;


# static fields
.field private static final blacklist COLOR_AMS_MSG_INDEX:I = 0x3e9

.field public static final blacklist CPU_RECORD_FILE:Ljava/lang/String; = "/data/system/cputrack.log"

.field public static final blacklist CPU_RECORD_OLD_FILE:Ljava/lang/String; = "/data/system/cputrack.log.old"

.field private static final blacklist DEBUG:Z

.field private static final blacklist MDPWR_UPDATE_TRAFFIC_KERNEL_INFO:Ljava/lang/String; = "oplus.intent.action.MDPWR_UPDATE_TRAFFIC_KERNEL_INFO"

.field private static final blacklist NHS_MD_ACI_SAFE_PERMISSION:Ljava/lang/String; = "com.oplus.nhs.permission.NHS_MD_ACI_SAFE_PERMISSION"

.field private static final blacklist PEEK_SYSTEM_TEMP:I = 0x3f0

.field private static final blacklist PERSIST_CPU_TRACKER:I = 0x3ef

.field private static final blacklist TAG:Ljava/lang/String; = "ProcessCpuTrackerExtImpl"

.field private static final blacklist THERMAL_ZONE_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone83/temp"

.field private static final blacklist THERMAL_ZONE_PRECISION:I = 0x3e8

.field private static blacklist sCommuLimit:I

.field private static blacklist sDebug:Z

.field private static blacklist sLastWriteTime:J

.field private static blacklist sLimit:I

.field private static final blacklist sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sMyUid:I

.field private static blacklist sRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist sSystemTempreture:F


# instance fields
.field private blacklist mBase:Lcom/android/internal/os/ProcessCpuTracker;

.field private blacklist mBgHandler:Landroid/os/Handler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCpuUpTime:J

.field private blacklist mCurrentSampleWallTime:J

.field private blacklist mInited:Z

.field private blacklist mLastSampleWallTime:J

.field private blacklist mLastTopSampleTime:J

.field private blacklist mLoad1:F

.field private blacklist mLoad15:F

.field private blacklist mLoad5:F

.field private blacklist mProcStTimeRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProcUtTimeRecordMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mShouldReport2Nhs:Z

.field private blacklist mSimpleTopProcessInfo:Ljava/lang/String;

.field private blacklist mThermalZonePath:Ljava/lang/String;

.field private blacklist mThermalZonePrecision:I

.field private blacklist mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWorkingProcsSorted:Z

.field private blacklist maxCpuProName:Ljava/lang/String;

.field private blacklist maxCpuThousandths:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmShouldReport2Nhs(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mShouldReport2Nhs:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtryPersistToDisk(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->tryPersistToDisk()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDebug()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 62
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->DEBUG:Z

    .line 84
    const-string v0, "persist.sys.cputrack.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    .line 85
    const-string v0, "persist.sys.cputrack.limit"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLimit:I

    .line 86
    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sCommuLimit:I

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sMyUid:I

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLastWriteTime:J

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sSystemTempreture:F

    .line 98
    new-instance v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$1;

    invoke-direct {v0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLoadComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "/sys/class/thermal/thermal_zone83/temp"

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mThermalZonePath:Ljava/lang/String;

    .line 75
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mThermalZonePrecision:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mInited:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mShouldReport2Nhs:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCpuUpTime:J

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStTimeRecordMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcUtTimeRecordMap:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcs:Ljava/util/ArrayList;

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad1:F

    .line 475
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad5:F

    .line 476
    iput v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad15:F

    .line 478
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuThousandths:I

    .line 479
    const-string v0, "null"

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuProName:Ljava/lang/String;

    .line 589
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;

    .line 590
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mSimpleTopProcessInfo:Ljava/lang/String;

    .line 592
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastTopSampleTime:J

    .line 117
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/ProcessCpuTracker;

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mBase:Lcom/android/internal/os/ProcessCpuTracker;

    .line 118
    return-void
.end method

.method private blacklist calcuteRatio(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Ljava/lang/String;
    .locals 7
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 608
    iget-wide v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-int v0, v0

    .line 609
    .local v0, "totalTime":I
    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x1

    .line 612
    :cond_0
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    .line 613
    .local v1, "userTime":I
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    .line 614
    .local v2, "systemTime":I
    add-int v3, v1, v2

    int-to-long v3, v3

    int-to-long v5, v0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->getRatioString(JJ)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "ratio":Ljava/lang/String;
    return-object v3
.end method

.method private static blacklist checkPermission()Z
    .locals 2

    .line 379
    sget v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sMyUid:I

    if-gez v0, :cond_0

    .line 380
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sMyUid:I

    .line 382
    :cond_0
    sget v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sMyUid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 383
    const/4 v0, 0x1

    return v0

    .line 385
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist persistToDisk()Z
    .locals 10

    .line 419
    const-string v0, "/data/system/cputrack.log"

    .line 420
    .local v0, "logName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v1, "logFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 422
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 425
    :cond_0
    const/4 v3, 0x0

    .line 430
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x32000

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-gez v5, :cond_1

    .line 431
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v3, v5

    goto :goto_0

    .line 433
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/system/cputrack.log.old"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 435
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 436
    invoke-virtual {v1, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 438
    :cond_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v3, v7

    .line 445
    .end local v5    # "oldFile":Ljava/io/File;
    :goto_0
    nop

    .line 448
    :try_start_1
    sget-object v5, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 449
    :try_start_2
    sget-object v7, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 450
    .local v8, "record":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 451
    .end local v8    # "record":Ljava/lang/String;
    goto :goto_1

    .line 452
    :cond_3
    sget-object v7, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 453
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    nop

    .line 461
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 465
    goto :goto_2

    .line 462
    :catch_0
    move-exception v4

    .line 464
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 469
    return v6

    .line 453
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "logName":Ljava/lang/String;
    .end local v1    # "logFile":Ljava/io/File;
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/internal/os/ProcessCpuTrackerExtImpl;
    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 459
    .restart local v0    # "logName":Ljava/lang/String;
    .restart local v1    # "logFile":Ljava/io/File;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/internal/os/ProcessCpuTrackerExtImpl;
    :catchall_1
    move-exception v4

    goto :goto_4

    .line 454
    :catch_1
    move-exception v5

    .line 456
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 457
    nop

    .line 459
    nop

    .line 461
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 465
    goto :goto_3

    .line 462
    :catch_2
    move-exception v6

    .line 464
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    .end local v6    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v3, 0x0

    .line 457
    return v4

    .line 461
    .end local v5    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 465
    goto :goto_5

    .line 462
    :catch_3
    move-exception v5

    .line 464
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 466
    .end local v5    # "e":Ljava/io/IOException;
    :goto_5
    const/4 v3, 0x0

    .line 468
    throw v4

    .line 440
    :catch_4
    move-exception v5

    .line 442
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 443
    const/4 v3, 0x0

    .line 444
    return v4
.end method

.method private blacklist tryPersistToDisk()V
    .locals 3

    .line 399
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tryPersistToDisk to be called, sRecordList.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTrackerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    .line 403
    return-void

    .line 405
    :cond_1
    sget-object v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 406
    return-void

    .line 409
    :cond_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 411
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->persistToDisk()Z

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLastWriteTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 415
    nop

    .line 416
    return-void

    .line 414
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 415
    throw v1
.end method

.method private blacklist updateSystemTempreture()V
    .locals 4

    .line 389
    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper;->getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusHoraeThermalHelper;->getCurrentThermal()F

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sSystemTempreture:F

    .line 390
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSystemTempreture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sSystemTempreture:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTrackerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mBgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 394
    const/16 v1, 0x3f0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 396
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist buildWorkingProcs()V
    .locals 7

    .line 523
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcsSorted:Z

    if-nez v0, :cond_4

    .line 524
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 525
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 526
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 527
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 528
    .local v3, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v4, :cond_2

    .line 529
    iget-object v4, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 531
    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 532
    iget-object v2, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 533
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 534
    iget-object v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 535
    .local v5, "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-boolean v6, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->working:Z

    if-eqz v6, :cond_0

    .line 536
    iget-object v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    .end local v5    # "tstats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 539
    .end local v4    # "j":I
    :cond_1
    iget-object v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 526
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 543
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 544
    iput-boolean v2, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcsSorted:Z

    .line 546
    .end local v0    # "N":I
    :cond_4
    return-void
.end method

.method public blacklist collectAnbormalStats()V
    .locals 22

    .line 205
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "ProcessCpuTrackerExtImpl"

    const-string v2, "collectAnbormalStats to be called"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-boolean v0, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mInited:Z

    if-nez v0, :cond_1

    .line 209
    const-string v0, "ProcessCpuTrackerExtImpl"

    const-string v2, "collectAnbormalStats, but init is not ready, skip"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 212
    :cond_1
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "persist.sys.cputrack.limit"

    const/16 v2, 0xa

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLimit:I

    .line 215
    :cond_2
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    return-void

    .line 218
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 219
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    .line 220
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v0, "[ "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    new-instance v0, Ljava/util/Date;

    iget-wide v4, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastSampleWallTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, " to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    new-instance v0, Ljava/util/Date;

    iget-wide v4, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCurrentSampleWallTime:J

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-wide v4, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCurrentSampleWallTime:J

    iget-wide v6, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastSampleWallTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    const-string v0, "ms "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    sget v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sSystemTempreture:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 228
    const-string v0, "C]\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_4

    .line 230
    const-string v0, "ProcessCpuTrackerExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectAnbormalStats # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v0, "ProcessCpuTrackerExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mProcStats.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_4
    iget-object v0, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 234
    .local v4, "size":I
    const/4 v0, 0x1

    .line 235
    .local v0, "noRecord":Z
    const/4 v5, 0x0

    move/from16 v21, v5

    move v5, v0

    move/from16 v0, v21

    .local v0, "i":I
    .local v5, "noRecord":Z
    :goto_0
    if-ge v0, v4, :cond_10

    .line 236
    iget-object v6, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 237
    .local v6, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-eqz v6, :cond_f

    iget-wide v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_f

    .line 238
    iget v7, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x64

    int-to-long v7, v7

    iget-wide v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    div-long/2addr v7, v9

    .line 239
    .local v7, "percent":J
    sget-boolean v9, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v9, :cond_5

    .line 240
    const-string v9, "ProcessCpuTrackerExtImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "st.uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", st.name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", percent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", sLimit: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLimit:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_5
    sget v9, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLimit:I

    int-to-long v9, v9

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    .line 244
    if-eqz v5, :cond_6

    .line 245
    const/4 v5, 0x0

    .line 247
    :cond_6
    iget v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 260
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_7
    sget v9, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sCommuLimit:I

    int-to-long v9, v9

    cmp-long v9, v7, v9

    if-lez v9, :cond_e

    .line 263
    const-string v9, "diag-router"

    const-string v10, "dpmd"

    const-string v11, "networkwatchlis"

    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "myProcName":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_c

    aget-object v12, v9, v11

    .line 265
    .local v12, "name":Ljava/lang/String;
    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 266
    iget-wide v13, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCpuUpTime:J

    move v15, v4

    move/from16 v16, v5

    .end local v4    # "size":I
    .end local v5    # "noRecord":Z
    .local v15, "size":I
    .local v16, "noRecord":Z
    iget-wide v4, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    add-long/2addr v13, v4

    iput-wide v13, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCpuUpTime:J

    .line 267
    iget-object v4, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStTimeRecordMap:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcUtTimeRecordMap:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 268
    iget-object v4, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcUtTimeRecordMap:Ljava/util/HashMap;

    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    int-to-long v13, v13

    add-long/2addr v4, v13

    .line 269
    .local v4, "procRelutime":J
    iget-object v13, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStTimeRecordMap:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v17, v2

    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .local v17, "sdf":Ljava/text/SimpleDateFormat;
    iget v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move-wide/from16 v18, v7

    .end local v7    # "percent":J
    .local v18, "percent":J
    int-to-long v7, v2

    add-long/2addr v13, v7

    .line 270
    .local v13, "procRelstime":J
    sget-boolean v2, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v2, :cond_8

    .line 271
    const-string v2, "ProcessCpuTrackerExtImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " myProcName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " UTtime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " STtime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Cputime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v20, v9

    .end local v9    # "myProcName":[Ljava/lang/String;
    .local v20, "myProcName":[Ljava/lang/String;
    iget-wide v8, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCpuUpTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 270
    .end local v20    # "myProcName":[Ljava/lang/String;
    .restart local v9    # "myProcName":[Ljava/lang/String;
    :cond_8
    move-object/from16 v20, v9

    .line 273
    .end local v9    # "myProcName":[Ljava/lang/String;
    .restart local v20    # "myProcName":[Ljava/lang/String;
    :goto_2
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStTimeRecordMap:Ljava/util/HashMap;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcUtTimeRecordMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v12, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v4    # "procRelutime":J
    .end local v13    # "procRelstime":J
    goto :goto_3

    .line 267
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "percent":J
    .end local v20    # "myProcName":[Ljava/lang/String;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "percent":J
    .restart local v9    # "myProcName":[Ljava/lang/String;
    :cond_9
    move-object/from16 v17, v2

    move-wide/from16 v18, v7

    move-object/from16 v20, v9

    .line 276
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v7    # "percent":J
    .end local v9    # "myProcName":[Ljava/lang/String;
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "percent":J
    .restart local v20    # "myProcName":[Ljava/lang/String;
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStTimeRecordMap:Ljava/util/HashMap;

    iget v4, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcUtTimeRecordMap:Ljava/util/HashMap;

    iget v4, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-boolean v2, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v2, :cond_a

    .line 279
    const-string v2, "ProcessCpuTrackerExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ELSE: myProcName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UTtime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " STtime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Cputime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCpuUpTime:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_a
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mShouldReport2Nhs:Z

    goto :goto_3

    .line 265
    .end local v15    # "size":I
    .end local v16    # "noRecord":Z
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "percent":J
    .end local v20    # "myProcName":[Ljava/lang/String;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .local v4, "size":I
    .restart local v5    # "noRecord":Z
    .restart local v7    # "percent":J
    .restart local v9    # "myProcName":[Ljava/lang/String;
    :cond_b
    move-object/from16 v17, v2

    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v18, v7

    move-object/from16 v20, v9

    .line 264
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "size":I
    .end local v5    # "noRecord":Z
    .end local v7    # "percent":J
    .end local v9    # "myProcName":[Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .restart local v15    # "size":I
    .restart local v16    # "noRecord":Z
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "percent":J
    .restart local v20    # "myProcName":[Ljava/lang/String;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v2, v17

    move-wide/from16 v7, v18

    move-object/from16 v9, v20

    goto/16 :goto_1

    .line 285
    .end local v15    # "size":I
    .end local v16    # "noRecord":Z
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "percent":J
    .end local v20    # "myProcName":[Ljava/lang/String;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v4    # "size":I
    .restart local v5    # "noRecord":Z
    .restart local v7    # "percent":J
    .restart local v9    # "myProcName":[Ljava/lang/String;
    :cond_c
    move-object/from16 v17, v2

    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v18, v7

    move-object/from16 v20, v9

    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "size":I
    .end local v5    # "noRecord":Z
    .end local v7    # "percent":J
    .end local v9    # "myProcName":[Ljava/lang/String;
    .restart local v15    # "size":I
    .restart local v16    # "noRecord":Z
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "percent":J
    .restart local v20    # "myProcName":[Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v2, :cond_d

    .line 286
    const-string v2, "ProcessCpuTrackerExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " in collectAnbormalStats,  before send to NHS: mShouldReport2Nhs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mShouldReport2Nhs:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sendCpuInfo2Nhs()V

    goto :goto_4

    .line 262
    .end local v15    # "size":I
    .end local v16    # "noRecord":Z
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v18    # "percent":J
    .end local v20    # "myProcName":[Ljava/lang/String;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v4    # "size":I
    .restart local v5    # "noRecord":Z
    .restart local v7    # "percent":J
    :cond_e
    move-object/from16 v17, v2

    move v15, v4

    move/from16 v16, v5

    move-wide/from16 v18, v7

    .line 235
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "size":I
    .end local v5    # "noRecord":Z
    .end local v6    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v7    # "percent":J
    .restart local v15    # "size":I
    .restart local v16    # "noRecord":Z
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_4
    move/from16 v5, v16

    goto :goto_5

    .line 237
    .end local v15    # "size":I
    .end local v16    # "noRecord":Z
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v4    # "size":I
    .restart local v5    # "noRecord":Z
    .restart local v6    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_f
    move-object/from16 v17, v2

    move v15, v4

    .line 235
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "size":I
    .end local v6    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .restart local v15    # "size":I
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v4, v15

    move-object/from16 v2, v17

    goto/16 :goto_0

    .end local v15    # "size":I
    .end local v17    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v4    # "size":I
    :cond_10
    move-object/from16 v17, v2

    move v15, v4

    .line 293
    .end local v0    # "i":I
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "size":I
    .restart local v15    # "size":I
    .restart local v17    # "sdf":Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_12

    .line 294
    sget-object v2, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 295
    :try_start_0
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_11

    .line 296
    const-string v0, "ProcessCpuTrackerExtImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "have record, collectAnbormalStats # "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_11
    sget-object v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 302
    :cond_12
    :goto_6
    const/4 v0, 0x0

    .line 303
    .local v0, "needSave":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 304
    .local v6, "now":J
    sget-wide v8, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sLastWriteTime:J

    sub-long v8, v6, v8

    const-wide/32 v10, 0x1b7740

    cmp-long v2, v8, v10

    if-lez v2, :cond_13

    .line 306
    sget-object v2, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_14

    .line 307
    const/4 v0, 0x1

    goto :goto_7

    .line 309
    :cond_13
    sget-object v2, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x1e

    if-le v2, v4, :cond_14

    .line 310
    const/4 v0, 0x1

    .line 313
    :cond_14
    :goto_7
    if-eqz v0, :cond_15

    .line 314
    iget-object v2, v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mBgHandler:Landroid/os/Handler;

    if-eqz v2, :cond_15

    .line 315
    const/16 v4, 0x3ef

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 318
    :cond_15
    return-void
.end method

.method public blacklist collectSimpleTopThreeProcessesInfo(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 570
    .local p1, "workingProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 572
    .local v1, "lastSampleTime":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 573
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Landroid/os/OplusThermalManager;->mHeatTopProCounts:I

    if-lt v2, v3, :cond_1

    .line 574
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 575
    sget v2, Landroid/os/OplusThermalManager;->mHeatTopProCounts:I

    .line 576
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 577
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 578
    .local v4, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    invoke-direct {p0, v4}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->calcuteRatio(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Ljava/lang/String;

    move-result-object v5

    .line 579
    .local v5, "ra":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;

    iget-object v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .end local v4    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v5    # "ra":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 583
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastSampleWallTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 584
    iget-object v3, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;

    const-string v4, "lastSamepleWallTime"

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .end local v2    # "len":I
    :cond_1
    return-void
.end method

.method public blacklist getLoad1()I
    .locals 2

    .line 508
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad1:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 509
    .local v0, "load1":I
    return v0
.end method

.method public blacklist getLoad15()I
    .locals 2

    .line 518
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad15:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 519
    .local v0, "load15":I
    return v0
.end method

.method public blacklist getLoad5()I
    .locals 2

    .line 513
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad5:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 514
    .local v0, "load5":I
    return v0
.end method

.method public final blacklist getMaxCpuProName()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuProName:Ljava/lang/String;

    return-object v0
.end method

.method public final blacklist getMaxCpuThousandths()I
    .locals 1

    .line 618
    iget v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuThousandths:I

    return v0
.end method

.method public blacklist getRatioString(JJ)Ljava/lang/String;
    .locals 10
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .line 594
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    div-long/2addr v0, p3

    .line 595
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 596
    .local v4, "hundreds":J
    const/16 v6, 0xa

    .line 597
    .local v6, "hundredsThreshold":I
    const-string v7, "0"

    .line 598
    .local v7, "ratio":Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 599
    int-to-long v8, v6

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    .line 600
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 601
    .local v2, "remainder":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_0

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 605
    .end local v2    # "remainder":J
    :cond_0
    return-object v7
.end method

.method public blacklist getSimpleTopProcessesSnapShot()Landroid/util/ArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    sget v0, Landroid/os/OplusThermalManager;->mHeatTopProInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 550
    .local v0, "topInterval":J
    sget-boolean v2, Landroid/os/OplusThermalManager;->mHeatTopProFeatureOn:Z

    .line 551
    .local v2, "topEnabled":Z
    const-wide/32 v3, 0xea60

    .line 552
    .local v3, "oneMinute":J
    const/4 v5, 0x3

    .line 553
    .local v5, "threeTime":I
    cmp-long v6, v0, v3

    if-gez v6, :cond_0

    .line 554
    int-to-long v6, v5

    mul-long v0, v6, v3

    .line 557
    :cond_0
    if-eqz v2, :cond_1

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastTopSampleTime:J

    sub-long/2addr v6, v8

    cmp-long v6, v6, v0

    if-ltz v6, :cond_1

    .line 560
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mWorkingProcsSorted:Z

    .line 561
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastTopSampleTime:J

    .line 562
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->buildWorkingProcs()V

    .line 566
    :cond_1
    iget-object v6, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mTopThreeProcessesSnapShot:Landroid/util/ArrayMap;

    return-object v6
.end method

.method public blacklist handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 149
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "ProcessCpuTrackerExtImpl"

    const-string v1, "handleMessage to be called"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->updateSystemTempreture()V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->tryPersistToDisk()V

    .line 156
    nop

    .line 162
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist init(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "procStats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "constructor with parameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTrackerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    .line 123
    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper;->getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusHoraeThermalHelper;->getCurrentThermal()F

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sSystemTempreture:F

    .line 124
    return-void
.end method

.method public blacklist initBroadcastReceiver()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "oplus.intent.action.MDPWR_UPDATE_TRAFFIC_KERNEL_INFO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    new-instance v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$2;

    invoke-direct {v1, p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$2;-><init>(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;)V

    .line 181
    .local v1, "mBroadcastReceiver":Landroid/content/BroadcastReceiver;
    iget-object v2, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "mBroadcastReceiver":Landroid/content/BroadcastReceiver;
    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "ProcessCpuTrackerExtImpl"

    const-string v1, "mContext is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    return-void
.end method

.method public blacklist initHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initHandler with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessCpuTrackerExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mBgHandler:Landroid/os/Handler;

    .line 130
    if-eqz p1, :cond_0

    .line 131
    const/16 v0, 0x3f0

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mInited:Z

    .line 134
    return-void
.end method

.method public blacklist initMaxCpuInfo()V
    .locals 1

    .line 503
    const-string v0, "null"

    iput-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuProName:Ljava/lang/String;

    .line 504
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuThousandths:I

    .line 505
    return-void
.end method

.method synthetic blacklist lambda$sendCpuInfo2Nhs$0$com-android-internal-os-ProcessCpuTrackerExtImpl()V
    .locals 4

    .line 190
    sget-boolean v0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->sDebug:Z

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "ProcessCpuTrackerExtImpl"

    const-string v1, "enter : sendTread!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.MSG_REPORT_CPU_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intentSend2Nhs":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcUtTimeRecordMap:Ljava/util/HashMap;

    const-string v2, "myProcessUtTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStTimeRecordMap:Ljava/util/HashMap;

    const-string v2, "myProcessStTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 196
    iget-wide v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCpuUpTime:J

    const-string v3, "myCpuTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.oplus.nhs.permission.NHS_MD_ACI_SAFE_PERMISSION"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public blacklist printCpuTrack(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 323
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$3;-><init>(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;Ljava/io/PrintWriter;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 359
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 362
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 366
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public blacklist sendCpuInfo2Nhs()V
    .locals 3

    .line 188
    iget-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mShouldReport2Nhs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/ProcessCpuTrackerExtImpl;)V

    const-string v2, "Send2NhsThread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mShouldReport2Nhs:Z

    .line 201
    :cond_0
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    iget-object v0, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    const-string v1, "ProcessCpuTrackerExtImpl"

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "mContext is already set, return now! "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setContext this: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " context: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->initBroadcastReceiver()V

    .line 145
    return-void
.end method

.method public blacklist updateCurrentSampleWallTime(J)V
    .locals 0
    .param p1, "currentSampleWallTime"    # J

    .line 375
    iput-wide p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mCurrentSampleWallTime:J

    .line 376
    return-void
.end method

.method public blacklist updateLastSampleWallTime(J)V
    .locals 0
    .param p1, "lastSampleWallTime"    # J

    .line 370
    iput-wide p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLastSampleWallTime:J

    .line 371
    return-void
.end method

.method public blacklist updateLoad(FFF)V
    .locals 0
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 484
    iput p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad1:F

    .line 485
    iput p2, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad5:F

    .line 486
    iput p3, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mLoad15:F

    .line 487
    return-void
.end method

.method public blacklist updateMaxCpuInfo(Lcom/android/internal/os/ProcessCpuTracker$Stats;I)V
    .locals 3
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .param p2, "denom"    # I

    .line 490
    const/16 v0, 0x3e8

    .line 491
    .local v0, "thousandths":I
    if-gtz p2, :cond_0

    .line 492
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cpuThousandths:I

    goto :goto_0

    .line 494
    :cond_0
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    div-int/2addr v1, p2

    iput v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cpuThousandths:I

    .line 496
    :goto_0
    iget v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuThousandths:I

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cpuThousandths:I

    if-ge v1, v2, :cond_1

    .line 497
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->cpuThousandths:I

    iput v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuThousandths:I

    .line 498
    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->maxCpuProName:Ljava/lang/String;

    .line 500
    :cond_1
    return-void
.end method

.method public blacklist updateProcStats(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/ProcessCpuTracker$Stats;",
            ">;)V"
        }
    .end annotation

    .line 481
    .local p1, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    iput-object p1, p0, Lcom/android/internal/os/ProcessCpuTrackerExtImpl;->mProcStats:Ljava/util/ArrayList;

    .line 482
    return-void
.end method
