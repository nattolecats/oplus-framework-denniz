.class public Lcom/oplus/os/LinearmotorVibrator;
.super Ljava/lang/Object;
.source "LinearmotorVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;
    }
.end annotation


# static fields
.field private static final blacklist DEPTH_DEBUG_CALLER:I = 0x4

.field private static final blacklist DURATION_DELAY_VIBRATE_WITH_INTERVAL:J = 0x32L

.field private static final blacklist DURATION_MAX_VIBRATE_WITH_INTERVAL:J = 0x32L

.field public static final whitelist FEATURE_WAVEFORM_VIBRATOR:Ljava/lang/String; = "oplus.software.vibrator_lmvibrator"

.field public static final whitelist LINEARMOTORVIBRATOR_SERVICE:Ljava/lang/String; = "linearmotor"

.field private static final blacklist MSG_LINEARMOTOR_VIBRATOR_BEGIN:I = 0x2710

.field private static final blacklist MSG_LINEARMOTOR_VIBRATOR_VIBRATE:I = 0x2711

.field public static final whitelist TAG:Ljava/lang/String; = "LinearmotorVibrator"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentVibDuration:J

.field private blacklist mCurrentVibEndTime:J

.field private blacklist mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mLogEnable:Z

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mService:Lcom/oplus/os/ILinearmotorVibratorService;

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/oplus/os/LinearmotorVibrator;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oplus/os/LinearmotorVibrator;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mvibrateInnerLocked(Lcom/oplus/os/LinearmotorVibrator;Lcom/oplus/os/WaveformEffect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->vibrateInnerLocked(Lcom/oplus/os/WaveformEffect;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Lcom/oplus/os/ILinearmotorVibratorService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/oplus/os/ILinearmotorVibratorService;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mToken:Landroid/os/Binder;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    .line 61
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mLogEnable:Z

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibDuration:J

    .line 64
    iput-wide v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    .line 87
    iput-object p1, p0, Lcom/oplus/os/LinearmotorVibrator;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mPackageName:Ljava/lang/String;

    .line 90
    if-nez p2, :cond_0

    .line 91
    const-string v0, "LinearmotorVibrator"

    const-string v1, "ILinearmotorVibratorService was null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    return-void
.end method

.method private blacklist getEffectDuration(Lcom/oplus/os/WaveformEffect;)J
    .locals 3
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;

    .line 157
    const-wide/16 v0, -0x1

    if-nez p1, :cond_0

    .line 158
    return-wide v0

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect;->getWaveFormDurationArray()[J

    move-result-object v2

    .line 161
    .local v2, "durationArr":[J
    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget-wide v0, v2, v0

    :goto_0
    return-wide v0
.end method

.method private blacklist initHandlerIfNeeded()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LinearmotorVibrator-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;-><init>(Lcom/oplus/os/LinearmotorVibrator;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    .line 185
    :cond_1
    return-void
.end method

.method private blacklist tryVibrateAsynchronouslyLocked(Lcom/oplus/os/WaveformEffect;J)Z
    .locals 8
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;
    .param p2, "now"    # J

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/os/LinearmotorVibrator;->tryVibrateWithIntervalLocked(Lcom/oplus/os/WaveformEffect;J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 116
    return v1

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect;->getAsynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const-wide/16 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/oplus/os/LinearmotorVibrator;->vibAsyncAndUpdateCurVibLocked(Lcom/oplus/os/WaveformEffect;JJ)V

    .line 121
    return v1

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist tryVibrateWithIntervalLocked(Lcom/oplus/os/WaveformEffect;J)Z
    .locals 11
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;
    .param p2, "now"    # J

    .line 128
    invoke-direct {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->getEffectDuration(Lcom/oplus/os/WaveformEffect;)J

    move-result-wide v6

    .line 129
    .local v6, "duration":J
    const-wide/16 v0, -0x1

    cmp-long v2, v6, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-wide v4, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibDuration:J

    cmp-long v2, v4, v0

    if-eqz v2, :cond_7

    iget-wide v4, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 132
    :cond_0
    const-string v0, "LinearmotorVibrator"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/oplus/os/WaveformEffect;->getEffectType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto/16 :goto_1

    .line 137
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mLogEnable:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    .line 138
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 140
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    iget-wide v4, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v8

    const/4 v4, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    iget-wide v9, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    .line 138
    const-string v4, "tryVibrateWithInterval: duration=%d, currentVibDuration=%d, now=%d, currentEndTime=%d"

    invoke-static {v1, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_2
    const-wide/16 v1, 0x32

    cmp-long v4, v6, v1

    if-gtz v4, :cond_3

    iget-wide v4, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibDuration:J

    cmp-long v4, v4, v1

    if-gtz v4, :cond_3

    iget-wide v4, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    cmp-long v4, p2, v4

    if-gtz v4, :cond_3

    move v4, v8

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v9, v4

    .line 145
    .local v9, "shouldVibWithInterval":Z
    if-eqz v9, :cond_5

    .line 146
    iget-object v3, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    if-eqz v3, :cond_4

    const/16 v4, 0x2711

    invoke-virtual {v3, v4}, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    const-string v1, "tryVibrateWithIntervalLocked: Ignoring incoming vibration in favor of asynchronous messages"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v8

    .line 150
    :cond_4
    iget-wide v3, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    sub-long/2addr v3, p2

    add-long v2, v3, v1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/oplus/os/LinearmotorVibrator;->vibAsyncAndUpdateCurVibLocked(Lcom/oplus/os/WaveformEffect;JJ)V

    .line 151
    return v8

    .line 153
    :cond_5
    return v3

    .line 133
    .end local v9    # "shouldVibWithInterval":Z
    :cond_6
    :goto_1
    const-string v1, "tryVibrateWithIntervalLocked: invalid effectType, return."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v3

    .line 130
    :cond_7
    :goto_2
    return v3
.end method

.method private blacklist updateCurrentVibrationLocked(Lcom/oplus/os/WaveformEffect;J)V
    .locals 5
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;
    .param p2, "startTime"    # J

    .line 188
    invoke-direct {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->getEffectDuration(Lcom/oplus/os/WaveformEffect;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibDuration:J

    .line 189
    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    .line 190
    iget-boolean v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mLogEnable:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibDuration:J

    .line 193
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/oplus/os/LinearmotorVibrator;->mCurrentVibEndTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 191
    const-string v2, "updateCurrentVibrationLocked: mCurrentVibDuration=%d, mCurrentEndTime=%d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearmotorVibrator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-void
.end method

.method private blacklist vibAsyncAndUpdateCurVibLocked(Lcom/oplus/os/WaveformEffect;JJ)V
    .locals 2
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;
    .param p2, "delayDuration"    # J
    .param p4, "now"    # J

    .line 165
    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/os/LinearmotorVibrator;->vibrateAsynchronouslyLocked(Lcom/oplus/os/WaveformEffect;J)V

    .line 166
    add-long v0, p4, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/os/LinearmotorVibrator;->updateCurrentVibrationLocked(Lcom/oplus/os/WaveformEffect;J)V

    .line 167
    return-void
.end method

.method private blacklist vibrateAsynchronouslyLocked(Lcom/oplus/os/WaveformEffect;J)V
    .locals 2
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;
    .param p2, "delayDuration"    # J

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibrateAsynchronouslyLocked: delayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearmotorVibrator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0}, Lcom/oplus/os/LinearmotorVibrator;->initHandlerIfNeeded()V

    .line 173
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    .line 174
    const/16 v1, 0x2711

    invoke-virtual {v0, v1, p1}, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1, p2, p3}, Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 175
    return-void
.end method

.method private blacklist vibrateInnerLocked(Lcom/oplus/os/WaveformEffect;)V
    .locals 5
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;

    .line 199
    const-string v0, "LinearmotorVibrator"

    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mLogEnable:Z

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrateInnerLocked: effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/os/LinearmotorVibrator;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/os/LinearmotorVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/oplus/os/ILinearmotorVibratorService;->vibrate(ILjava/lang/String;Lcom/oplus/os/WaveformEffect;Landroid/os/IBinder;)V

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/oplus/os/LinearmotorVibrator;->updateCurrentVibrationLocked(Lcom/oplus/os/WaveformEffect;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist cancelVibrate(Lcom/oplus/os/WaveformEffect;)V
    .locals 3
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;

    .line 210
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_3

    .line 212
    :try_start_0
    const-string v1, "call linearmotor vibrator service cancelVibrate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-boolean v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mLogEnable:Z

    if-eqz v1, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelVibrate: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    iget-object v2, p0, Lcom/oplus/os/LinearmotorVibrator;->mToken:Landroid/os/Binder;

    invoke-interface {v1, p1, v2}, Lcom/oplus/os/ILinearmotorVibratorService;->cancelVibrate(Lcom/oplus/os/WaveformEffect;Landroid/os/IBinder;)V

    .line 218
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 219
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 220
    iput-object v2, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    if-eqz v1, :cond_2

    .line 223
    iput-object v2, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_2
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 318
    iput-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandlerThread:Landroid/os/HandlerThread;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;

    if-eqz v0, :cond_1

    .line 321
    iput-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mHandler:Lcom/oplus/os/LinearmotorVibrator$VibratorHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 325
    throw v0
.end method

.method public whitelist getSettingsNotificationEffectStrength()I
    .locals 3

    .line 279
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 281
    :try_start_0
    const-string v1, "call linearmotor vibrator service getSettingsNotificationEffectStrength"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1}, Lcom/oplus/os/ILinearmotorVibratorService;->getSettingsNotificationEffectStrength()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSettingsRingtoneEffectStrength()I
    .locals 3

    .line 267
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    const-string v1, "call linearmotor vibrator service getSettingsRingtoneEffectStrength"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1}, Lcom/oplus/os/ILinearmotorVibratorService;->getSettingsRingtoneEffectStrength()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 271
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSettingsTouchEffectStrength()I
    .locals 3

    .line 255
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 257
    :try_start_0
    const-string v1, "call linearmotor vibrator service getSettingsTouchEffectStrength"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1}, Lcom/oplus/os/ILinearmotorVibratorService;->getSettingsTouchEffectStrength()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getVibratorStatus()I
    .locals 3

    .line 232
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    const-string v1, "call linearmotor vibrator service getVibratorStatus"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1}, Lcom/oplus/os/ILinearmotorVibratorService;->getVibratorStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getVibratorTouchStyle()I
    .locals 3

    .line 302
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 304
    :try_start_0
    const-string v1, "call linearmotor vibrator service getVibratorTouchStyle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1}, Lcom/oplus/os/ILinearmotorVibratorService;->getVibratorTouchStyle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setVibratorStrength(I)V
    .locals 3
    .param p1, "strength"    # I

    .line 244
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 246
    :try_start_0
    const-string v1, "call linearmotor vibrator service setVibratorStrength"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1, p1}, Lcom/oplus/os/ILinearmotorVibratorService;->setVibratorStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v1

    .line 249
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setVibratorTouchStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .line 291
    const-string v0, "LinearmotorVibrator"

    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v1, :cond_0

    .line 293
    :try_start_0
    const-string v1, "call linearmotor vibrator service setVibratorTouchStyle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    invoke-interface {v1, p1}, Lcom/oplus/os/ILinearmotorVibratorService;->setVibratorTouchStyle(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Remote exception in LinearmotorVibrator: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist vibrate(Lcom/oplus/os/WaveformEffect;)V
    .locals 3
    .param p1, "we"    # Lcom/oplus/os/WaveformEffect;

    .line 96
    const-string v0, "LinearmotorVibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate: effect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mLogEnable:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "LinearmotorVibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/oplus/os/LinearmotorVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/oplus/os/LinearmotorVibrator;->tryVibrateAsynchronouslyLocked(Lcom/oplus/os/WaveformEffect;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    monitor-exit v0

    return-void

    .line 110
    :cond_2
    invoke-direct {p0, p1}, Lcom/oplus/os/LinearmotorVibrator;->vibrateInnerLocked(Lcom/oplus/os/WaveformEffect;)V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 102
    :cond_3
    :goto_0
    const-string v0, "LinearmotorVibrator"

    const-string v1, "ignore vibrate in favor of invalid params."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
