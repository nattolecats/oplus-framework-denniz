.class public Landroid/os/SystemVibratorExtImpl;
.super Ljava/lang/Object;
.source "SystemVibratorExtImpl.java"

# interfaces
.implements Landroid/os/ISystemVibratorExt;


# static fields
.field private static final blacklist REASON:Ljava/lang/String; = "LinearmotorVibrator"

.field private static final blacklist TAG:Ljava/lang/String; = "SystemVibratorExtImpl"

.field private static final blacklist TIMING_THRESH_1:I = 0x0

.field private static final blacklist TIMING_THRESH_2:I = 0xc

.field private static final blacklist TIMING_THRESH_3:I = 0x34

.field private static final blacklist TIMING_THRESH_4:I = 0x66

.field private static final blacklist WAVEFORM_INDEX_MODERATE_SHORT:I = 0x3

.field private static final blacklist WAVEFORM_INDEX_RUSH_LEFT_TO_RIGHT:I = 0x5

.field private static final blacklist WAVEFORM_INDEX_STRONG_GRANULAR:I = 0x6

.field private static final blacklist WAVEFORM_INDEX_THREE_DIMENSION_TOUCH:I = 0x4

.field private static final blacklist WAVEFORM_INDEX_WEAKEST_SHORT:I = 0x1

.field private static final blacklist WAVEFORM_INDEX_WEAK_GRANULAR:I = 0x7

.field private static final blacklist WAVEFORM_INDEX_WEAK_SHORT:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHasLinearmotorVibrator:Z

.field private blacklist mLMService:Lcom/oplus/os/ILinearmotorVibratorService;

.field private blacklist mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

.field private blacklist mLogEnable:Z

.field private blacklist mService:Landroid/os/IVibratorManagerService;

.field private blacklist mSystemVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/SystemVibratorExtImpl;->mLogEnable:Z

    .line 60
    iput-boolean v1, p0, Landroid/os/SystemVibratorExtImpl;->mHasLinearmotorVibrator:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mContext:Landroid/content/Context;

    .line 67
    iput-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    .line 70
    move-object v0, p1

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mSystemVibrator:Landroid/os/Vibrator;

    .line 71
    return-void
.end method

