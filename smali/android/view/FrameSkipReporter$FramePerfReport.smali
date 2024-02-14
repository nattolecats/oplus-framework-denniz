.class Landroid/view/FrameSkipReporter$FramePerfReport;
.super Ljava/lang/Object;
.source "FrameSkipReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FrameSkipReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FramePerfReport"
.end annotation


# static fields
.field public static final blacklist DEBUG:Z

.field private static final blacklist PROP_FORE_PID:Ljava/lang/String; = "debug.junk.process.pid"

.field private static final blacklist SCREEN_ON:Ljava/lang/String; = "sys.oplus.healthinfo.screen"

.field private static final blacklist SKIP_TYPE_CONTINUOUSLY_SKIPPED_LOW:I = 0x1

.field private static final blacklist SKIP_TYPE_CONTINUOUSLY_SKIPPED_MID:I = 0x10

.field private static final blacklist SKIP_TYPE_DISCRETE_SKIP:I = 0x100

.field private static final blacklist SKIP_TYPE_NONE:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "FramePerfReport"

.field private static final blacklist THRESHOLD_CONTINUOUSLY_SKIPPED_LOW_LIMIT_PROP:Ljava/lang/String; = "sys.oplus.healthinfo.con_skip"

.field private static final blacklist THRESHOLD_DISCRETE_SKIPPED_LOW_LIMIT_PROP:Ljava/lang/String; = "sys.oplus.healthinfo.dis_skip"

.field private static final blacklist THRESHOLD_DISCRETE_SPLIT_PROP:Ljava/lang/String; = "sys.oplus.healthinfo.dis_split"

.field private static final blacklist THRESHOLD_MIN_REPORT_SKIPPED_PERCENT_PROP:Ljava/lang/String; = "sys.oplus.healthinfo.percent"

.field private static final blacklist THRESHOLD_TIMEOUT_FORCE_SPLIT:I = 0x2710

.field private static blacklist sContinuouslySkippedLowLimitMs:J

.field private static blacklist sDiscreteSkippedLowLimitMs:J

.field private static blacklist sDiscreteSplitMs:J

.field private static blacklist sMinReportSkippedPercent:F


# instance fields
.field private blacklist collected:Z

.field private blacklist discreteSkipped:I

.field private blacklist endTime:J

.field private blacklist inSkipping:Z

.field private blacklist mFrameIntervalMs:F

.field private blacklist skipType:I

.field private blacklist startTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 119
    const-string v0, "ro.build.release_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    .line 138
    const-wide/16 v0, 0xc8

    sput-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSplitMs:J

    .line 139
    const-wide/16 v0, 0x2bc

    sput-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sContinuouslySkippedLowLimitMs:J

    .line 140
    const-wide/16 v0, 0x3e8

    sput-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSkippedLowLimitMs:J

    .line 141
    const v0, 0x3f19999a    # 0.6f

    sput v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sMinReportSkippedPercent:F

    return-void
.end method

