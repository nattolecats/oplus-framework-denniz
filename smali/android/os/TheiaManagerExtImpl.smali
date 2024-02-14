.class public Landroid/os/TheiaManagerExtImpl;
.super Ljava/lang/Object;
.source "TheiaManagerExtImpl.java"

# interfaces
.implements Landroid/os/ITheiaManagerExt;


# static fields
.field private static final blacklist DEBUG_SWITCH:Z

.field private static final blacklist KEY_DEAD_MOMENT:Ljava/lang/String; = "deadMoment"

.field private static final blacklist KEY_LOG_INFO:Ljava/lang/String; = "logInfo"

.field private static final blacklist KEY_LOG_TYPE:Ljava/lang/String; = "logType"

.field private static final blacklist KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final blacklist KEY_PID:Ljava/lang/String; = "pid"

.field private static final blacklist KEY_UID:Ljava/lang/String; = "uid"

.field private static final blacklist THEIA_ABT_IGNORE_TIME_THRESHOLD:J

.field private static final blacklist THEIA_ANR_IGNORE_TIME_THRESHOLD:J

.field private static final blacklist THEIA_APT_IGNORE_TIME_THRESHOLD:J

.field private static final blacklist THEIA_COMMON_IGNORE_TIME_THRESHOLD:J

.field private static final blacklist THEIA_CRASH_IGNORE_TIME_THRESHOLD:J

.field public static final blacklist THEIA_STAMP_EVENTID:Ljava/lang/String; = "010106"

.field private static final blacklist VALUE_ANR_EVENT:Ljava/lang/String; = "ApplicationFGAnr"

.field private static volatile blacklist sInstance:Landroid/os/TheiaManagerExtImpl;

.field private static blacklist sTheiaManager:Landroid/os/TheiaManager;


# instance fields
.field private blacklist mAnrEventRecordStampList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConfigLock:Ljava/lang/Object;

