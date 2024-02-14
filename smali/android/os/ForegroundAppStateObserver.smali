.class Landroid/os/ForegroundAppStateObserver;
.super Ljava/lang/Object;
.source "ForegroundAppStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ForegroundAppStateObserver$StateChangeObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_PRIVATE:Z

.field private static final blacklist DELAY_TIME_MILLIS:J = 0x7d0L

.field private static final blacklist FOREGROUND_OBS_SWITCH:Ljava/lang/String; = "persist.onetrace.foreground_obs"

.field private static final blacklist NOTIFY_DELAY_ID:I = 0x22

.field private static final blacklist NOTIFY_DELAY_TIME:J = 0x2eeL

.field private static final blacklist PERSIST_KEEP_FOREGROUND_PROCESS_LIST:[Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OneTrace:ForegroundObs"


# instance fields
.field private final blacklist mForegroundActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mObserver:Landroid/os/ForegroundAppStateObserver$StateChangeObserver;

.field private final blacklist mWorker:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$h7tVWPzzPD5X2yTtd_YJpoNO6SA(Landroid/os/ForegroundAppStateObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ForegroundAppStateObserver;->registerLifecycleCallback()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForegroundActivitySet(Landroid/os/ForegroundAppStateObserver;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/os/ForegroundAppStateObserver;->mForegroundActivitySet:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWorker(Landroid/os/ForegroundAppStateObserver;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/os/ForegroundAppStateObserver;->mWorker:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyChange(Landroid/os/ForegroundAppStateObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ForegroundAppStateObserver;->notifyChange()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 19
    const-string v0, "persist.onetrace.logtag"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/ForegroundAppStateObserver;->DEBUG_PRIVATE:Z

    .line 25
    const-string v0, "com.android.systemui"

    const-string v1, "com.android.launcher"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ForegroundAppStateObserver;->PERSIST_KEEP_FOREGROUND_PROCESS_LIST:[Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Handler;Landroid/os/ForegroundAppStateObserver$StateChangeObserver;)V
    .locals 2
    .param p1, "worker"    # Landroid/os/Handler;
    .param p2, "observer"    # Landroid/os/ForegroundAppStateObserver$StateChangeObserver;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/os/ForegroundAppStateObserver;->mForegroundActivitySet:Ljava/util/Set;

    .line 39
    iput-object p1, p0, Landroid/os/ForegroundAppStateObserver;->mWorker:Landroid/os/Handler;

    .line 40
    iput-object p2, p0, Landroid/os/ForegroundAppStateObserver;->mObserver:Landroid/os/ForegroundAppStateObserver$StateChangeObserver;

    .line 42
    const-string v0, "OneTrace:ForegroundObs"

    if-nez p1, :cond_0

    .line 43
    const-string v1, "Skip observing foreground app state, OneTrace is unavailable."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 47
    :cond_0
    invoke-static {}, Landroid/os/ForegroundAppStateObserver;->isFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    sget-boolean v1, Landroid/os/ForegroundAppStateObserver;->DEBUG_PRIVATE:Z

    if-eqz v1, :cond_1

    .line 49
    const-string v1, "Foreground:OBS is disabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void

    .line 54
    :cond_2
    invoke-direct {p0}, Landroid/os/ForegroundAppStateObserver;->registerLifecycleCallback()V

    .line 55
    return-void
.end method

.method private static blacklist isFeatureEnabled()Z
    .locals 2

    .line 133
    const-string v0, "persist.onetrace.foreground_obs"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist notifyChange()V
    .locals 2

    .line 127
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver;->mObserver:Landroid/os/ForegroundAppStateObserver$StateChangeObserver;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/os/ForegroundAppStateObserver;->isForeground()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/os/ForegroundAppStateObserver$StateChangeObserver;->onStateChanged(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method private blacklist registerLifecycleCallback()V
    .locals 6

    .line 64
    const-string v0, "OneTrace:ForegroundObs"

    const-string v1, "Register ActivityLifecycleCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 66
    .local v1, "application":Landroid/app/Application;
    if-eqz v1, :cond_2

    .line 68
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "appProcessName":Ljava/lang/String;
    sget-object v3, Landroid/os/ForegroundAppStateObserver;->PERSIST_KEEP_FOREGROUND_PROCESS_LIST:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Landroid/os/ForegroundAppStateObserver;->mForegroundActivitySet:Ljava/util/Set;

    const-string v4, "persist_foreground"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Persist disable filter for process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Landroid/os/ForegroundAppStateObserver;->mForegroundActivitySet:Ljava/util/Set;

    const-string v4, "system"

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v3, "Persist disable filter for system_server"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    new-instance v3, Landroid/os/ForegroundAppStateObserver$1;

    invoke-direct {v3, p0}, Landroid/os/ForegroundAppStateObserver$1;-><init>(Landroid/os/ForegroundAppStateObserver;)V

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 119
    const-string v3, "Register ActivityLifecycleCallback succeed!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v2    # "appProcessName":Ljava/lang/String;
    goto :goto_0

    .line 121
    :cond_2
    const-string v2, "Register ActivityLifecycleCallback failed, application is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver;->mWorker:Landroid/os/Handler;

    new-instance v2, Landroid/os/ForegroundAppStateObserver$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/os/ForegroundAppStateObserver$$ExternalSyntheticLambda0;-><init>(Landroid/os/ForegroundAppStateObserver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    .line 124
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist isForeground()Z
    .locals 2

    .line 58
    iget-object v0, p0, Landroid/os/ForegroundAppStateObserver;->mForegroundActivitySet:Ljava/util/Set;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object v1, p0, Landroid/os/ForegroundAppStateObserver;->mForegroundActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
