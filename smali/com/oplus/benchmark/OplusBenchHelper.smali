.class public final Lcom/oplus/benchmark/OplusBenchHelper;
.super Ljava/lang/Object;
.source "OplusBenchHelper.java"


# static fields
.field private static final blacklist BENCH_MARK_ANTUTU:Ljava/lang/String; = "com.antutu.ABenchMark"

.field private static final blacklist BENCH_MARK_ANTUTU_3D:Ljava/lang/String; = "com.antutu.benchmark.full"

.field private static final blacklist BENCH_MARK_ANTUTU_FINISHED:I = 0x2d

.field private static final blacklist BENCH_MARK_ANTUTU_FIRST_STEP:I = 0x27

.field static final blacklist BENCH_MARK_ANTUTU_MULTITASK:I = 0xb

.field static final blacklist BENCH_MARK_ANTUTU_MULTITHREAD:I = 0xa

.field private static final blacklist BENCH_MARK_ANTUTU_UX_FIRST_STEP:I = 0xf

.field private static final blacklist BENCH_MARK_LUDASHI:Ljava/lang/String; = "com.ludashi.benchmark"

.field private static final blacklist BENCH_MODE_DISABLE:Ljava/lang/String; = "0"

.field private static final blacklist BENCH_MODE_ENABLE:Ljava/lang/String; = "1"

.field private static final blacklist BENCH_MODE_ENABLE_WITH_JPEG_MUTIL:Ljava/lang/String; = "2"

.field private static final blacklist BITMAP_CACHE_TIMEOUT:J = 0x3e8L

.field private static final blacklist DEBUG:Z

.field static final blacklist REFRESH_RATE_60:I = 0x2

.field private static final blacklist SYSTEM_PROPERTIES_SPEC:Ljava/lang/String; = "sys.oplus.high.performance.spec"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBenchHelper"

.field private static blacklist bitmapCache:Landroid/graphics/Bitmap;

.field private static blacklist lastResId:I

.field private static blacklist lastResStr:Ljava/lang/String;

.field private static blacklist lastTimestamp:J

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lcom/oplus/benchmark/OplusBenchHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/oplus/benchmark/OplusBenchHelper;->DEBUG:Z

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->lastResStr:Ljava/lang/String;

    .line 66
    const/16 v0, -0x3e7

    sput v0, Lcom/oplus/benchmark/OplusBenchHelper;->lastResId:I

    .line 67
    const-wide/16 v0, -0x3e7

    sput-wide v0, Lcom/oplus/benchmark/OplusBenchHelper;->lastTimestamp:J

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->bitmapCache:Landroid/graphics/Bitmap;

    .line 71
    sput-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->sInstance:Lcom/oplus/benchmark/OplusBenchHelper;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/benchmark/OplusBenchHelper;
    .locals 2

    .line 77
    sget-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->sInstance:Lcom/oplus/benchmark/OplusBenchHelper;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/oplus/benchmark/OplusBenchHelper;

    invoke-direct {v1}, Lcom/oplus/benchmark/OplusBenchHelper;-><init>()V

    sput-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->sInstance:Lcom/oplus/benchmark/OplusBenchHelper;

    .line 81
    :cond_0
    sget-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->sInstance:Lcom/oplus/benchmark/OplusBenchHelper;

    monitor-exit v0

    return-object v1

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist handleCompactMemory()V
    .locals 0

    .line 237
    return-void
.end method

