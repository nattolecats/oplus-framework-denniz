.class public Landroid/os/OplusJankMonitorExtImpl;
.super Ljava/lang/Object;
.source "OplusJankMonitorExtImpl.java"


# static fields
.field private static final blacklist TYPE_ACTIVITYLIFECYCLE:Ljava/lang/String; = "activityLifecycle"

.field private static final blacklist TYPE_ACTIVITYLIFECYCLE_ACTIVITYONSTART:Ljava/lang/String; = "callActivityOnStart"

.field private static final blacklist TYPE_ACTIVITYLIFECYCLE_ACTIVITYRESUME:Ljava/lang/String; = "activityResume"

.field private static final blacklist TYPE_ACTIVITYLIFECYCLE_ACTIVITYSTART:Ljava/lang/String; = "activityStart"

.field private static final blacklist TYPE_ACTIVITYLIFECYCLE_ACTIVITYSTOP:Ljava/lang/String; = "activityPause"

.field private static final blacklist TYPE_ACTIVITYTHREADATTACH:Ljava/lang/String; = "attach"

.field private static final blacklist TYPE_ACTIVITYTHREADMAIN:Ljava/lang/String; = "activityThreadMain"

.field private static final blacklist TYPE_BINDAPPLICATION:Ljava/lang/String; = "bindApplication"

.field private static final blacklist TYPE_BINDAPPLICATION_APPLICATIONCREATE:Ljava/lang/String; = "callApplicationOnCreate"

.field private static final blacklist TYPE_BINDAPPLICATION_LOADZIP:Ljava/lang/String; = "createClassLoader"

.field private static final blacklist TYPE_BINDAPPLICATION_MAKEAPPLICATION:Ljava/lang/String; = "makeApplication"

.field private static final blacklist TYPE_BINDAPPLICATION_OPENDEX:Ljava/lang/String; = "createOrUpdateClassLoaderLocked"

.field private static final blacklist TYPE_DOFRAME:Ljava/lang/String; = "doFrame"

.field private static final blacklist TYPE_VIEW_DRAW:Ljava/lang/String; = "performDraw"

.field private static final blacklist TYPE_VIEW_INFLATE:Ljava/lang/String; = "viewInflate"

.field private static final blacklist TYPE_VIEW_LAYOUT:Ljava/lang/String; = "performLayout"

.field private static final blacklist TYPE_VIEW_MEASURE:Ljava/lang/String; = "performMeasure"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setLaunchStageTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .param p0, "processName"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "startTime"    # J

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 43
    .local v0, "now":J
    sub-long v2, v0, p2

    .line 44
    .local v2, "delay":J
    const-wide v4, 0x7fffffffffffffffL

    .line 45
    .local v4, "thresholdMillis":J
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v6, "viewInflate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "performMeasure"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "activityResume"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "doFrame"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto/16 :goto_1

    :sswitch_4
    const-string v6, "callApplicationOnCreate"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x9

    goto/16 :goto_1

    :sswitch_5
    const-string v6, "makeApplication"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x8

    goto/16 :goto_1

    :sswitch_6
    const-string v6, "bindApplication"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_1

    :sswitch_7
    const-string v6, "createClassLoader"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xc

    goto :goto_1

    :sswitch_8
    const-string v6, "createOrUpdateClassLoaderLocked"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_9
    const-string v6, "callActivityOnStart"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xa

    goto :goto_1

    :sswitch_a
    const-string v6, "activityStart"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_b
    const-string v6, "activityPause"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_c
    const-string v6, "activityThreadMain"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_d
    const-string v6, "attach"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xb

    goto :goto_1

    :sswitch_e
    const-string v6, "performDraw"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xf

    goto :goto_1

    :sswitch_f
    const-string v6, "performLayout"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0xe

    goto :goto_1

    :sswitch_10
    const-string v6, "activityLifecycle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :goto_0
    const/4 v6, -0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 70
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_2

    .line 67
    :pswitch_0
    sget v6, Landroid/os/OplusDebug;->VIEW_DELAY:I

    int-to-long v4, v6

    .line 68
    goto :goto_2

    .line 64
    :pswitch_1
    sget v6, Landroid/os/OplusDebug;->LAUNCH_SECOND_DELAY:I

    int-to-long v4, v6

    .line 65
    goto :goto_2

    .line 51
    :pswitch_2
    sget v6, Landroid/os/OplusDebug;->LAUNCH_DELAY:I

    int-to-long v4, v6

    .line 52
    nop

    .line 73
    :goto_2
    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 74
    invoke-static {}, Landroid/os/OplusJankMonitor$LaunchTracker;->getInstance()Landroid/os/OplusJankMonitor$LaunchTracker;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityThread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p0, v2, v3, v7}, Landroid/os/OplusJankMonitor$LaunchTracker;->setLaunchStageTime(Ljava/lang/String;JLjava/lang/String;)V

    .line 76
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ccfeae5 -> :sswitch_10
        -0x6142fe15 -> :sswitch_f
        -0x584a0fbb -> :sswitch_e
        -0x53e111bb -> :sswitch_d
        -0x453404ae -> :sswitch_c
        -0x3e9e2bd9 -> :sswitch_b
        -0x3e6b8d6d -> :sswitch_a
        -0x36680a8a -> :sswitch_9
        -0x1c0ec233 -> :sswitch_8
        -0xbf862f1 -> :sswitch_7
        0x47b570d3 -> :sswitch_6
        0x515d4682 -> :sswitch_5
        0x63c255ed -> :sswitch_4
        0x6b68cba2 -> :sswitch_3
        0x6e79e01c -> :sswitch_2
        0x734c76bd -> :sswitch_1
        0x73615ba2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist startLaunchTrace(ZLjava/lang/String;II)V
    .locals 1
    .param p0, "processRunning"    # Z
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "resultCode"    # I

    .line 83
    invoke-static {}, Landroid/os/OplusJankMonitor$LaunchTracker;->getInstance()Landroid/os/OplusJankMonitor$LaunchTracker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/os/OplusJankMonitor$LaunchTracker;->startLaunchTrace(ZLjava/lang/String;II)V

    .line 84
    return-void
.end method

.method public static blacklist stopLaunchTrace(Ljava/lang/String;IJ)V
    .locals 1
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "timestamp"    # J

    .line 79
    invoke-static {}, Landroid/os/OplusJankMonitor$LaunchTracker;->getInstance()Landroid/os/OplusJankMonitor$LaunchTracker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/os/OplusJankMonitor$LaunchTracker;->stopLaunchTrace(Ljava/lang/String;IJ)V

    .line 80
    return-void
.end method
