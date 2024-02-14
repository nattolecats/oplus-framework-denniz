.class Landroid/view/FrameSkipReporter;
.super Ljava/lang/Object;
.source "FrameSkipReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/FrameSkipReporter$FramePerfReport;
    }
.end annotation


# static fields
.field private static final blacklist PROCESS_STATUS_BACKGROUND:I = 0x0

.field private static final blacklist PROCESS_STATUS_FOREGROUND:I = 0x1

.field private static final blacklist PROCESS_STATUS_UNKNOW:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "Choreographer#FrameSkipReporter"

.field private static blacklist foregroundFlag:I

.field private static blacklist mLastSkipTime:J

.field private static blacklist mOAms:Landroid/app/OplusActivityManager;

.field private static blacklist mPerfDataReporterHandler:Landroid/os/Handler;

.field private static blacklist mPerfDataReporterThread:Landroid/os/HandlerThread;

.field private static blacklist methodLogP:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmOAms()Landroid/app/OplusActivityManager;
    .locals 1

    sget-object v0, Landroid/view/FrameSkipReporter;->mOAms:Landroid/app/OplusActivityManager;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smisForegroundApp()Z
    .locals 1

    invoke-static {}, Landroid/view/FrameSkipReporter;->isForegroundApp()Z

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smlogP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/FrameSkipReporter;->logP(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 16
    const/4 v0, 0x0

    sput-object v0, Landroid/view/FrameSkipReporter;->mPerfDataReporterHandler:Landroid/os/Handler;

    .line 17
    sput-object v0, Landroid/view/FrameSkipReporter;->mPerfDataReporterThread:Landroid/os/HandlerThread;

    .line 18
    const-wide/16 v1, 0x0

    sput-wide v1, Landroid/view/FrameSkipReporter;->mLastSkipTime:J

    .line 19
    sput-object v0, Landroid/view/FrameSkipReporter;->mOAms:Landroid/app/OplusActivityManager;

    .line 26
    const/4 v1, -0x1

    sput v1, Landroid/view/FrameSkipReporter;->foregroundFlag:I

    .line 29
    sput-object v0, Landroid/view/FrameSkipReporter;->methodLogP:Ljava/lang/reflect/Method;

    .line 32
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfDataReporter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/view/FrameSkipReporter;->mPerfDataReporterThread:Landroid/os/HandlerThread;

    .line 33
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 34
    sget-object v0, Landroid/view/FrameSkipReporter;->mPerfDataReporterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Landroid/view/FrameSkipReporter;->mPerfDataReporterHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    sput-object v0, Landroid/view/FrameSkipReporter;->mOAms:Landroid/app/OplusActivityManager;

    .line 36
    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkDuplicate(JJ)Z
    .locals 4
    .param p0, "thisSkipTime"    # J
    .param p2, "diff"    # J

    .line 39
    sget-wide v0, Landroid/view/FrameSkipReporter;->mLastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    add-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    sput-wide p0, Landroid/view/FrameSkipReporter;->mLastSkipTime:J

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isForegroundApp()Z
    .locals 3

    .line 110
    sget v0, Landroid/view/FrameSkipReporter;->foregroundFlag:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 111
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 113
    :cond_1
    return v1
.end method

.method private static blacklist logP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 298
    const-string v0, "Choreographer#FrameSkipReporter"

    sget-object v1, Landroid/view/FrameSkipReporter;->methodLogP:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 300
    :try_start_0
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 301
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "p"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/view/FrameSkipReporter;->methodLogP:Ljava/lang/reflect/Method;

    .line 302
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cls":Ljava/lang/Class;
    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 306
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchMethodException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 303
    :catch_2
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 314
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v0, Landroid/view/FrameSkipReporter;->methodLogP:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 316
    const/4 v1, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 319
    goto :goto_1

    .line 317
    :catch_3
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public static blacklist report(J)V
    .locals 4
    .param p0, "skippedFrames"    # J

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 48
    .local v0, "currentTime":J
    sget-object v2, Landroid/view/FrameSkipReporter;->mPerfDataReporterHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/FrameSkipReporter$1;

    invoke-direct {v3, p0, p1, v0, v1}, Landroid/view/FrameSkipReporter$1;-><init>(JJ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public static blacklist report(ZJ)V
    .locals 10
    .param p0, "isAnimation"    # Z
    .param p1, "skippedFrames"    # J

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 66
    .local v6, "currentTime":J
    sget-object v8, Landroid/view/FrameSkipReporter;->mPerfDataReporterHandler:Landroid/os/Handler;

    new-instance v9, Landroid/view/FrameSkipReporter$2;

    move-object v0, v9

    move-wide v1, p1

    move v3, p0

    move-wide v4, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/FrameSkipReporter$2;-><init>(JZJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    return-void
.end method

.method public static blacklist report(ZJLjava/lang/String;)V
    .locals 11
    .param p0, "isAnimation"    # Z
    .param p1, "skippedFrames"    # J
    .param p3, "processName"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 88
    .local v7, "currentTime":J
    sget-object v9, Landroid/view/FrameSkipReporter;->mPerfDataReporterHandler:Landroid/os/Handler;

    new-instance v10, Landroid/view/FrameSkipReporter$3;

    move-object v0, v10

    move-object v1, p3

    move-wide v2, p1

    move v4, p0

    move-wide v5, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/FrameSkipReporter$3;-><init>(Ljava/lang/String;JZJ)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    return-void
.end method

.method public static blacklist setForebackStatus(Z)V
    .locals 0
    .param p0, "isTopApp"    # Z

    .line 106
    sput p0, Landroid/view/FrameSkipReporter;->foregroundFlag:I

    .line 107
    return-void
.end method
