.class public Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;
.super Ljava/lang/Object;
.source "OplusEventCacheShuffle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$CacheLogHandler;,
        Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;
    }
.end annotation


# static fields
.field private static final blacklist MAX_COUNT:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "OplusEventCacheShuffle"

.field private static blacklist sInstance:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;


# instance fields
.field private blacklist mCacheLogThread:Landroid/os/HandlerThread;

.field private blacklist mCb:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCb(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mCb:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmList(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$muploadAllMsg(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->uploadAllMsg(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->sInstance:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mList:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$1;-><init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "OplusCacheLogThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mCacheLogThread:Landroid/os/HandlerThread;

    .line 52
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 53
    new-instance v1, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$CacheLogHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mCacheLogThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$CacheLogHandler;-><init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v2, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    new-instance v0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$2;-><init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mCb:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$IEventCacheCb;

    .line 69
    return-void
.end method

.method private blacklist checkUpload()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;
    .locals 2

    .line 72
    const-class v0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->sInstance:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    if-nez v1, :cond_0

    .line 74
    new-instance v1, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    invoke-direct {v1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->sInstance:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    .line 76
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->sInstance:Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist uploadAllMsg(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle$3;-><init>(Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void
.end method


# virtual methods
.method public blacklist addEvent(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-direct {p0}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->checkUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "max count"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CriticalLog/OplusEventCacheShuffle;->uploadAllMsg(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 112
    const-string v0, "OplusEventCacheShuffle"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
