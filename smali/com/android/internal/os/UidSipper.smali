.class public Lcom/android/internal/os/UidSipper;
.super Ljava/lang/Object;
.source "UidSipper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist BINS_SCREEN_BRIGHTNESS:I = 0x28

.field private static final blacklist BLUETOOTH_RX_BYTES:I = 0x20

.field private static final blacklist BLUETOOTH_RX_PACKETS:I = 0x26

.field private static final blacklist BLUETOOTH_TX_BYTES:I = 0x21

.field private static final blacklist BLUETOOTH_TX_PACKETS:I = 0x27

.field private static final blacklist CONTROLLER_BLUETOOTH:I = 0x4

.field private static final blacklist CONTROLLER_MODEM:I = 0x5

.field private static final blacklist CONTROLLER_WIFI:I = 0x3

.field private static final blacklist COUNT_BUTTON_USER_ACTIVITY:I = 0x1a

.field private static final blacklist COUNT_MOBILE_RADIO_ACTIVE:I = 0x29

.field private static final blacklist COUNT_OTHER_USER_ACTIVITY:I = 0x19

.field private static final blacklist COUNT_TOUCH_USER_ACTIVITY:I = 0x1b

.field private static final blacklist COUNT_WAKEUP_ALARMS:I = 0x2

.field private static final blacklist COUNT_WIFI_SCAN:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/os/UidSipper;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MOBILE_RX_BYTES:I = 0x1c

.field private static final blacklist MOBILE_RX_PACKETS:I = 0x22

.field private static final blacklist MOBILE_TX_BYTES:I = 0x1d

.field private static final blacklist MOBILE_TX_PACKETS:I = 0x23

.field private static final blacklist TAG:Ljava/lang/String; = "UidSipper"

.field private static final blacklist TIMER_AUDIO:I = 0xc

.field private static final blacklist TIMER_BLUETOOTH_SCAN:I = 0x11

.field private static final blacklist TIMER_FOREGROUND_ACTIVITY:I = 0x10

.field private static final blacklist TIMER_VIBRATOR:I = 0x18

.field private static final blacklist TIMER_VIDEO:I = 0xd

.field private static final blacklist TIME_MS_BACKGROUND_WAKELOCK:I = 0x1

.field private static final blacklist TIME_MS_CPU_ACTIVE:I = 0x2d

.field private static final blacklist TIME_MS_CPU_CLUSTER:I = 0x2e

.field private static final blacklist TIME_MS_PROCESS_STATE_BACKGROUND:I = 0x16

.field private static final blacklist TIME_MS_PROCESS_STATE_CACHED:I = 0x17

.field private static final blacklist TIME_MS_PROCESS_STATE_FOREGROUND:I = 0x15

.field private static final blacklist TIME_MS_PROCESS_STATE_FOREGROUND_SERVICE:I = 0x13

.field private static final blacklist TIME_MS_PROCESS_STATE_TOP:I = 0x12

.field private static final blacklist TIME_MS_PROCESS_STATE_TOP_SLEEPING:I = 0x14

.field private static final blacklist TIME_MS_TOTAL_WAKELOCK:I = 0x0

.field private static final blacklist TIME_MS_WIFI_BATCHED_SCAN:I = 0xb

.field private static final blacklist TIME_MS_WIFI_FULL_LOCK:I = 0x7

.field private static final blacklist TIME_MS_WIFI_MULTICAST:I = 0xa

.field private static final blacklist TIME_MS_WIFI_RUNNING:I = 0x6

.field private static final blacklist TIME_US_CAMERA:I = 0xf

.field private static final blacklist TIME_US_FLASHLIGHT:I = 0xe

.field private static final blacklist TIME_US_MOBILE_RADIO_ACTIVE:I = 0x2a

.field private static final blacklist TIME_US_SYSTEM_CPU:I = 0x2c

.field private static final blacklist TIME_US_USER_CPU:I = 0x2b

.field private static final blacklist TIME_US_WIFI_SCAN:I = 0x9

.field private static final blacklist WIFI_RX_BYTES:I = 0x1e

.field private static final blacklist WIFI_RX_PACKETS:I = 0x24

.field private static final blacklist WIFI_TX_BYTES:I = 0x1f

