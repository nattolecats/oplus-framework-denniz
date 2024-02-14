.class Landroid/view/FrameSkipReporter$3;
.super Ljava/lang/Object;
.source "FrameSkipReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/FrameSkipReporter;->report(ZJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$currentTime:J

.field final synthetic blacklist val$isAnimation:Z

.field final synthetic blacklist val$processName:Ljava/lang/String;

.field final synthetic blacklist val$skippedFrames:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;JZJ)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroid/view/FrameSkipReporter$3;->val$processName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/view/FrameSkipReporter$3;->val$skippedFrames:J

    iput-boolean p4, p0, Landroid/view/FrameSkipReporter$3;->val$isAnimation:Z

    iput-wide p5, p0, Landroid/view/FrameSkipReporter$3;->val$currentTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 10

    .line 91
    const-string v0, "Choreographer#FrameSkipReporter"

    :try_start_0
    invoke-static {}, Landroid/view/FrameSkipReporter;->-$$Nest$smisForegroundApp()Z

    move-result v1

    .line 92
    .local v1, "isForeground":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/FrameSkipReporter$3;->val$processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") reported "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/view/FrameSkipReporter$3;->val$skippedFrames:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frame(s) skipped(anim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/FrameSkipReporter$3;->val$isAnimation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Landroid/view/FrameSkipReporter;->-$$Nest$sfgetmOAms()Landroid/app/OplusActivityManager;

    move-result-object v2

    iget-wide v3, p0, Landroid/view/FrameSkipReporter$3;->val$currentTime:J

    iget-boolean v5, p0, Landroid/view/FrameSkipReporter$3;->val$isAnimation:Z

    iget-wide v7, p0, Landroid/view/FrameSkipReporter$3;->val$skippedFrames:J

    iget-object v9, p0, Landroid/view/FrameSkipReporter$3;->val$processName:Ljava/lang/String;

    move v6, v1

    invoke-virtual/range {v2 .. v9}, Landroid/app/OplusActivityManager;->reportSkippedFrames(JZZJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "isForeground":Z
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/view/FrameSkipReporter$3;->val$processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to report skipped frames, error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
