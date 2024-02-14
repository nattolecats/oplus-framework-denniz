.class public Landroid/os/OplusJankMonitor$LaunchTracker;
.super Ljava/lang/Object;
.source "OplusJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LaunchTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_TIME:I = -0x1

.field private static final blacklist INVALID_TRANSITION_TYPE:I = -0x1

.field private static blacklist sActivityLaunchingIdentify:J

.field private static blacklist sLaunchTracker:Landroid/os/OplusJankMonitor$LaunchTracker;


# instance fields
.field private blacklist oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 32
    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/os/OplusJankMonitor$LaunchTracker;->sActivityLaunchingIdentify:J

    .line 33
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusJankMonitor$LaunchTracker;->sLaunchTracker:Landroid/os/OplusJankMonitor$LaunchTracker;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    return-void
.end method

.method public static blacklist getInstance()Landroid/os/OplusJankMonitor$LaunchTracker;
    .locals 2

    .line 37
    const-class v0, Landroid/os/OplusJankMonitor$LaunchTracker;

    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Landroid/os/OplusJankMonitor$LaunchTracker;->sLaunchTracker:Landroid/os/OplusJankMonitor$LaunchTracker;

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Landroid/os/OplusJankMonitor$LaunchTracker;

    invoke-direct {v1}, Landroid/os/OplusJankMonitor$LaunchTracker;-><init>()V

    sput-object v1, Landroid/os/OplusJankMonitor$LaunchTracker;->sLaunchTracker:Landroid/os/OplusJankMonitor$LaunchTracker;

    .line 41
    :cond_0
    sget-object v1, Landroid/os/OplusJankMonitor$LaunchTracker;->sLaunchTracker:Landroid/os/OplusJankMonitor$LaunchTracker;

    monitor-exit v0

    return-object v1

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getLaunchTransitionType(ZI)I
    .locals 1
    .param p1, "currentTransitionProcessRunning"    # Z
    .param p2, "startResult"    # I

    .line 122
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 123
    if-nez p2, :cond_0

    .line 124
    return v0

    .line 125
    :cond_0
    if-ne p2, v0, :cond_2

    .line 126
    const/4 v0, 0x3

    return v0

    .line 128
    :cond_1
    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 132
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist setLaunchStageTime(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "type"    # Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/OplusJankMonitor;->-$$Nest$smisForegroundApp()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quality"

    invoke-static {v1, v0}, Landroid/os/OplusJankMonitor;->-$$Nest$smlogP(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void

    .line 100
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setLaunchStageTime(Ljava/lang/String;JLjava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "className"    # Ljava/lang/String;
    .param p5, "what"    # I

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "type":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/OplusJankMonitor;->-$$Nest$smisForegroundApp()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    const/16 v1, 0x6e

    const-string v2, "android.app.ActivityThread$H"

    if-ne p5, v1, :cond_1

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    const-string v0, "ActivityThread: bindApplication"

    goto :goto_0

    .line 112
    :cond_1
    const/16 v1, 0x9f

    if-ne p5, v1, :cond_2

    invoke-virtual {p4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const-string v0, "ActivityThread: activityLifecycle"

    goto :goto_0

    .line 114
    :cond_2
    if-nez p5, :cond_3

    const-string v1, "android.view.Choreographer$FrameHandler"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    const-string v0, "ActivityThread: doFrame"

    .line 117
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/OplusJankMonitor$LaunchTracker;->setLaunchStageTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 118
    return-void

    .line 108
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist startLaunchTrace(ZLjava/lang/String;II)V
    .locals 5
    .param p1, "processRunning"    # Z
    .param p2, "shortComponentName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "resultCode"    # I

    .line 87
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 88
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Landroid/os/OplusJankMonitor$LaunchTracker;->sActivityLaunchingIdentify:J

    .line 90
    if-eqz p3, :cond_0

    .line 91
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, p3, v2}, Landroid/os/PerformanceManager;->addTaskTrackPid(IIZ)V

    .line 93
    :cond_0
    new-instance v1, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    sget-wide v2, Landroid/os/OplusJankMonitor$LaunchTracker;->sActivityLaunchingIdentify:J

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;-><init>(Landroid/os/OplusJankMonitor$LaunchTracker;JLjava/lang/String;)V

    iput-object v1, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    .line 94
    invoke-direct {p0, p1, p4}, Landroid/os/OplusJankMonitor$LaunchTracker;->getLaunchTransitionType(ZI)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusLaunchType:J

    .line 96
    :cond_1
    return-void
.end method

.method public blacklist stopLaunchTrace(Ljava/lang/String;IJ)V
    .locals 10
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "timestamp"    # J

    .line 60
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 61
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 62
    :cond_0
    iget-wide v1, v1, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusCurrentTransitionStartTime:J

    sub-long v1, p3, v1

    .line 63
    .local v1, "delay":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-wide/16 v4, -0x1

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    iget-wide v6, v3, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusCurrentTransitionStartTime:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    iget-wide v6, v3, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusLaunchType:J

    cmp-long v3, v6, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    iget-object v3, v3, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mPkgName:Ljava/lang/String;

    .line 66
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    iget-wide v6, v3, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusCurrentTransitionStartTime:J

    sget-wide v8, Landroid/os/OplusJankMonitor$LaunchTracker;->sActivityLaunchingIdentify:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_2

    .line 68
    const/4 v3, 0x1

    invoke-static {v3, p2, v3}, Landroid/os/PerformanceManager;->addTaskTrackPid(IIZ)V

    .line 69
    iget-object v3, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    iget-wide v6, v3, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusLaunchType:J

    const-wide/16 v8, 0x3

    cmp-long v3, v6, v8

    if-eqz v3, :cond_2

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LaunchTime2.0: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    iget-wide v7, v7, Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;->mOplusLaunchType:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "launchContent":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    sget v8, Landroid/os/OplusDebug;->LAUNCH_EXCEPTION_DELAY:I

    int-to-long v8, v8

    cmp-long v8, v1, v8

    if-ltz v8, :cond_1

    .line 74
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Landroid/os/PerformanceManager;->readJankTaskTrack()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "Quality"

    invoke-static {v8, v6}, Landroid/os/OplusJankMonitor;->-$$Nest$smlogP(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v3    # "launchContent":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    sput-wide v4, Landroid/os/OplusJankMonitor$LaunchTracker;->sActivityLaunchingIdentify:J

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/os/OplusJankMonitor$LaunchTracker;->oplusActivityLaunchInfo:Landroid/os/OplusJankMonitor$LaunchTracker$OplusActivityLaunchInfo;

    .line 84
    return-void

    .line 61
    .end local v1    # "delay":J
    :cond_3
    :goto_0
    return-void
.end method