.method private blacklist getConvertEffectStrength(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)I
    .locals 2
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/os/VibrationAttributes;

    .line 207
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mContext:Landroid/content/Context;

    const-string v1, "linearmotor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/os/LinearmotorVibrator;

    iput-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    .line 210
    :cond_0
    if-nez p2, :cond_1

    .line 211
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 213
    .local v0, "attributestmp":Landroid/media/AudioAttributes;
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1, v0}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p2

    .line 216
    .end local v0    # "attributestmp":Landroid/media/AudioAttributes;
    :cond_1
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-eqz v0, :cond_2

    .line 217
    invoke-virtual {v0}, Lcom/oplus/os/LinearmotorVibrator;->getSettingsNotificationEffectStrength()I

    move-result v0

    return v0

    .line 218
    :cond_2
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLinearmotorVibrator:Lcom/oplus/os/LinearmotorVibrator;

    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v0}, Lcom/oplus/os/LinearmotorVibrator;->getSettingsTouchEffectStrength()I

    move-result v0

    return v0

    .line 221
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist getPrebakedConvertWaveformId(I)I
    .locals 1
    .param p1, "effectId"    # I

    .line 238
    if-nez p1, :cond_0

    .line 239
    const/4 v0, 0x1

    return v0

    .line 241
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist getStepConvertWaveformId(J)I
    .locals 3
    .param p1, "timing"    # J

    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0xc

    if-lez v0, :cond_0

    cmp-long v0, p1, v1

    if-gtz v0, :cond_0

    .line 227
    const/4 v0, 0x7

    return v0

    .line 228
    :cond_0
    cmp-long v0, p1, v1

    const-wide/16 v1, 0x34

    if-lez v0, :cond_1

    cmp-long v0, p1, v1

    if-gtz v0, :cond_1

    .line 229
    const/4 v0, 0x2

    return v0

    .line 230
    :cond_1
    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    const-wide/16 v0, 0x66

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    .line 231
    const/4 v0, 0x6

    return v0

    .line 233
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private blacklist isDeviceOP7()Z
    .locals 6

    .line 83
    const-string v0, "ro.separate.soft"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "prjName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 85
    return v2

    .line 87
    :cond_0
    const-string v1, "18851"

    const-string v3, "18853"

    const-string v4, "18855"

    const-string v5, "18857"

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "op7ModelList":[Ljava/lang/String;
    array-length v3, v1

    .line 89
    .local v3, "op7TotalModels":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 90
    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    const/4 v2, 0x1

    return v2

    .line 89
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method private blacklist isSystemApp(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 374
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 375
    return v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 378
    .local v0, "manager":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_1

    .line 379
    return v1

    .line 382
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 383
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 384
    return v4

    .line 388
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2
    goto :goto_0

    .line 386
    :catch_0
    move-exception v2

    .line 387
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 389
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v1
.end method


# virtual methods
.method public blacklist convertToLinearVibration(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/IBinder;Landroid/os/VibrationAttributes;)Z
    .locals 23
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 99
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToLinearVibration uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", opPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", effect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemVibratorExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x1

    .line 101
    .local v0, "convert":Z
    const/4 v2, 0x0

    .line 102
    .local v2, "timings":[J
    const/4 v3, 0x0

    .line 103
    .local v3, "amplitudes":[F
    const/4 v4, 0x0

    .line 104
    .local v4, "waveformIds":[I
    const/4 v5, -0x1

    .line 106
    .local v5, "repeatIndex":I
    iget-boolean v6, v10, Landroid/os/SystemVibratorExtImpl;->mHasLinearmotorVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_17

    const-string v6, "cts"

    invoke-virtual {v11, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    goto/16 :goto_f

    .line 110
    :cond_0
    iget-boolean v6, v10, Landroid/os/SystemVibratorExtImpl;->mLogEnable:Z

    if-nez v6, :cond_1

    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    :cond_1
    const/4 v6, 0x4

    .line 112
    .local v6, "count":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "vibrate here dumpStack:  Callers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v6    # "count":I
    :cond_2
    instance-of v6, v12, Landroid/os/VibrationEffect$Composed;

    if-eqz v6, :cond_16

    .line 115
    move-object v15, v12

    check-cast v15, Landroid/os/VibrationEffect$Composed;

    .line 116
    .local v15, "composed":Landroid/os/VibrationEffect$Composed;
    invoke-virtual {v15}, Landroid/os/VibrationEffect$Composed;->getSegments()Ljava/util/List;

    move-result-object v9

    .line 117
    .local v9, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    invoke-virtual {v15}, Landroid/os/VibrationEffect$Composed;->getRepeatIndex()I

    move-result v8

    .line 119
    .end local v5    # "repeatIndex":I
    .local v8, "repeatIndex":I
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_15

    .line 120
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 121
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/vibrator/VibrationEffectSegment;

    .line 122
    .local v5, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v7, v5, Landroid/os/vibrator/StepSegment;

    if-eqz v7, :cond_4

    .line 123
    move-object v7, v5

    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 124
    .local v7, "ssg":Landroid/os/vibrator/StepSegment;
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .local v18, "timings":[J
    .local v19, "amplitudes":[F
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v2

    .line 125
    .local v2, "duration":J
    invoke-direct {v10, v2, v3}, Landroid/os/SystemVibratorExtImpl;->getStepConvertWaveformId(J)I

    move-result v6

    .line 126
    .local v6, "convertedWaveformId":I
    move/from16 v21, v0

    const/4 v0, -0x1

    .end local v0    # "convert":Z
    .local v21, "convert":Z
    if-ne v6, v0, :cond_3

    .line 127
    const/4 v0, 0x0

    move-object/from16 v2, v18

    .end local v21    # "convert":Z
    .restart local v0    # "convert":Z
    goto :goto_0

    .line 129
    .end local v0    # "convert":Z
    .restart local v21    # "convert":Z
    :cond_3
    move-object/from16 v22, v4

    const/4 v0, 0x1

    .end local v4    # "waveformIds":[I
    .local v22, "waveformIds":[I
    new-array v4, v0, [I

    const/4 v0, 0x0

    aput v6, v4, v0

    .line 130
    .end local v22    # "waveformIds":[I
    .restart local v4    # "waveformIds":[I
    move-object/from16 v16, v4

    const/4 v4, 0x1

    .end local v4    # "waveformIds":[I
    .local v16, "waveformIds":[I
    new-array v4, v4, [J

    aput-wide v2, v4, v0

    move-object v0, v4

    move-object v2, v0

    move-object/from16 v4, v16

    move/from16 v0, v21

    .line 132
    .end local v6    # "convertedWaveformId":I
    .end local v7    # "ssg":Landroid/os/vibrator/StepSegment;
    .end local v16    # "waveformIds":[I
    .end local v18    # "timings":[J
    .end local v21    # "convert":Z
    .restart local v0    # "convert":Z
    .local v2, "timings":[J
    .restart local v4    # "waveformIds":[I
    :goto_0
    goto :goto_2

    .end local v19    # "amplitudes":[F
    .restart local v3    # "amplitudes":[F
    :cond_4
    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    const/4 v0, 0x0

    .end local v0    # "convert":Z
    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .end local v4    # "waveformIds":[I
    .restart local v18    # "timings":[J
    .restart local v19    # "amplitudes":[F
    .restart local v21    # "convert":Z
    .restart local v22    # "waveformIds":[I
    instance-of v2, v5, Landroid/os/vibrator/PrebakedSegment;

    if-eqz v2, :cond_6

    .line 133
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/vibrator/PrebakedSegment;

    .line 134
    .local v0, "ssg":Landroid/os/vibrator/PrebakedSegment;
    invoke-virtual {v0}, Landroid/os/vibrator/PrebakedSegment;->getEffectId()I

    move-result v2

    .line 135
    .local v2, "effectId":I
    invoke-direct {v10, v2}, Landroid/os/SystemVibratorExtImpl;->getPrebakedConvertWaveformId(I)I

    move-result v3

    .line 136
    .local v3, "convertedWaveformId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    .line 137
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v2, v18

    move-object/from16 v4, v22

    .end local v21    # "convert":Z
    .local v4, "convert":Z
    goto :goto_1

    .line 139
    .end local v4    # "convert":Z
    .restart local v21    # "convert":Z
    :cond_5
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v3, v4, v6

    .line 140
    .end local v22    # "waveformIds":[I
    .local v4, "waveformIds":[I
    invoke-static {v3}, Lcom/oplus/os/WaveformEffect;->getWaveFormIndexDurationArray(I)[J

    move-result-object v6

    move-object v2, v6

    move/from16 v0, v21

    .line 142
    .end local v3    # "convertedWaveformId":I
    .end local v18    # "timings":[J
    .end local v21    # "convert":Z
    .local v0, "convert":Z
    .local v2, "timings":[J
    :goto_1
    goto :goto_2

    .line 143
    .end local v0    # "convert":Z
    .end local v2    # "timings":[J
    .end local v4    # "waveformIds":[I
    .restart local v18    # "timings":[J
    .restart local v21    # "convert":Z
    .restart local v22    # "waveformIds":[I
    :cond_6
    const/4 v0, 0x0

    .line 144
    .end local v21    # "convert":Z
    .restart local v0    # "convert":Z
    const-string v2, "Segment is not StepSegment or PrebakedSegment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v2, v18

    move-object/from16 v4, v22

    .line 146
    .end local v5    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v18    # "timings":[J
    .end local v22    # "waveformIds":[I
    .restart local v2    # "timings":[J
    .restart local v4    # "waveformIds":[I
    :goto_2
    move v14, v0

    move-object/from16 v18, v2

    move-object/from16 v22, v4

    move-object/from16 v20, v15

    goto/16 :goto_b

    .line 147
    .end local v19    # "amplitudes":[F
    .local v3, "amplitudes":[F
    :cond_7
    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    .end local v0    # "convert":Z
    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .end local v4    # "waveformIds":[I
    .restart local v18    # "timings":[J
    .restart local v19    # "amplitudes":[F
    .restart local v21    # "convert":Z
    .restart local v22    # "waveformIds":[I
    invoke-direct/range {p0 .. p0}, Landroid/os/SystemVibratorExtImpl;->isDeviceOP7()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 148
    const-string v0, "device is OP7 so no waveform"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v0, 0x0

    return v0

    .line 151
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_c

    .line 152
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/vibrator/VibrationEffectSegment;

    .line 153
    .local v2, "segment":Landroid/os/vibrator/VibrationEffectSegment;
    instance-of v3, v2, Landroid/os/vibrator/StepSegment;

    if-eqz v3, :cond_b

    .line 154
    move-object v3, v2

    check-cast v3, Landroid/os/vibrator/StepSegment;

    .line 155
    .local v3, "ssg":Landroid/os/vibrator/StepSegment;
    invoke-virtual {v3}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v4

    .line 156
    .local v4, "timingsOneShot":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_a

    const-wide/16 v6, 0x66

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    goto :goto_4

    .line 160
    .end local v3    # "ssg":Landroid/os/vibrator/StepSegment;
    .end local v4    # "timingsOneShot":J
    :cond_9
    goto :goto_5

    .line 157
    .restart local v3    # "ssg":Landroid/os/vibrator/StepSegment;
    .restart local v4    # "timingsOneShot":J
    :cond_a
    :goto_4
    const/4 v6, 0x0

    .line 158
    .end local v21    # "convert":Z
    .local v6, "convert":Z
    move v0, v6

    goto :goto_6

    .line 161
    .end local v3    # "ssg":Landroid/os/vibrator/StepSegment;
    .end local v4    # "timingsOneShot":J
    .end local v6    # "convert":Z
    .restart local v21    # "convert":Z
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waveform segment["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not StepSegment"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v3, 0x0

    move/from16 v21, v3

    .line 151
    .end local v2    # "segment":Landroid/os/vibrator/VibrationEffectSegment;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    move/from16 v0, v21

    .line 165
    .end local v21    # "convert":Z
    .local v0, "convert":Z
    :goto_6
    if-eqz v0, :cond_11

    .line 166
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 167
    .end local v18    # "timings":[J
    .local v2, "timings":[J
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [F

    .line 168
    .end local v19    # "amplitudes":[F
    .local v3, "amplitudes":[F
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 169
    .end local v22    # "waveformIds":[I
    .local v4, "waveformIds":[I
    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 170
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 171
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/vibrator/VibrationEffectSegment;

    .line 172
    .local v6, "segment1":Landroid/os/vibrator/VibrationEffectSegment;
    move-object v7, v6

    check-cast v7, Landroid/os/vibrator/StepSegment;

    .line 173
    .local v7, "ssg1":Landroid/os/vibrator/StepSegment;
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getDuration()J

    move-result-wide v17

    aput-wide v17, v2, v5

    .line 174
    invoke-virtual {v7}, Landroid/os/vibrator/StepSegment;->getAmplitude()F

    move-result v17

    aput v17, v3, v5

    .line 175
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .end local v6    # "segment1":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v7    # "ssg1":Landroid/os/vibrator/StepSegment;
    .local v17, "segment1":Landroid/os/vibrator/VibrationEffectSegment;
    .local v18, "ssg1":Landroid/os/vibrator/StepSegment;
    aget-wide v6, v2, v5

    invoke-direct {v10, v6, v7}, Landroid/os/SystemVibratorExtImpl;->getStepConvertWaveformId(J)I

    move-result v6

    aput v6, v4, v5

    .line 176
    aget v6, v3, v5

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_d

    .line 177
    const/4 v6, -0x1

    aput v6, v4, v5

    goto :goto_8

    .line 176
    :cond_d
    const/4 v6, -0x1

    .line 179
    :goto_8
    iget-boolean v7, v10, Landroid/os/SystemVibratorExtImpl;->mLogEnable:Z

    if-nez v7, :cond_f

    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v7

    if-eqz v7, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v20, v15

    goto :goto_a

    .line 180
    :cond_f
    :goto_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convert is true, ["

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] : waveformId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", timing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v20, v15

    .end local v15    # "composed":Landroid/os/VibrationEffect$Composed;
    .local v20, "composed":Landroid/os/VibrationEffect$Composed;
    aget-wide v14, v2, v5

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", amplitude = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v17    # "segment1":Landroid/os/vibrator/VibrationEffectSegment;
    .end local v18    # "ssg1":Landroid/os/vibrator/StepSegment;
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move/from16 v14, p1

    move-object/from16 v15, v20

    goto/16 :goto_7

    .end local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v15    # "composed":Landroid/os/VibrationEffect$Composed;
    :cond_10
    move-object/from16 v20, v15

    .end local v15    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    move v14, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    goto :goto_b

    .line 165
    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .end local v4    # "waveformIds":[I
    .end local v5    # "i":I
    .end local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v15    # "composed":Landroid/os/VibrationEffect$Composed;
    .local v18, "timings":[J
    .restart local v19    # "amplitudes":[F
    .restart local v22    # "waveformIds":[I
    :cond_11
    move-object/from16 v20, v15

    .end local v15    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    move v14, v0

    .line 186
    .end local v0    # "convert":Z
    .local v14, "convert":Z
    :goto_b
    if-eqz v14, :cond_14

    .line 187
    invoke-direct {v10, v12, v13}, Landroid/os/SystemVibratorExtImpl;->getConvertEffectStrength(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)I

    move-result v15

    .line 188
    .local v15, "effectStrength":I
    iget-boolean v0, v10, Landroid/os/SystemVibratorExtImpl;->mLogEnable:Z

    if-nez v0, :cond_12

    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 189
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert is true, call linearMotorVibrate : waveformIds = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", effectStrength = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", repeatIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_13
    const-string v7, "LinearmotorVibrator"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    move-object/from16 v4, v18

    move v5, v15

    move v6, v8

    move/from16 v16, v8

    .end local v8    # "repeatIndex":I
    .local v16, "repeatIndex":I
    move-object/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .local v17, "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    move-object/from16 v9, p4

    invoke-virtual/range {v0 .. v9}, Landroid/os/SystemVibratorExtImpl;->linearMotorVibrate(ILjava/lang/String;[I[JIILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/os/IBinder;)V

    .line 194
    .end local v15    # "effectStrength":I
    goto :goto_c

    .line 186
    .end local v16    # "repeatIndex":I
    .end local v17    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .restart local v8    # "repeatIndex":I
    .restart local v9    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    :cond_14
    move/from16 v16, v8

    move-object/from16 v17, v9

    .line 199
    .end local v8    # "repeatIndex":I
    .end local v9    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .end local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v16    # "repeatIndex":I
    :goto_c
    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    goto :goto_d

    .line 196
    .end local v14    # "convert":Z
    .end local v16    # "repeatIndex":I
    .end local v18    # "timings":[J
    .end local v19    # "amplitudes":[F
    .end local v22    # "waveformIds":[I
    .restart local v0    # "convert":Z
    .restart local v2    # "timings":[J
    .restart local v3    # "amplitudes":[F
    .restart local v4    # "waveformIds":[I
    .restart local v8    # "repeatIndex":I
    .restart local v9    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .local v15, "composed":Landroid/os/VibrationEffect$Composed;
    :cond_15
    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    move/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v20, v15

    .end local v0    # "convert":Z
    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .end local v4    # "waveformIds":[I
    .end local v8    # "repeatIndex":I
    .end local v9    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .end local v15    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v16    # "repeatIndex":I
    .restart local v17    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .restart local v18    # "timings":[J
    .restart local v19    # "amplitudes":[F
    .restart local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    .restart local v21    # "convert":Z
    .restart local v22    # "waveformIds":[I
    const/4 v14, 0x0

    .line 197
    .end local v21    # "convert":Z
    .restart local v14    # "convert":Z
    const-string v0, "segments has no member, do not convert"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v17    # "segments":Ljava/util/List;, "Ljava/util/List<Landroid/os/vibrator/VibrationEffectSegment;>;"
    .end local v18    # "timings":[J
    .end local v19    # "amplitudes":[F
    .end local v20    # "composed":Landroid/os/VibrationEffect$Composed;
    .end local v22    # "waveformIds":[I
    .restart local v2    # "timings":[J
    .restart local v3    # "amplitudes":[F
    .restart local v4    # "waveformIds":[I
    :goto_d
    move/from16 v5, v16

    goto :goto_e

    .line 200
    .end local v14    # "convert":Z
    .end local v16    # "repeatIndex":I
    .restart local v0    # "convert":Z
    .local v5, "repeatIndex":I
    :cond_16
    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    .end local v0    # "convert":Z
    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .end local v4    # "waveformIds":[I
    .restart local v18    # "timings":[J
    .restart local v19    # "amplitudes":[F
    .restart local v21    # "convert":Z
    .restart local v22    # "waveformIds":[I
    const/4 v14, 0x0

    .line 201
    .end local v21    # "convert":Z
    .restart local v14    # "convert":Z
    const-string v0, "not Composed, do not convert"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v18    # "timings":[J
    .end local v19    # "amplitudes":[F
    .end local v22    # "waveformIds":[I
    .restart local v2    # "timings":[J
    .restart local v3    # "amplitudes":[F
    .restart local v4    # "waveformIds":[I
    :goto_e
    return v14

    .line 106
    .end local v14    # "convert":Z
    .restart local v0    # "convert":Z
    :cond_17
    move/from16 v21, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v22, v4

    .line 107
    .end local v0    # "convert":Z
    .end local v2    # "timings":[J
    .end local v3    # "amplitudes":[F
    .end local v4    # "waveformIds":[I
    .restart local v18    # "timings":[J
    .restart local v19    # "amplitudes":[F
    .restart local v21    # "convert":Z
    .restart local v22    # "waveformIds":[I
    :goto_f
    const-string v0, "no vibrator_lmvibrator or CTS vibration, do not convert"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVibratorStatus()I
    .locals 4

    .line 308
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLMService:Lcom/oplus/os/ILinearmotorVibratorService;

    const/4 v1, -0x1

    const-string v2, "SystemVibratorExtImpl"

    if-nez v0, :cond_0

    .line 309
    const-string v0, "Failed to getVibratorStatus; no vibrator service."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return v1

    .line 314
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/ILinearmotorVibratorService;->getVibratorStatus()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to getVibratorStatus."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist getVibratorTouchStyle()I
    .locals 4

    .line 340
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLMService:Lcom/oplus/os/ILinearmotorVibratorService;

    const/4 v1, -0x1

    const-string v2, "SystemVibratorExtImpl"

    if-nez v0, :cond_0

    .line 341
    const-string v0, "Failed to getVibratorTouchStyle; no vibrator service."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    return v1

    .line 346
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/oplus/os/ILinearmotorVibratorService;->getVibratorTouchStyle()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to getVibratorTouchStyle."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstacne()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.vibrator_lmvibrator"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/SystemVibratorExtImpl;->mHasLinearmotorVibrator:Z

    .line 76
    iput-object p1, p0, Landroid/os/SystemVibratorExtImpl;->mContext:Landroid/content/Context;

    .line 78
    const-string v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mService:Landroid/os/IVibratorManagerService;

    .line 79
    const-string v0, "linearmotor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/os/ILinearmotorVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/os/ILinearmotorVibratorService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLMService:Lcom/oplus/os/ILinearmotorVibratorService;

    .line 80
    return-void
.end method

.method public blacklist linearMotorVibrate(ILjava/lang/String;[I[JIILjava/lang/String;Landroid/os/VibrationAttributes;Landroid/os/IBinder;)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "waveformIds"    # [I
    .param p4, "timings"    # [J
    .param p5, "strength"    # I
    .param p6, "repeat"    # I
    .param p7, "reason"    # Ljava/lang/String;
    .param p8, "attributes"    # Landroid/os/VibrationAttributes;
    .param p9, "token"    # Landroid/os/IBinder;

    .line 251
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    const-string v15, "SystemVibratorExtImpl"

    if-eqz v11, :cond_4

    if-nez v12, :cond_0

    goto/16 :goto_5

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 260
    .local v0, "effect":Landroid/os/VibrationEffect;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linearMotorVibrate waveformIds.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timings.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    array-length v1, v11

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    array-length v1, v12

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    if-ne v14, v1, :cond_1

    .line 262
    new-instance v1, Landroid/os/OplusNativeOneShotVibrationEffect;

    const/4 v2, 0x0

    aget v3, v11, v2

    aget-wide v4, v12, v2

    invoke-direct {v1, v3, v4, v5}, Landroid/os/OplusNativeOneShotVibrationEffect;-><init>(IJ)V

    .line 264
    .local v1, "oneShot":Landroid/os/OplusNativeOneShotVibrationEffect;
    invoke-virtual {v1, v13}, Landroid/os/OplusNativeOneShotVibrationEffect;->setEffectStrength(I)V

    .line 265
    move-object v0, v1

    .line 266
    .end local v1    # "oneShot":Landroid/os/OplusNativeOneShotVibrationEffect;
    move-object v7, v0

    goto :goto_0

    .line 267
    :cond_1
    new-instance v1, Landroid/os/OplusNativeWaveformVibrationEffect;

    invoke-direct {v1, v12, v11, v14}, Landroid/os/OplusNativeWaveformVibrationEffect;-><init>([J[II)V

    .line 269
    .local v1, "waveform":Landroid/os/OplusNativeWaveformVibrationEffect;
    invoke-virtual {v1, v13}, Landroid/os/OplusNativeWaveformVibrationEffect;->setEffectStrength(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 270
    move-object v0, v1

    move-object v7, v0

    .line 274
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    .end local v1    # "waveform":Landroid/os/OplusNativeWaveformVibrationEffect;
    .local v7, "effect":Landroid/os/VibrationEffect;
    :goto_0
    :try_start_1
    iget-object v0, v8, Landroid/os/SystemVibratorExtImpl;->mService:Landroid/os/IVibratorManagerService;

    invoke-interface {v0, v9, v10, v7}, Landroid/os/IVibratorManagerService;->doVibrate(ILjava/lang/String;Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_2

    .line 275
    return-void

    .line 279
    :cond_2
    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "Failed to doVibrate."

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v0, :cond_3

    .line 282
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linearMotorVibrate uid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",opPkg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",effect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v6, p8

    :try_start_4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 286
    .end local v7    # "effect":Landroid/os/VibrationEffect;
    :catch_1
    move-exception v0

    move-object/from16 v6, p8

    goto :goto_3

    .line 281
    .restart local v7    # "effect":Landroid/os/VibrationEffect;
    :cond_3
    move-object/from16 v6, p8

    .line 285
    :goto_2
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v7

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v16, v7

    .end local v7    # "effect":Landroid/os/VibrationEffect;
    .local v16, "effect":Landroid/os/VibrationEffect;
    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/os/SystemVibratorExtImpl;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 288
    .end local v16    # "effect":Landroid/os/VibrationEffect;
    goto :goto_4

    .line 286
    :catch_2
    move-exception v0

    .line 287
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    :goto_3
    const-string v1, "Failed to linearMotorVibrate"

    invoke-static {v15, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :goto_4
    return-void

    .line 252
    :cond_4
    :goto_5
    iget-boolean v0, v8, Landroid/os/SystemVibratorExtImpl;->mLogEnable:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 253
    :cond_5
    const-string v0, "linearMotorVibrate: null waveformIds or timings!"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_6
    return-void
.end method

.method public blacklist setVibratorStrength(I)V
    .locals 3
    .param p1, "strength"    # I

    .line 323
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mLMService:Lcom/oplus/os/ILinearmotorVibratorService;

    const-string v1, "SystemVibratorExtImpl"

    if-nez v0, :cond_0

    .line 324
    const-string v0, "Failed to setVibratorStrength; no vibrator service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/os/ILinearmotorVibratorService;->setVibratorStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to setVibratorStrength."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist setVibratorTouchStyle(I)V
    .locals 4
    .param p1, "style"    # I

    .line 355
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "opPkgName":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/os/SystemVibratorExtImpl;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "SystemVibratorExtImpl"

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package is not system app, opPackageName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Landroid/os/SystemVibratorExtImpl;->mLMService:Lcom/oplus/os/ILinearmotorVibratorService;

    if-nez v1, :cond_1

    .line 362
    const-string v1, "Failed to setVibratorTouchStyle; no vibrator service."

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 367
    :cond_1
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/os/ILinearmotorVibratorService;->setVibratorTouchStyle(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to setVibratorTouchStyle."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;
    .param p6, "token"    # Landroid/os/IBinder;

    .line 293
    iget-object v0, p0, Landroid/os/SystemVibratorExtImpl;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "SystemVibratorExtImpl"

    if-nez v0, :cond_0

    .line 294
    const-string v0, "Failed to vibrate; no vibrator service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void

    .line 299
    :cond_0
    :try_start_0
    invoke-static {p3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v5

    .line 300
    .local v5, "combined":Landroid/os/CombinedVibration;
    iget-object v2, p0, Landroid/os/SystemVibratorExtImpl;->mService:Landroid/os/IVibratorManagerService;

    move v3, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p4

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/os/IVibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v5    # "combined":Landroid/os/CombinedVibration;
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to vibrate."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 304
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
