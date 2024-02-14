.class public Landroid/debug/OplusPerfLogkit;
.super Landroid/debug/IDebugLogManager;
.source "OplusPerfLogkit.java"


# static fields
.field private static final blacklist ACTION_SYSTRACE_SCREEN_SHOT:Ljava/lang/String; = "oplus.intent.action.SCREEN_SHOT"

.field private static final blacklist ACTION_TRACEUR_PARAM_PACKAGENAME:Ljava/lang/String; = "from"

.field private static final blacklist ACTION_TRACEUR_PARAM_RESTART_KEY:Ljava/lang/String; = "restart"

.field private static final blacklist ACTION_TRACEUR_START:Ljava/lang/String; = "oplus.intent.action.TRACEUR_START_TRACING"

.field private static final blacklist ACTION_TRACEUR_STOP:Ljava/lang/String; = "oplus.intent.action.TRACEUR_STOP_TRACING"

.field private static final blacklist PACKAGE_FROM_LOGKIT:Ljava/lang/String; = "com.oplus.olc"

.field private static final blacklist PACKAGE_FROM_SCREEN_SHOT:Ljava/lang/String; = "finger.screenshot"

.field private static final blacklist PACKAGE_NAME_TRACEUR:Ljava/lang/String; = "com.android.traceur"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Landroid/debug/OplusPerfLogkit;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mScreenshotReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mTraceIsOn:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpTrace(Landroid/debug/OplusPerfLogkit;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/debug/OplusPerfLogkit;->dumpTrace(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const-class v0, Landroid/debug/OplusPerfLogkit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/debug/OplusPerfLogkit;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Landroid/debug/OplusPerfLogkit;->sInstance:Landroid/debug/OplusPerfLogkit;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Landroid/debug/IDebugLogManager;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/debug/OplusPerfLogkit;->mTraceIsOn:Z

    .line 48
    iput-object p1, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/debug/OplusPerfLogkit$1;

    invoke-direct {v0, p0}, Landroid/debug/OplusPerfLogkit$1;-><init>(Landroid/debug/OplusPerfLogkit;)V

    iput-object v0, p0, Landroid/debug/OplusPerfLogkit;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    return-void
.end method

.method private blacklist dumpTrace(Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.TRACEUR_STOP_TRACING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/4 v1, 0x1

    const-string v2, "restart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 119
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 122
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Landroid/debug/OplusPerfLogkit;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 62
    sget-object v0, Landroid/debug/OplusPerfLogkit;->sInstance:Landroid/debug/OplusPerfLogkit;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Landroid/debug/OplusPerfLogkit;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Landroid/debug/OplusPerfLogkit;->sInstance:Landroid/debug/OplusPerfLogkit;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Landroid/debug/OplusPerfLogkit;

    invoke-direct {v1, p0}, Landroid/debug/OplusPerfLogkit;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/debug/OplusPerfLogkit;->sInstance:Landroid/debug/OplusPerfLogkit;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Landroid/debug/OplusPerfLogkit;->sInstance:Landroid/debug/OplusPerfLogkit;

    return-object v0
.end method

.method private blacklist startTracing(Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;

    .line 129
    iget-object v0, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.TRACEUR_START_TRACING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 135
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private blacklist stopTracing(Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;

    .line 142
    iget-object v0, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.TRACEUR_STOP_TRACING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const/4 v1, 0x0

    const-string v2, "restart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist setLogDump()V
    .locals 2

    .line 107
    sget-object v0, Landroid/debug/OplusPerfLogkit;->TAG:Ljava/lang/String;

    const-string v1, "dump trace, and Open the next round of logging"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "com.oplus.olc"

    invoke-direct {p0, v0}, Landroid/debug/OplusPerfLogkit;->dumpTrace(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public blacklist setLogOff()V
    .locals 2

    .line 94
    sget-object v0, Landroid/debug/OplusPerfLogkit;->TAG:Ljava/lang/String;

    const-string v1, "setLogOff ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v0, "com.oplus.olc"

    invoke-direct {p0, v0}, Landroid/debug/OplusPerfLogkit;->stopTracing(Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/debug/OplusPerfLogkit;->mTraceIsOn:Z

    .line 97
    iget-object v0, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/debug/OplusPerfLogkit;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/debug/OplusPerfLogkit;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    :cond_0
    return-void
.end method

.method public blacklist setLogOn(JLjava/lang/String;)V
    .locals 4
    .param p1, "maxSize"    # J
    .param p3, "param"    # Ljava/lang/String;

    .line 78
    sget-object v0, Landroid/debug/OplusPerfLogkit;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLogOn: maxSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", param = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-boolean v1, p0, Landroid/debug/OplusPerfLogkit;->mTraceIsOn:Z

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "trace is on, no need start again"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_0
    const-string v0, "com.oplus.olc"

    invoke-direct {p0, v0}, Landroid/debug/OplusPerfLogkit;->startTracing(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/debug/OplusPerfLogkit;->mTraceIsOn:Z

    .line 85
    iget-object v0, p0, Landroid/debug/OplusPerfLogkit;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/debug/OplusPerfLogkit;->mScreenshotReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 86
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "oplus.intent.action.SCREEN_SHOT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    :cond_1
    return-void
.end method