.method public constructor blacklist <init>(J)V
    .locals 3
    .param p1, "mFrameIntervalNanos"    # J

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    .line 148
    iput v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    .line 149
    iput-boolean v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->collected:Z

    .line 152
    long-to-float v0, p1

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->mFrameIntervalMs:F

    .line 154
    sget-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSplitMs:J

    const-string v2, "sys.oplus.healthinfo.dis_split"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSplitMs:J

    .line 155
    sget-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sContinuouslySkippedLowLimitMs:J

    const-string v2, "sys.oplus.healthinfo.con_skip"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sContinuouslySkippedLowLimitMs:J

    .line 156
    sget-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSkippedLowLimitMs:J

    const-string v2, "sys.oplus.healthinfo.dis_skip"

    invoke-static {v2, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSkippedLowLimitMs:J

    .line 157
    sget v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sMinReportSkippedPercent:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-string v2, "sys.oplus.healthinfo.percent"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    sput v0, Landroid/view/FrameSkipReporter$FramePerfReport;->sMinReportSkippedPercent:F

    .line 158
    return-void
.end method

.method public static blacklist debugI(Ljava/lang/String;)V
    .locals 1
    .param p0, "logContent"    # Ljava/lang/String;

    .line 291
    sget-boolean v0, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "FramePerfReport"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_0
    return-void
.end method


# virtual methods
.method blacklist discreteDetect(J)V
    .locals 17
    .param p1, "skipped"    # J

    .line 166
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 167
    .local v3, "curT":J
    invoke-virtual/range {p0 .. p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->isForeground()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    iget-boolean v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    if-eqz v5, :cond_0

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->reportDone()V

    .line 172
    :cond_0
    return-void

    .line 175
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-lez v5, :cond_d

    .line 176
    iget-boolean v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    const-string v6, " end "

    const-string v7, " start "

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_9

    .line 178
    long-to-float v5, v1

    iget v10, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->mFrameIntervalMs:F

    mul-float/2addr v5, v10

    iget-wide v11, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    sub-long v13, v3, v11

    long-to-float v13, v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_3

    .line 182
    sget-boolean v5, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped2.0 exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-float v6, v1

    iget v7, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->mFrameIntervalMs:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    sub-long v6, v3, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    .line 185
    :cond_2
    return-void

    .line 188
    :cond_3
    long-to-float v5, v1

    mul-float/2addr v5, v10

    float-to-long v13, v5

    sub-long v13, v3, v13

    sub-long/2addr v13, v11

    .line 189
    .local v13, "offsetToLastDraw":J
    sget-wide v10, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSplitMs:J

    cmp-long v5, v13, v10

    if-lez v5, :cond_4

    move v5, v8

    goto :goto_0

    :cond_4
    move v5, v9

    .line 190
    .local v5, "split":Z
    :goto_0
    if-nez v5, :cond_6

    iget-wide v10, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    sub-long v10, v3, v10

    const-wide/16 v15, 0x2710

    cmp-long v10, v10, v15

    if-lez v10, :cond_5

    goto :goto_1

    :cond_5
    move v10, v9

    goto :goto_2

    :cond_6
    :goto_1
    move v10, v8

    :goto_2
    move v5, v10

    .line 191
    if-nez v5, :cond_7

    .line 192
    long-to-int v10, v1

    invoke-virtual {v0, v10}, Landroid/view/FrameSkipReporter$FramePerfReport;->validSkip(I)V

    .line 194
    iget v10, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->discreteSkipped:I

    long-to-int v11, v1

    add-int/2addr v10, v11

    iput v10, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->discreteSkipped:I

    .line 195
    iput-wide v3, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    .line 196
    sget-boolean v10, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v10, :cond_9

    .line 197
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped2.0 append "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    goto :goto_3

    .line 201
    :cond_7
    sget-boolean v10, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v10, :cond_8

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped2.0 inskipped split "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    .line 204
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->reportDone()V

    .line 210
    .end local v5    # "split":Z
    .end local v13    # "offsetToLastDraw":J
    :cond_9
    :goto_3
    iget-boolean v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    if-nez v5, :cond_a

    .line 211
    long-to-int v5, v1

    invoke-virtual {v0, v5}, Landroid/view/FrameSkipReporter$FramePerfReport;->validSkip(I)V

    .line 212
    long-to-int v5, v1

    iput v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->discreteSkipped:I

    .line 213
    iget v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->mFrameIntervalMs:F

    long-to-float v10, v1

    mul-float/2addr v5, v10

    float-to-long v10, v5

    sub-long v10, v3, v10

    iput-wide v10, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    .line 214
    iput-wide v3, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    .line 215
    iput v9, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    .line 216
    iput-boolean v9, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->collected:Z

    .line 217
    iput-boolean v8, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    .line 218
    sget-boolean v5, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v5, :cond_a

    .line 219
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped2.0 begin "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    .line 223
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->needReport()Z

    move-result v5

    if-eqz v5, :cond_b

    iget v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    goto :goto_4

    :cond_b
    invoke-virtual/range {p0 .. p2}, Landroid/view/FrameSkipReporter$FramePerfReport;->reportNecessity(J)I

    move-result v5

    :goto_4
    iput v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    .line 224
    sget-boolean v5, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v5, :cond_c

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped skipType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    .line 227
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->reportCollect()V

    goto :goto_5

    .line 230
    :cond_d
    iget-boolean v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    if-eqz v5, :cond_e

    iget-wide v5, v0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    sub-long v5, v3, v5

    sget-wide v7, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSplitMs:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_e

    .line 231
    invoke-virtual/range {p0 .. p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->reportDone()V

    .line 234
    :cond_e
    :goto_5
    return-void
.end method

.method blacklist isForeground()Z
    .locals 2

    .line 281
    const-string v0, "debug.junk.process.pid"

    const/16 v1, -0x3e7

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 282
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 283
    invoke-virtual {p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0
.end method

.method blacklist isScreenOn()Z
    .locals 2

    .line 287
    const-string v0, "sys.oplus.healthinfo.screen"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method blacklist needReport()Z
    .locals 1

    .line 261
    iget v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method blacklist reportCollect()V
    .locals 3

    .line 265
    invoke-virtual {p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->needReport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->collected:Z

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped2.0: collect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->skipType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quality"

    invoke-static {v1, v0}, Landroid/view/FrameSkipReporter;->-$$Nest$smlogP(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->collected:Z

    .line 269
    :cond_0
    return-void
.end method

.method blacklist reportDone()V
    .locals 6

    .line 272
    invoke-virtual {p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->needReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-wide v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    iget-wide v2, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    sub-long/2addr v0, v2

    .line 274
    .local v0, "duration":J
    iget v2, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->discreteSkipped:I

    int-to-float v2, v2

    iget v3, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->mFrameIntervalMs:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 275
    .local v2, "lostTime":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped2.0: done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->discreteSkipped:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Quality"

    invoke-static {v4, v3}, Landroid/view/FrameSkipReporter;->-$$Nest$smlogP(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v0    # "duration":J
    .end local v2    # "lostTime":I
    :cond_0
    invoke-virtual {p0}, Landroid/view/FrameSkipReporter$FramePerfReport;->resetStatus()V

    .line 278
    return-void
.end method

.method blacklist reportNecessity(J)I
    .locals 9
    .param p1, "skipped"    # J

    .line 244
    long-to-float v0, p1

    iget v1, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->mFrameIntervalMs:F

    mul-float/2addr v0, v1

    sget-wide v2, Landroid/view/FrameSkipReporter$FramePerfReport;->sContinuouslySkippedLowLimitMs:J

    long-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 245
    const/16 v0, 0x10

    return v0

    .line 248
    :cond_0
    iget v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->discreteSkipped:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 249
    .local v0, "lostTime":I
    iget-wide v1, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->endTime:J

    iget-wide v3, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->startTime:J

    sub-long/2addr v1, v3

    .line 250
    .local v1, "duration":J
    int-to-double v3, v0

    long-to-double v5, v1

    div-double/2addr v3, v5

    .line 251
    .local v3, "skippedTimePercent":D
    sget-boolean v5, Landroid/view/FrameSkipReporter$FramePerfReport;->DEBUG:Z

    if-eqz v5, :cond_1

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipped discrete check "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    .line 254
    :cond_1
    int-to-long v5, v0

    sget-wide v7, Landroid/view/FrameSkipReporter$FramePerfReport;->sDiscreteSkippedLowLimitMs:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    sget v5, Landroid/view/FrameSkipReporter$FramePerfReport;->sMinReportSkippedPercent:F

    float-to-double v5, v5

    cmpl-double v5, v3, v5

    if-lez v5, :cond_2

    .line 255
    const/16 v5, 0x100

    return v5

    .line 257
    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method blacklist resetStatus()V
    .locals 1

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/FrameSkipReporter$FramePerfReport;->inSkipping:Z

    .line 162
    const-string v0, "Skipped2.0 clear"

    invoke-static {v0}, Landroid/view/FrameSkipReporter$FramePerfReport;->debugI(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method blacklist validSkip(I)V
    .locals 2
    .param p1, "frames"    # I

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped2.0: skip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Quality"

    invoke-static {v1, v0}, Landroid/view/FrameSkipReporter;->-$$Nest$smlogP(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