.field private blacklist mTheiaEventConfigName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTheiaEventUploadTime:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/TheiaEventInfo;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Landroid/os/TheiaManagerExtImpl;->THEIA_CRASH_IGNORE_TIME_THRESHOLD:J

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xf

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sput-wide v5, Landroid/os/TheiaManagerExtImpl;->THEIA_ANR_IGNORE_TIME_THRESHOLD:J

    .line 34
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    sput-wide v5, Landroid/os/TheiaManagerExtImpl;->THEIA_ABT_IGNORE_TIME_THRESHOLD:J

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/TheiaManagerExtImpl;->THEIA_APT_IGNORE_TIME_THRESHOLD:J

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroid/os/TheiaManagerExtImpl;->THEIA_COMMON_IGNORE_TIME_THRESHOLD:J

    .line 37
    const-string v0, "persist.theia.user_panic_for_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/TheiaManagerExtImpl;->DEBUG_SWITCH:Z

    .line 48
    invoke-static {}, Landroid/os/TheiaManager;->getInstance()Landroid/os/TheiaManager;

    move-result-object v0

    sput-object v0, Landroid/os/TheiaManagerExtImpl;->sTheiaManager:Landroid/os/TheiaManager;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Landroid/os/TheiaManagerExtImpl;->sInstance:Landroid/os/TheiaManagerExtImpl;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 13
    .param p1, "base"    # Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mConfigLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTime:Landroid/util/ArrayMap;

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Long;

    .line 56
    const-wide/16 v2, 0x602

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v3, 0x702

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mAnrEventRecordStampList:Ljava/util/ArrayList;

    .line 59
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    const-wide/16 v5, 0x601

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-wide v5, Landroid/os/TheiaManagerExtImpl;->THEIA_CRASH_IGNORE_TIME_THRESHOLD:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    sget-wide v7, Landroid/os/TheiaManagerExtImpl;->THEIA_ANR_IGNORE_TIME_THRESHOLD:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    const-wide/16 v9, 0x5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    const-wide/16 v10, 0x701

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    const-wide/16 v5, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-wide v6, Landroid/os/TheiaManagerExtImpl;->THEIA_ABT_IGNORE_TIME_THRESHOLD:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    sget-wide v7, Landroid/os/TheiaManagerExtImpl;->THEIA_APT_IGNORE_TIME_THRESHOLD:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    const-wide/16 v7, 0x302

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    sget-wide v11, Landroid/os/TheiaManagerExtImpl;->THEIA_COMMON_IGNORE_TIME_THRESHOLD:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v8, "appBootTimeoutEvent"

    invoke-virtual {v0, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v5, "activityPauseTimedoutEvent"

    invoke-virtual {v0, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v5, "appAnr"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "uiTimeoutEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v4, "appCrash"

    invoke-virtual {v0, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x101

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "noFocusWindowEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x102

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "transparentWindowEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x103

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "transitionTimeoutEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x104

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "winDrawTimeoutEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x105

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "screenFreezeTimeoutEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v4, 0x301

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "halfWatchdogEvent"

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v4, "launcherCrashEvent"

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v1, "launcherAnrEvent"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v1, "systemuiCrashEvent"

    invoke-virtual {v0, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v1, "systemuiAnrEvent"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x703

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "systemuiUiTimeoutStatusBarEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x704

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "systemuiUiTimeoutWhenUnlockEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0x705

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "systemuiHungWhenUnlockEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-string v1, "eyeFrameworkBlockEvent"

    invoke-virtual {v0, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0xf01

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "powerKeyEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0xf02

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "homeKeyEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0xf03

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "backKeyEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0xf05

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "pointEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    const-wide/16 v1, 0xe01

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "screenShotEvent"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void
.end method

.method private blacklist checkEventReportedFrequent(Landroid/os/TheiaEventInfo;)Z
    .locals 11
    .param p1, "event"    # Landroid/os/TheiaEventInfo;

    .line 198
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {p1}, Landroid/os/TheiaEventInfo;->getTheiaID()J

    move-result-wide v1

    .line 200
    .local v1, "eventId":J
    iget-object v3, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 201
    const-string v3, "ITheiaManagerExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[checkEventUploadFrequent] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not supported."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return v4

    .line 205
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 206
    .local v5, "currentTime":J
    iget-object v3, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTime:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 207
    iget-object v3, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTime:Landroid/util/ArrayMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit v0

    return v4

    .line 211
    :cond_1
    iget-object v3, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTime:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v5, v7

    iget-object v3, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-gtz v3, :cond_2

    .line 212
    const-string v3, "ITheiaManagerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[checkEventUploadFrequent] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " is reported frequently."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x1

    monitor-exit v0

    return v3

    .line 215
    :cond_2
    iget-object v3, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTime:Landroid/util/ArrayMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, p1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    nop

    .end local v1    # "eventId":J
    .end local v5    # "currentTime":J
    monitor-exit v0

    .line 218
    return v4

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist checkEventRepotedEnable(J)Z
    .locals 6
    .param p1, "eventId"    # J

    .line 167
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventConfigName:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "eventConfigName":Ljava/lang/String;
    sget-boolean v1, Landroid/os/TheiaManagerExtImpl;->DEBUG_SWITCH:Z

    const/4 v2, 0x1

    const-string v3, "[checkEventRepotedEnable] "

    const-string v4, "ITheiaManagerExt"

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is allow in debug mode."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v2

    .line 173
    :cond_0
    if-nez v0, :cond_1

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not supported."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v2

    .line 178
    :cond_1
    sget-object v1, Landroid/os/TheiaManagerExtImpl;->TEHIA_RUS_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[checkEventRepotedEnable] The theia rus not contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v5

    .line 183
    :cond_2
    sget-object v1, Landroid/os/TheiaManagerExtImpl;->TEHIA_RUS_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is disable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v5

    .line 188
    :cond_3
    return v2
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/os/ITheiaManagerExt;
    .locals 2
    .param p0, "base"    # Ljava/lang/Object;

    .line 96
    sget-object v0, Landroid/os/TheiaManagerExtImpl;->sInstance:Landroid/os/TheiaManagerExtImpl;

    if-nez v0, :cond_1

    .line 97
    const-class v0, Landroid/os/TheiaManagerExtImpl;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Landroid/os/TheiaManagerExtImpl;->sInstance:Landroid/os/TheiaManagerExtImpl;

    if-nez v1, :cond_0

    .line 99
    new-instance v1, Landroid/os/TheiaManagerExtImpl;

    invoke-direct {v1, p0}, Landroid/os/TheiaManagerExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/os/TheiaManagerExtImpl;->sInstance:Landroid/os/TheiaManagerExtImpl;

    .line 101
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/TheiaManagerExtImpl;->sInstance:Landroid/os/TheiaManagerExtImpl;

    return-object v0
.end method

.method private blacklist recordAnrEventStamp(JJIIJLjava/lang/String;)V
    .locals 3
    .param p1, "eventId"    # J
    .param p3, "timeStamp"    # J
    .param p5, "pid"    # I
    .param p6, "uid"    # I
    .param p7, "logInfo"    # J
    .param p9, "extraInfo"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 223
    .local v0, "logMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "logType"

    const-string v2, "ApplicationFGAnr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deadMoment"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "010106"

    invoke-static {v1, v0}, Landroid/os/OplusManager;->onStamp(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    return-void
.end method


# virtual methods
.method public blacklist getTheiaEventTypeWhenANR(Ljava/lang/String;)J
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string v0, "ITheiaManagerExt"

    const-string v1, "getTheiaEventTypeWhenANR: invaild parament."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-wide/16 v0, -0x1

    return-wide v0

    .line 133
    :cond_0
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "theiaEvt":J
    const-string v2, "com.android.systemui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    const-wide/16 v0, 0x702

    goto :goto_0

    .line 136
    :cond_1
    const-string v2, "com.android.launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const-wide/16 v0, 0x602

    goto :goto_0

    .line 139
    :cond_2
    const-wide/16 v0, 0x3

    .line 141
    :goto_0
    return-wide v0
.end method

.method public blacklist getTheiaEventTypeWhenAppCrash(Ljava/lang/String;)J
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 145
    if-nez p1, :cond_0

    .line 146
    const-string v0, "ITheiaManagerExt"

    const-string v1, "getTheiaEventTypeWhenAppCrash: invaild parament."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-wide/16 v0, -0x1

    return-wide v0

    .line 149
    :cond_0
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "theiaEvt":J
    const-string v2, "com.android.systemui"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const-wide/16 v0, 0x701

    goto :goto_0

    .line 152
    :cond_1
    const-string v2, "com.android.launcher"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const-wide/16 v0, 0x601

    goto :goto_0

    .line 155
    :cond_2
    const-wide/16 v0, 0x5

    .line 157
    :goto_0
    return-wide v0
.end method

.method public blacklist sendEvent(JJIIJLjava/lang/String;)V
    .locals 16
    .param p1, "theiaID"    # J
    .param p3, "timeStamp"    # J
    .param p5, "pid"    # I
    .param p6, "uid"    # I
    .param p7, "logInfo"    # J
    .param p9, "extraInfo"    # Ljava/lang/String;

    .line 108
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/os/TheiaManagerExtImpl;->checkEventRepotedEnable(J)Z

    move-result v1

    const-string v2, "ITheiaManagerExt"

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendEvent] the configuartion of rus not support "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v12, p1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_0
    move-wide/from16 v12, p1

    iget-object v1, v0, Landroid/os/TheiaManagerExtImpl;->mAnrEventRecordStampList:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    invoke-direct/range {p0 .. p9}, Landroid/os/TheiaManagerExtImpl;->recordAnrEventStamp(JJIIJLjava/lang/String;)V

    .line 117
    :cond_1
    new-instance v10, Landroid/os/TheiaLogInfo;

    move-wide/from16 v14, p7

    invoke-direct {v10, v14, v15}, Landroid/os/TheiaLogInfo;-><init>(J)V

    .line 118
    .local v10, "log":Landroid/os/TheiaLogInfo;
    new-instance v1, Landroid/os/TheiaEventInfo;

    move-object v3, v1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p9

    invoke-direct/range {v3 .. v11}, Landroid/os/TheiaEventInfo;-><init>(JJIILandroid/os/TheiaLogInfo;Ljava/lang/String;)V

    .line 120
    .local v1, "event":Landroid/os/TheiaEventInfo;
    invoke-direct {v0, v1}, Landroid/os/TheiaManagerExtImpl;->checkEventReportedFrequent(Landroid/os/TheiaEventInfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendEvent] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reported frequently, then we return."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 125
    :cond_2
    sget-object v2, Landroid/os/TheiaManagerExtImpl;->sTheiaManager:Landroid/os/TheiaManager;

    invoke-virtual {v2, v1}, Landroid/os/TheiaManager;->sendEvent(Landroid/os/TheiaEventInfo;)V

    .line 126
    return-void
.end method

.method public blacklist updateEventUplodFrequest(JJ)V
    .locals 4
    .param p1, "eventId"    # J
    .param p3, "intervalThreshold"    # J

    .line 240
    iget-object v0, p0, Landroid/os/TheiaManagerExtImpl;->mConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/os/TheiaManagerExtImpl;->mTheiaEventUploadTimeThreshold:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