.field private static final blacklist WIFI_TX_PACKETS:I = 0x25


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mCpuClusterSpeedTimesUs:[[J

.field private blacklist mJobCompletionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mJobMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLongArrays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation
.end field

.field private blacklist mLongs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSensorMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSyncMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWakeTimers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/internal/os/UidSipper$1;

    invoke-direct {v0}, Lcom/android/internal/os/UidSipper$1;-><init>()V

    sput-object v0, Lcom/android/internal/os/UidSipper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    .line 90
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mSyncMap:Landroid/util/ArrayMap;

    .line 91
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mJobMap:Landroid/util/ArrayMap;

    .line 92
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    .line 93
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    .line 94
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mTimers:Landroid/util/ArrayMap;

    .line 95
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mJobCompletionMap:Landroid/util/ArrayMap;

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 97
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    .line 99
    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    .line 101
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    .line 90
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mSyncMap:Landroid/util/ArrayMap;

    .line 91
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mJobMap:Landroid/util/ArrayMap;

    .line 92
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    .line 93
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    .line 94
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mTimers:Landroid/util/ArrayMap;

    .line 95
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mJobCompletionMap:Landroid/util/ArrayMap;

    .line 96
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 97
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    .line 99
    new-array v0, v0, [[J

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    .line 104
    sget-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mSyncMap:Landroid/util/ArrayMap;

    .line 105
    sget-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mJobMap:Landroid/util/ArrayMap;

    .line 106
    sget-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->createIntParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    .line 107
    sget-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->createIntParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    .line 108
    sget-object v0, Landroid/os/health/TimerStat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->createIntParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mTimers:Landroid/util/ArrayMap;

    .line 109
    invoke-static {p1}, Lcom/android/internal/os/UidSipper;->createParcelableMapMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mJobCompletionMap:Landroid/util/ArrayMap;

    .line 110
    invoke-static {p1}, Lcom/android/internal/os/UidSipper;->createParcelableLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 111
    invoke-static {p1}, Lcom/android/internal/os/UidSipper;->createParcelableLongArrayMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;->createParcelableCpuClusterSpeedTimes(Landroid/os/Parcel;)[[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    .line 114
    return-void
.end method

.method private blacklist addJob(Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/util/ArrayMap;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 469
    .local p3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 470
    .local v0, "aMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2

    .line 471
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 472
    .local v1, "NT":I
    iget-boolean v2, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    const-string v3, "UidSipper"

    if-eqz v2, :cond_0

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    const/4 v2, 0x0

    .local v2, "it":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 476
    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget-boolean v4, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 478
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Job Map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "NT":I
    .end local v2    # "it":I
    :cond_2
    if-nez p3, :cond_3

    .line 483
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    move-object p3, v1

    .line 485
    :cond_3
    invoke-virtual {p3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method

.method private blacklist addLong(IJLandroid/util/ArrayMap;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 517
    .local p4, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez p4, :cond_0

    .line 518
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object p4, v0

    .line 520
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;->intKeyToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UidSipper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    return-void
.end method

.method private blacklist addLongArray(I[JLandroid/util/ArrayMap;)V
    .locals 2
    .param p1, "key"    # I
    .param p2, "values"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[J>;)V"
        }
    .end annotation

    .line 505
    .local p3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[J>;"
    if-nez p3, :cond_0

    .line 506
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    move-object p3, v0

    .line 508
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;->intKeyToStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UidSipper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    return-void
.end method

.method private blacklist addTimer(ILandroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "elapsedRealtimeMs"    # J
    .param p6, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/BatteryStats$Timer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/health/TimerStat;",
            ">;JI)V"
        }
    .end annotation

    .line 426
    .local p3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Landroid/os/health/TimerStat;>;"
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    .line 427
    .local v0, "timerStat":Landroid/os/health/TimerStat;
    if-eqz p2, :cond_0

    .line 428
    invoke-virtual {p2, p6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/health/TimerStat;->setCount(I)V

    .line 429
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p4

    invoke-virtual {p2, v1, v2, p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/health/TimerStat;->setTime(J)V

    .line 431
    :cond_0
    if-nez p3, :cond_1

    .line 432
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    move-object p3, v1

    .line 434
    :cond_1
    const-string v1, "Unknown Timer"

    .line 435
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mTimers:Landroid/util/ArrayMap;

    if-ne p3, v2, :cond_2

    .line 436
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;->intKeyToStr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 437
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    if-ne p3, v2, :cond_3

    .line 438
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;->intKeyToWakeStr(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 439
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    if-ne p3, v2, :cond_4

    .line 440
    invoke-direct {p0, p1}, Lcom/android/internal/os/UidSipper;->intKeyToSensorStr(I)Ljava/lang/String;

    move-result-object v1

    .line 442
    :cond_4
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/health/TimerStat;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/health/TimerStat;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UidSipper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method private blacklist addTimer(Ljava/lang/String;Landroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p4, "elapsedRealtimeMs"    # J
    .param p6, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/BatteryStats$Timer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;JI)V"
        }
    .end annotation

    .line 452
    .local p3, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/health/TimerStat;>;"
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    .line 453
    .local v0, "timerStat":Landroid/os/health/TimerStat;
    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {p2, p6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/health/TimerStat;->setCount(I)V

    .line 455
    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p4

    invoke-virtual {p2, v1, v2, p6}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/health/TimerStat;->setTime(J)V

    .line 457
    :cond_0
    if-nez p3, :cond_1

    .line 458
    new-instance v1, Landroid/util/ArrayMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    move-object p3, v1

    .line 460
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/os/UidSipper;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/health/TimerStat;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/health/TimerStat;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UidSipper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_2
    invoke-virtual {p3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    return-void
.end method

.method private static blacklist createIntParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation

    .line 595
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 596
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 597
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 598
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 600
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private blacklist createParcelableCpuClusterSpeedTimes(Landroid/os/Parcel;)[[J
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 687
    .local v0, "cluster":I
    new-array v1, v0, [[J

    .line 688
    .local v1, "result":[[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .local v3, "step":I
    new-array v4, v3, [J

    aput-object v4, v1, v2

    .line 691
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 692
    aget-object v5, v1, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    aput-wide v6, v5, v4

    .line 691
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 688
    .end local v3    # "step":I
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static blacklist createParcelableLongArrayMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 9
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[J>;"
        }
    .end annotation

    .line 559
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 560
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 561
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[J>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 562
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 563
    .local v3, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 564
    .local v4, "length":I
    new-array v5, v4, [J

    .line 565
    .local v5, "array":[J
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 565
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 568
    .end local v6    # "j":I
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .end local v3    # "key":I
    .end local v4    # "length":I
    .end local v5    # "array":[J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 570
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private static blacklist createParcelableLongsMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 6
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 535
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 536
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 537
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static blacklist createParcelableMap(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;
    .locals 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 608
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 609
    .local v0, "size":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 610
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 611
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static blacklist createParcelableMapMap(Landroid/os/Parcel;)Landroid/util/ArrayMap;
    .locals 11
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 646
    .local v0, "mapSize":I
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 647
    .local v1, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 648
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 649
    .local v3, "jobName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 650
    .local v4, "numTypes":I
    if-lez v4, :cond_1

    .line 651
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 652
    .local v5, "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v4, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 654
    .local v7, "type":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 655
    .local v8, "count":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v7    # "type":I
    .end local v8    # "count":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 657
    .end local v6    # "k":I
    :cond_0
    invoke-virtual {v1, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    .end local v3    # "jobName":Ljava/lang/String;
    .end local v4    # "numTypes":I
    .end local v5    # "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "j":I
    :cond_2
    return-object v1
.end method

.method private blacklist intKeyToSensorStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .line 1093
    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    .line 1094
    const-string v0, "GPS"

    return-object v0

    .line 1096
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SENSOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist intKeyToStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .line 1030
    packed-switch p1, :pswitch_data_0

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1077
    :pswitch_0
    const-string v0, "TIME_MS_CPU_CLUSTER"

    return-object v0

    .line 1076
    :pswitch_1
    const-string v0, "TIME_MS_CPU_ACTIVE"

    return-object v0

    .line 1075
    :pswitch_2
    const-string v0, "TIME_US_SYSTEM_CPU"

    return-object v0

    .line 1074
    :pswitch_3
    const-string v0, "TIME_US_USER_CPU"

    return-object v0

    .line 1073
    :pswitch_4
    const-string v0, "TIME_US_MOBILE_RADIO_ACTIVE"

    return-object v0

    .line 1072
    :pswitch_5
    const-string v0, "COUNT_MOBILE_RADIO_ACTIVE"

    return-object v0

    .line 1071
    :pswitch_6
    const-string v0, "BINS_SCREEN_BRIGHTNESS"

    return-object v0

    .line 1070
    :pswitch_7
    const-string v0, "BLUETOOTH_TX_PACKETS"

    return-object v0

    .line 1069
    :pswitch_8
    const-string v0, "BLUETOOTH_RX_PACKETS"

    return-object v0

    .line 1068
    :pswitch_9
    const-string v0, "WIFI_TX_PACKETS"

    return-object v0

    .line 1067
    :pswitch_a
    const-string v0, "WIFI_RX_PACKETS"

    return-object v0

    .line 1066
    :pswitch_b
    const-string v0, "MOBILE_TX_PACKETS"

    return-object v0

    .line 1065
    :pswitch_c
    const-string v0, "MOBILE_RX_PACKETS"

    return-object v0

    .line 1064
    :pswitch_d
    const-string v0, "BLUETOOTH_TX_BYTES"

    return-object v0

    .line 1063
    :pswitch_e
    const-string v0, "BLUETOOTH_RX_BYTES"

    return-object v0

    .line 1062
    :pswitch_f
    const-string v0, "WIFI_TX_BYTES"

    return-object v0

    .line 1061
    :pswitch_10
    const-string v0, "WIFI_RX_BYTES"

    return-object v0

    .line 1060
    :pswitch_11
    const-string v0, "MOBILE_TX_BYTES"

    return-object v0

    .line 1059
    :pswitch_12
    const-string v0, "MOBILE_RX_BYTES"

    return-object v0

    .line 1058
    :pswitch_13
    const-string v0, "COUNT_TOUCH_USER_ACTIVITY"

    return-object v0

    .line 1057
    :pswitch_14
    const-string v0, "COUNT_BUTTON_USER_ACTIVITY"

    return-object v0

    .line 1056
    :pswitch_15
    const-string v0, "COUNT_OTHER_USER_ACTIVITY"

    return-object v0

    .line 1055
    :pswitch_16
    const-string v0, "TIMER_VIBRATOR"

    return-object v0

    .line 1054
    :pswitch_17
    const-string v0, "TIME_MS_PROCESS_STATE_CACHED"

    return-object v0

    .line 1053
    :pswitch_18
    const-string v0, "TIME_MS_PROCESS_STATE_BACKGROUND"

    return-object v0

    .line 1052
    :pswitch_19
    const-string v0, "TIME_MS_PROCESS_STATE_FOREGROUND"

    return-object v0

    .line 1051
    :pswitch_1a
    const-string v0, "TIME_MS_PROCESS_STATE_TOP_SLEEPING"

    return-object v0

    .line 1050
    :pswitch_1b
    const-string v0, "TIME_MS_PROCESS_STATE_FOREGROUND_SERVICE"

    return-object v0

    .line 1049
    :pswitch_1c
    const-string v0, "TIME_MS_PROCESS_STATE_TOP"

    return-object v0

    .line 1048
    :pswitch_1d
    const-string v0, "TIMER_BLUETOOTH_SCAN"

    return-object v0

    .line 1047
    :pswitch_1e
    const-string v0, "TIMER_FOREGROUND_ACTIVITY"

    return-object v0

    .line 1046
    :pswitch_1f
    const-string v0, "TIME_US_CAMERA"

    return-object v0

    .line 1045
    :pswitch_20
    const-string v0, "TIME_US_FLASHLIGHT"

    return-object v0

    .line 1044
    :pswitch_21
    const-string v0, "TIMER_VIDEO"

    return-object v0

    .line 1043
    :pswitch_22
    const-string v0, "TIMER_AUDIO"

    return-object v0

    .line 1042
    :pswitch_23
    const-string v0, "TIME_MS_WIFI_BATCHED_SCAN"

    return-object v0

    .line 1041
    :pswitch_24
    const-string v0, "TIME_MS_WIFI_MULTICAST"

    return-object v0

    .line 1040
    :pswitch_25
    const-string v0, "TIME_US_WIFI_SCAN"

    return-object v0

    .line 1039
    :pswitch_26
    const-string v0, "COUNT_WIFI_SCAN"

    return-object v0

    .line 1038
    :pswitch_27
    const-string v0, "TIME_MS_WIFI_FULL_LOCK"

    return-object v0

    .line 1037
    :pswitch_28
    const-string v0, "TIME_MS_WIFI_RUNNING"

    return-object v0

    .line 1036
    :pswitch_29
    const-string v0, "CONTROLLER_MODEM"

    return-object v0

    .line 1035
    :pswitch_2a
    const-string v0, "CONTROLLER_BLUETOOTH"

    return-object v0

    .line 1034
    :pswitch_2b
    const-string v0, "CONTROLLER_WIFI"

    return-object v0

    .line 1033
    :pswitch_2c
    const-string v0, "COUNT_WAKEUP_ALARMS"

    return-object v0

    .line 1032
    :pswitch_2d
    const-string v0, "TIME_MS_BACKGROUND_WAKELOCK"

    return-object v0

    .line 1031
    :pswitch_2e
    const-string v0, "TIME_MS_TOTAL_WAKELOCK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist intKeyToWakeStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # I

    .line 1083
    sparse-switch p1, :sswitch_data_0

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WAKE_TYPE_UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1087
    :sswitch_0
    const-string v0, "WAKE_TYPE_DRAW"

    return-object v0

    .line 1086
    :sswitch_1
    const-string v0, "WAKE_TYPE_WINDOW"

    return-object v0

    .line 1084
    :sswitch_2
    const-string v0, "WAKE_TYPE_FULL"

    return-object v0

    .line 1085
    :sswitch_3
    const-string v0, "WAKE_TYPE_PARTIAL"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method private static blacklist writeIntParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "TT;>;)V"
        }
    .end annotation

    .line 620
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;TT;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 621
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 623
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 624
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private blacklist writeParcelableCpuClusterSpeedTimes(Landroid/os/Parcel;[[J)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "cpuClusterSpeedTimesUs"    # [[J

    .line 702
    array-length v0, p2

    .line 703
    .local v0, "cluster":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 704
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 705
    .local v4, "speedTimes":[J
    array-length v5, v4

    .line 706
    .local v5, "step":I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 707
    array-length v6, v4

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-wide v8, v4, v7

    .line 708
    .local v8, "speedTime":J
    invoke-virtual {p1, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 707
    .end local v8    # "speedTime":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 704
    .end local v4    # "speedTimes":[J
    .end local v5    # "step":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 711
    :cond_1
    return-void
.end method

.method private static blacklist writeParcelableLongArrayMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 7
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "[J>;)V"
        }
    .end annotation

    .line 577
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;[J>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 578
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 580
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 582
    .local v2, "array":[J
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    array-length v3, v2

    .line 583
    .local v3, "length":I
    :goto_1
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v3, :cond_1

    .line 585
    aget-wide v5, v2, v4

    invoke-virtual {p0, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 584
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 579
    .end local v2    # "array":[J
    .end local v3    # "length":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private static blacklist writeParcelableLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 547
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 548
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 550
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 4
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 632
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 633
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 635
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 634
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static blacklist writeParcelableMapMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V
    .locals 6
    .param p0, "out"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 668
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 669
    .local v0, "NJC":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    const/4 v1, 0x0

    .local v1, "ijc":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 671
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 673
    .local v2, "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 674
    .local v3, "NT":I
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    const/4 v4, 0x0

    .local v4, "it":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 676
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 675
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 670
    .end local v2    # "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "NT":I
    .end local v4    # "it":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 680
    .end local v1    # "ijc":I
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist addPkg(Landroid/os/BatteryStats$Uid$Pkg;I)V
    .locals 7
    .param p1, "pkg"    # Landroid/os/BatteryStats$Uid$Pkg;
    .param p2, "which"    # I

    .line 491
    const-wide/16 v0, 0x0

    .line 493
    .local v0, "totalAlarmCounts":J
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 494
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    .line 495
    .local v4, "counter":Landroid/os/BatteryStats$Counter;
    if-eqz v4, :cond_0

    .line 496
    invoke-virtual {v4, p2}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 498
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v4    # "counter":Landroid/os/BatteryStats$Counter;
    :cond_0
    goto :goto_0

    .line 499
    :cond_1
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 500
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlarmCounts()J
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 865
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getBackgroundWakelockTimeMs()J
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 822
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getCameraTurnedOnTimeUs()J
    .locals 2

    .line 912
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 915
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getCpuActiveTime()J
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 768
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getCpuClusterTimes()[J
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public whitelist getFlashlightTurnedOnTimeUs()J
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 902
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getJobCompletionMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mJobCompletionMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getJobMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mJobMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getMobileBytes()[J
    .locals 6

    .line 925
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v3, 0x1d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    new-array v0, v2, [J

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0

    .line 928
    :cond_0
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public whitelist getMobilePackets()[J
    .locals 6

    .line 938
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v3, 0x23

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    new-array v0, v2, [J

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0

    .line 941
    :cond_0
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public whitelist getMobileRadioActive()Landroid/os/health/TimerStat;
    .locals 5

    .line 951
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    new-instance v0, Landroid/os/health/TimerStat;

    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v0

    .line 954
    :cond_0
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v0
.end method

.method public whitelist getScreenBrightnessTime(I)J
    .locals 2
    .param p1, "brightnessBin"    # I

    .line 886
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0

    .line 887
    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getSensorMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getSyncMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/health/TimerStat;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mSyncMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public whitelist getSystemCpuTimeUs()J
    .locals 2

    .line 739
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 742
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTimeAtCpuSpeed(II)J
    .locals 2
    .param p1, "cluster"    # I
    .param p2, "step"    # I

    .line 752
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 753
    aget-wide v0, v0, p2

    return-wide v0

    .line 755
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getTotalWakelockTimeMs()J
    .locals 2

    .line 806
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 809
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getUserCpuTimeUs()J
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 729
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getWakelockTimer(I)Landroid/os/health/TimerStat;
    .locals 4
    .param p1, "type"    # I

    .line 793
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/health/TimerStat;

    return-object v0

    .line 796
    :cond_0
    new-instance v0, Landroid/os/health/TimerStat;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v0
.end method

.method public whitelist getWifiBatchedScanTime(I)J
    .locals 2
    .param p1, "bin"    # I

    .line 1021
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1022
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1024
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getWifiBytes()[J
    .locals 6

    .line 964
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v3, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    new-array v0, v2, [J

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0

    .line 967
    :cond_0
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public whitelist getWifiPackets()[J
    .locals 6

    .line 977
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v3, 0x25

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    new-array v0, v2, [J

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0

    .line 980
    :cond_0
    new-array v0, v2, [J

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public whitelist getWifiRunningTime()J
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 993
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public whitelist getWifiScanTime()Landroid/os/health/TimerStat;
    .locals 6

    .line 1003
    const/4 v0, 0x0

    .line 1004
    .local v0, "count":I
    const-wide/16 v1, 0x0

    .line 1005
    .local v1, "time":J
    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1006
    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 1008
    :cond_0
    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1009
    iget-object v3, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1011
    :cond_1
    new-instance v3, Landroid/os/health/TimerStat;

    invoke-direct {v3, v0, v1, v2}, Landroid/os/health/TimerStat;-><init>(IJ)V

    return-object v3
.end method

.method public whitelist initFromUid(Landroid/os/BatteryStats$Uid;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/BatteryStatsImpl;JI)Lcom/android/internal/os/UidSipper;
    .locals 29
    .param p1, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p2, "powerProfile"    # Lcom/android/internal/os/PowerProfile;
    .param p3, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p4, "elapsedRealtimeMs"    # J
    .param p6, "which"    # I

    .line 156
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p4

    move/from16 v12, p6

    if-eqz v8, :cond_12

    .line 163
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v15, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/util/Map$Entry;

    .line 164
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 167
    .local v4, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    invoke-virtual {v4, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v17

    .line 168
    .local v17, "timer":Landroid/os/BatteryStats$Timer;
    const/4 v1, 0x1

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object/from16 v2, v17

    move-object v6, v4

    .end local v4    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v6, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    move-wide/from16 v4, p4

    move-object v14, v6

    .end local v6    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .local v14, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(ILandroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 171
    invoke-virtual {v14, v15}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 172
    .end local v17    # "timer":Landroid/os/BatteryStats$Timer;
    .local v15, "timer":Landroid/os/BatteryStats$Timer;
    const/4 v1, 0x0

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(ILandroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 175
    const/4 v0, 0x2

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 176
    const/4 v1, 0x2

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(ILandroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 179
    const/16 v0, 0x12

    invoke-virtual {v14, v0}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v15

    .line 180
    const/16 v1, 0x12

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-object v2, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(ILandroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 181
    .end local v14    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    goto :goto_0

    .line 182
    .end local v15    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v13

    .line 183
    .local v13, "aggTimer":Landroid/os/BatteryStats$Timer;
    const-wide/16 v0, 0x0

    .line 184
    .local v0, "totalWakelockTimeMs":J
    const-wide/16 v2, 0x0

    .line 185
    .local v2, "bgWakelockTimeMs":J
    const-wide/16 v16, 0x0

    if-eqz v13, :cond_2

    .line 186
    invoke-virtual {v13, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    .line 187
    invoke-virtual {v13}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    .line 188
    .local v4, "subTimer":Landroid/os/BatteryStats$Timer;
    if-nez v4, :cond_1

    move-wide/from16 v19, v16

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v10, v11}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v19

    :goto_1
    move-wide/from16 v2, v19

    move-wide v4, v0

    goto :goto_2

    .line 185
    .end local v4    # "subTimer":Landroid/os/BatteryStats$Timer;
    :cond_2
    move-wide v4, v0

    .line 190
    .end local v0    # "totalWakelockTimeMs":J
    .local v4, "totalWakelockTimeMs":J
    :goto_2
    iget-object v0, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-direct {v7, v15, v4, v5, v0}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 191
    iget-object v0, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-direct {v7, v6, v2, v3, v0}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 195
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/Map$Entry;

    .line 196
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/BatteryStats$Timer;

    iget-object v0, v7, Lcom/android/internal/os/UidSipper;->mSyncMap:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v22, v2

    .end local v2    # "bgWakelockTimeMs":J
    .local v22, "bgWakelockTimeMs":J
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-wide/from16 v20, v4

    .end local v4    # "totalWakelockTimeMs":J
    .local v20, "totalWakelockTimeMs":J
    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(Ljava/lang/String;Landroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 197
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    move-wide/from16 v4, v20

    move-wide/from16 v2, v22

    const/4 v6, 0x1

    goto :goto_3

    .line 201
    .end local v20    # "totalWakelockTimeMs":J
    .end local v22    # "bgWakelockTimeMs":J
    .restart local v2    # "bgWakelockTimeMs":J
    .restart local v4    # "totalWakelockTimeMs":J
    :cond_3
    move-wide/from16 v22, v2

    move-wide/from16 v20, v4

    .end local v2    # "bgWakelockTimeMs":J
    .end local v4    # "totalWakelockTimeMs":J
    .restart local v20    # "totalWakelockTimeMs":J
    .restart local v22    # "bgWakelockTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Ljava/util/Map$Entry;

    .line 202
    .restart local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/BatteryStats$Timer;

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mJobMap:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(Ljava/lang/String;Landroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 203
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    goto :goto_4

    .line 205
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 206
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseIntArray;

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mJobCompletionMap:Landroid/util/ArrayMap;

    invoke-direct {v7, v2, v3, v4}, Lcom/android/internal/os/UidSipper;->addJob(Ljava/lang/String;Landroid/util/SparseIntArray;Landroid/util/ArrayMap;)V

    .line 207
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    goto :goto_5

    .line 210
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v14

    .line 211
    .local v14, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 212
    .local v6, "N":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_6
    if-ge v4, v6, :cond_6

    .line 213
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v19

    .line 214
    .local v19, "sensorId":I
    invoke-virtual {v14, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Sensor;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v25, v4

    .end local v4    # "i":I
    .local v25, "i":I
    move-wide/from16 v4, p4

    move/from16 v26, v6

    .end local v6    # "N":I
    .local v26, "N":I
    move/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/UidSipper;->addTimer(ILandroid/os/BatteryStats$Timer;Landroid/util/ArrayMap;JI)V

    .line 212
    .end local v19    # "sensorId":I
    add-int/lit8 v4, v25, 0x1

    move/from16 v6, v26

    .end local v25    # "i":I
    .restart local v4    # "i":I
    goto :goto_6

    .end local v26    # "N":I
    .restart local v6    # "N":I
    :cond_6
    move/from16 v25, v4

    move/from16 v26, v6

    .line 219
    .end local v4    # "i":I
    .end local v6    # "N":I
    .restart local v26    # "N":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v7, v2, v12}, Lcom/android/internal/os/UidSipper;->addPkg(Landroid/os/BatteryStats$Uid$Pkg;I)V

    .line 221
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    goto :goto_7

    .line 223
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    .line 224
    .local v0, "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    const/4 v1, 0x4

    if-eqz v0, :cond_9

    .line 225
    new-array v3, v1, [J

    .line 227
    .local v3, "values":[J
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    aput-wide v4, v3, v15

    .line 229
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    const/4 v6, 0x1

    aput-wide v4, v3, v6

    .line 231
    const-wide/16 v4, 0x0

    .line 232
    .local v4, "sum":J
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v6

    array-length v15, v6

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v15, :cond_8

    aget-object v2, v6, v1

    .line 233
    .local v2, "counter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v2, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v27

    add-long v4, v4, v27

    .line 232
    .end local v2    # "counter":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 235
    :cond_8
    const/4 v1, 0x2

    aput-wide v4, v3, v1

    .line 237
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v1

    const/4 v6, 0x3

    aput-wide v1, v3, v6

    .line 238
    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-direct {v7, v6, v3, v1}, Lcom/android/internal/os/UidSipper;->addLongArray(I[JLandroid/util/ArrayMap;)V

    .line 259
    .end local v3    # "values":[J
    .end local v4    # "sum":J
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_b

    .line 261
    const/4 v2, 0x4

    new-array v2, v2, [J

    .line 263
    .local v2, "values":[J
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    .line 265
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    .line 267
    const-wide/16 v3, 0x0

    .line 268
    .local v3, "sum":J
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v5

    array-length v6, v5

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v6, :cond_a

    aget-object v1, v5, v15

    .line 269
    .local v1, "counter":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v1, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v27

    add-long v3, v3, v27

    .line 268
    .end local v1    # "counter":Landroid/os/BatteryStats$LongCounter;
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 271
    :cond_a
    const/4 v1, 0x2

    aput-wide v3, v2, v1

    .line 273
    invoke-virtual {v0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v5

    const/4 v1, 0x3

    aput-wide v5, v2, v1

    .line 274
    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    const/4 v5, 0x5

    invoke-direct {v7, v5, v2, v1}, Lcom/android/internal/os/UidSipper;->addLongArray(I[JLandroid/util/ArrayMap;)V

    .line 277
    .end local v2    # "values":[J
    .end local v3    # "sum":J
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v1

    .line 278
    .local v1, "flashlightTurnedOnTimer":Landroid/os/BatteryStats$Timer;
    const/16 v2, 0xe

    const-wide/16 v3, 0x3e8

    if-nez v1, :cond_c

    move-wide/from16 v5, v16

    goto :goto_a

    :cond_c
    mul-long v5, v10, v3

    invoke-virtual {v1, v5, v6, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    :goto_a
    iget-object v15, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-direct {v7, v2, v5, v6, v15}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 279
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v2

    .line 280
    .local v2, "cameraTurnedOnTimer":Landroid/os/BatteryStats$Timer;
    if-nez v2, :cond_d

    goto :goto_b

    :cond_d
    mul-long v5, v10, v3

    invoke-virtual {v2, v5, v6, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    :goto_b
    move-wide/from16 v5, v16

    iget-object v15, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    const/16 v3, 0xf

    invoke-direct {v7, v3, v5, v6, v15}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 320
    const/16 v3, 0x1c

    .line 321
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 320
    invoke-direct {v7, v3, v5, v6, v4}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 323
    const/16 v3, 0x1d

    .line 324
    const/4 v4, 0x1

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 323
    invoke-direct {v7, v3, v5, v6, v4}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 326
    const/16 v3, 0x22

    .line 327
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v6, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 326
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 329
    const/16 v3, 0x23

    .line 330
    const/4 v4, 0x1

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v6, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 329
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 332
    const/16 v3, 0x29

    .line 333
    invoke-virtual {v8, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 332
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 335
    const/16 v3, 0x2a

    .line 336
    invoke-virtual {v8, v12}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v4

    iget-object v6, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 335
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 340
    const/16 v3, 0x1e

    .line 341
    const/4 v4, 0x2

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 340
    invoke-direct {v7, v3, v5, v6, v4}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 343
    const/16 v3, 0x1f

    .line 344
    const/4 v4, 0x3

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v5

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 343
    invoke-direct {v7, v3, v5, v6, v4}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 346
    const/16 v3, 0x24

    .line 347
    const/4 v4, 0x2

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v6, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 346
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 349
    const/16 v3, 0x25

    .line 350
    const/4 v4, 0x3

    invoke-virtual {v8, v4, v12}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v4

    iget-object v6, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 349
    invoke-direct {v7, v3, v4, v5, v6}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 352
    const/4 v3, 0x6

    move-object v6, v0

    move-object v15, v1

    const-wide/16 v4, 0x3e8

    .end local v0    # "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v1    # "flashlightTurnedOnTimer":Landroid/os/BatteryStats$Timer;
    .local v6, "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    .local v15, "flashlightTurnedOnTimer":Landroid/os/BatteryStats$Timer;
    mul-long v0, v10, v4

    .line 353
    invoke-virtual {v8, v0, v1, v12}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v0

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 352
    invoke-direct {v7, v3, v0, v1, v4}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 355
    const-wide/16 v3, 0x3e8

    mul-long v0, v10, v3

    .line 356
    invoke-virtual {v8, v0, v1, v12}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v0

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 355
    const/4 v4, 0x7

    invoke-direct {v7, v4, v0, v1, v3}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 358
    const/16 v0, 0x8

    .line 359
    invoke-virtual {v8, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v1

    int-to-long v3, v1

    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 358
    invoke-direct {v7, v0, v3, v4, v1}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 361
    const-wide/16 v3, 0x3e8

    mul-long v0, v10, v3

    .line 362
    invoke-virtual {v8, v0, v1, v12}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    iget-object v5, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 361
    const/16 v3, 0x9

    invoke-direct {v7, v3, v0, v1, v5}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 364
    const-wide/16 v3, 0x3e8

    mul-long v0, v10, v3

    .line 365
    invoke-virtual {v8, v0, v1, v12}, Landroid/os/BatteryStats$Uid;->getWifiMulticastTime(JI)J

    move-result-wide v0

    iget-object v3, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 364
    const/16 v4, 0xa

    invoke-direct {v7, v4, v0, v1, v3}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 367
    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 368
    .local v1, "times":[J
    const/4 v3, 0x0

    .local v3, "bin":I
    :goto_c
    if-ge v3, v0, :cond_e

    .line 369
    move-object v0, v13

    move-object/from16 v16, v14

    const-wide/16 v4, 0x3e8

    .end local v13    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .local v0, "aggTimer":Landroid/os/BatteryStats$Timer;
    .local v16, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    mul-long v13, v10, v4

    invoke-virtual {v8, v3, v13, v14, v12}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 368
    add-int/lit8 v3, v3, 0x1

    move-object v13, v0

    move-object/from16 v14, v16

    const/4 v0, 0x5

    goto :goto_c

    .end local v0    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v16    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v13    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .restart local v14    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    :cond_e
    move-object v0, v13

    move-object/from16 v16, v14

    .line 371
    .end local v3    # "bin":I
    .end local v13    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .restart local v0    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .restart local v16    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    const/16 v3, 0xb

    iget-object v4, v7, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-direct {v7, v3, v1, v4}, Lcom/android/internal/os/UidSipper;->addLongArray(I[JLandroid/util/ArrayMap;)V

    .line 388
    const/4 v3, 0x5

    new-array v4, v3, [J

    .line 389
    .local v4, "screenBrightnessTime":[J
    const/4 v5, 0x0

    .local v5, "bin":I
    :goto_d
    if-ge v5, v3, :cond_f

    .line 390
    move-object/from16 v18, v0

    move-object/from16 v17, v1

    const-wide/16 v13, 0x3e8

    .end local v0    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v1    # "times":[J
    .local v17, "times":[J
    .local v18, "aggTimer":Landroid/os/BatteryStats$Timer;
    mul-long v0, v10, v13

    move-object/from16 v3, p3

    invoke-virtual {v3, v5, v0, v1, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v0

    aput-wide v0, v4, v5

    .line 389
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    const/4 v3, 0x5

    goto :goto_d

    .end local v17    # "times":[J
    .end local v18    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .restart local v0    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .restart local v1    # "times":[J
    :cond_f
    move-object/from16 v3, p3

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    .line 392
    .end local v0    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v1    # "times":[J
    .end local v5    # "bin":I
    .restart local v17    # "times":[J
    .restart local v18    # "aggTimer":Landroid/os/BatteryStats$Timer;
    const/16 v0, 0x28

    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v4, v1}, Lcom/android/internal/os/UidSipper;->addLongArray(I[JLandroid/util/ArrayMap;)V

    .line 395
    const/16 v0, 0x2b

    .line 396
    invoke-virtual {v8, v12}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v13

    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 395
    invoke-direct {v7, v0, v13, v14, v1}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 398
    const/16 v0, 0x2c

    .line 399
    invoke-virtual {v8, v12}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v13

    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    .line 398
    invoke-direct {v7, v0, v13, v14, v1}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 401
    if-eqz v9, :cond_11

    .line 403
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v0

    .line 404
    .local v0, "cluster":I
    new-array v1, v0, [[J

    iput-object v1, v7, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    .line 405
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_11

    .line 406
    invoke-virtual {v9, v1}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v5

    .line 407
    .local v5, "step":I
    iget-object v13, v7, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    new-array v14, v5, [J

    aput-object v14, v13, v1

    .line 408
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_f
    if-ge v13, v5, :cond_10

    .line 409
    iget-object v14, v7, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    aget-object v14, v14, v1

    invoke-virtual {v8, v1, v13, v12}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v24

    aput-wide v24, v14, v13

    .line 408
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 405
    .end local v5    # "step":I
    .end local v13    # "j":I
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 413
    .end local v0    # "cluster":I
    .end local v1    # "i":I
    :cond_11
    const/16 v0, 0x2d

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getCpuActiveTime()J

    move-result-wide v13

    iget-object v1, v7, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v13, v14, v1}, Lcom/android/internal/os/UidSipper;->addLong(IJLandroid/util/ArrayMap;)V

    .line 414
    const/16 v0, 0x2e

    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Uid;->getCpuClusterTimes()[J

    move-result-object v1

    iget-object v5, v7, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-direct {v7, v0, v1, v5}, Lcom/android/internal/os/UidSipper;->addLongArray(I[JLandroid/util/ArrayMap;)V

    goto :goto_10

    .line 156
    .end local v2    # "cameraTurnedOnTimer":Landroid/os/BatteryStats$Timer;
    .end local v4    # "screenBrightnessTime":[J
    .end local v6    # "controller":Landroid/os/BatteryStats$ControllerActivityCounter;
    .end local v15    # "flashlightTurnedOnTimer":Landroid/os/BatteryStats$Timer;
    .end local v16    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v17    # "times":[J
    .end local v18    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v20    # "totalWakelockTimeMs":J
    .end local v22    # "bgWakelockTimeMs":J
    .end local v26    # "N":I
    :cond_12
    move-object/from16 v3, p3

    .line 416
    :goto_10
    return-object v7
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 118
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mSyncMap:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mJobMap:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 120
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mWakeTimers:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeIntParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 121
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mSensorMap:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeIntParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mTimers:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeIntParcelableMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mJobCompletionMap:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeParcelableMapMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongs:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeParcelableLongsMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 125
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mLongArrays:Landroid/util/ArrayMap;

    invoke-static {p1, v0}, Lcom/android/internal/os/UidSipper;->writeParcelableLongArrayMap(Landroid/os/Parcel;Landroid/util/ArrayMap;)V

    .line 127
    iget-object v0, p0, Lcom/android/internal/os/UidSipper;->mCpuClusterSpeedTimesUs:[[J

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/UidSipper;->writeParcelableCpuClusterSpeedTimes(Landroid/os/Parcel;[[J)V

    .line 128
    return-void
.end method