.method public static whitelist isAntutu3DApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 174
    const-string v0, "com.antutu.benchmark.full"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isAntutuApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 158
    invoke-static {p0}, Lcom/oplus/benchmark/OplusBenchHelper;->isAntutuMainApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/oplus/benchmark/OplusBenchHelper;->isAntutu3DApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isAntutuMainApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 166
    const-string v0, "com.antutu.ABenchMark"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist isInBenchMode()Z
    .locals 1

    .line 154
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist benchStepCheck(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 188
    .local v1, "bm_uid":I
    sget-boolean v2, Lcom/oplus/benchmark/OplusBenchHelper;->DEBUG:Z

    const-string v3, "OplusBenchHelper"

    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "benchMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/oplus/benchmark/OplusBenchHelper;->isInBenchMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; pkgName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_0
    invoke-static {}, Lcom/oplus/benchmark/OplusBenchHelper;->isInBenchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lcom/oplus/benchmark/OplusBenchHelper;->isAntutuMainApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 194
    :cond_1
    const-string v4, "uid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    .line 196
    :cond_2
    const/16 v5, -0x3e7

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 198
    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bm_uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    const-string v4, "sys.oplus.high.performance.spec"

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 231
    return-void

    .line 219
    :sswitch_0
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->enterPSMode(Z)V

    .line 220
    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz v2, :cond_4

    const-string v2, "BENCH_MARK_ANTUTU_FINISHED"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :sswitch_1
    const/4 v4, 0x2

    invoke-static {v5, v4}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->enterPSModeOnRate(ZI)V

    .line 205
    if-eqz v2, :cond_4

    const-string v2, "BENCH_MARK_ANTUTU_FIRST_STEP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :sswitch_2
    invoke-static {v5}, Lcom/oplus/screenmode/OplusRefreshRateInjectorImpl;->enterPSMode(Z)V

    .line 211
    const-string v5, "2"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz v2, :cond_4

    const-string v2, "BENCH_MARK_ANTUTU_UX_FIRST_STEP"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :sswitch_3
    invoke-static {}, Landroid/os/PerformanceManager;->disableMultiThreadOptimize()V

    .line 229
    goto :goto_0

    .line 225
    :sswitch_4
    invoke-static {}, Landroid/os/PerformanceManager;->enableMultiThreadOptimize()V

    .line 226
    nop

    .line 233
    :cond_4
    :goto_0
    return-void

    .line 192
    :cond_5
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_4
        0xb -> :sswitch_3
        0xf -> :sswitch_2
        0x27 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getBitmapCache(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 102
    invoke-virtual {p0}, Lcom/oplus/benchmark/OplusBenchHelper;->isEnableBitmapCache()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return-object v1

    .line 106
    :cond_0
    sget-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    if-nez p3, :cond_2

    :try_start_0
    sget v2, Lcom/oplus/benchmark/OplusBenchHelper;->lastResId:I

    if-ne v2, p2, :cond_2

    sget-object v2, Lcom/oplus/benchmark/OplusBenchHelper;->lastResStr:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/oplus/benchmark/OplusBenchHelper;->bitmapCache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/oplus/benchmark/OplusBenchHelper;->lastTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 113
    sget-boolean v1, Lcom/oplus/benchmark/OplusBenchHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "OplusBenchHelper"

    const-string v2, "using bitmap cache"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/oplus/benchmark/OplusBenchHelper;->lastTimestamp:J

    .line 117
    sget-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->bitmapCache:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 119
    :cond_2
    monitor-exit v0

    return-object v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist isEnableBitmapCache()Z
    .locals 3

    .line 86
    const-string v0, "sys.oplus.high.performance.spec"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "benchMode":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.ludashi.benchmark"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x1

    return v1

    .line 91
    :cond_0
    sget-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->bitmapCache:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 92
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 93
    const/4 v1, 0x0

    sput-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->bitmapCache:Landroid/graphics/Bitmap;

    .line 95
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setBitmapCache(Landroid/graphics/Bitmap;Landroid/content/res/Resources;I)V
    .locals 3
    .param p1, "cache"    # Landroid/graphics/Bitmap;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .line 128
    invoke-virtual {p0}, Lcom/oplus/benchmark/OplusBenchHelper;->isEnableBitmapCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    return-void

    .line 132
    :cond_0
    sget-object v0, Lcom/oplus/benchmark/OplusBenchHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oplus/benchmark/OplusBenchHelper;->lastResStr:Ljava/lang/String;

    .line 134
    sput p3, Lcom/oplus/benchmark/OplusBenchHelper;->lastResId:I

    .line 135
    sput-object p1, Lcom/oplus/benchmark/OplusBenchHelper;->bitmapCache:Landroid/graphics/Bitmap;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/oplus/benchmark/OplusBenchHelper;->lastTimestamp:J

    .line 137
    sget-boolean v1, Lcom/oplus/benchmark/OplusBenchHelper;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 138
    const-string v1, "OplusBenchHelper"

    const-string v2, "caching bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_1
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
