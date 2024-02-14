.class public Landroid/os/OplusDailyBattProtoManager;
.super Ljava/lang/Object;
.source "OplusDailyBattProtoManager.java"

# interfaces
.implements Landroid/os/IOplusDailyBattProtoManager;


# static fields
.field private static final blacklist APP_ID:Ljava/lang/String; = "30406"

.field private static final blacklist CATEGORY_ID:Ljava/lang/String; = "DailyBattProto"

.field private static final blacklist DAILY_BATT_PROTO_SWITCH:Ljava/lang/String; = "daily_batt_proto_switch"

.field private static final blacklist DEBUG:Z

.field private static final blacklist EVENT_ID:Ljava/lang/String; = "DailyBattProto"

.field private static final blacklist FAKE_NETWORK_TYPE_NR_TO:Ljava/lang/String; = "persist.sys.fake_nr_to"

.field private static final blacklist LATEST_DAILY_PROTO_FILE:Ljava/lang/String; = "/data/system/latest_daily_proto.bin"

.field private static final blacklist MDM_DAILY_PROTO:Ljava/lang/String; = "proto"

.field private static final blacklist MDM_DAILY_PROTO_VER:Ljava/lang/String; = "ver"

.field private static final blacklist MY_LOCAL_NETWORK_TYPE_NR:I

.field private static final blacklist PROTO_FILTER_NAME:Ljava/lang/String; = "sys_daily_proto_config"

.field public static final blacklist STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final blacklist STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final blacklist STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field private static final blacklist STR_DEEPSLEEP_SWITCH:Ljava/lang/String; = "oppoguardelf_deepsleep_switch_state"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusDailyBattProtoManager"

.field private static final blacklist VALUE_FOUR:I = 0x4

.field private static final blacklist VALUE_SIXTEEN:I = 0x10

.field private static final blacklist VERSION_CODE:Ljava/lang/String; = "2.1"

.field private static volatile blacklist sInstance:Landroid/os/OplusDailyBattProtoManager;


# instance fields
.field private blacklist mBatteryStatsImpl:Landroid/os/BatteryStats;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mOplusBaseBatteryStatsRUSHelper:Landroid/os/OplusBaseBatteryStatsRUSHelper;

.field private blacklist mPreiousNetworkType:I

.field private blacklist mTotalRAM:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 62
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/OplusDailyBattProtoManager;->DEBUG:Z

    .line 76
    const-string v0, "persist.sys.fake_nr_to"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/os/OplusDailyBattProtoManager;->MY_LOCAL_NETWORK_TYPE_NR:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "impl"    # Landroid/os/BatteryStats;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object v0, p0, Landroid/os/OplusDailyBattProtoManager;->mBatteryStatsImpl:Landroid/os/BatteryStats;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/OplusDailyBattProtoManager;->mPreiousNetworkType:I

    .line 104
    iput-object v0, p0, Landroid/os/OplusDailyBattProtoManager;->mOplusBaseBatteryStatsRUSHelper:Landroid/os/OplusBaseBatteryStatsRUSHelper;

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/OplusDailyBattProtoManager;->mTotalRAM:J

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusDailyBattProtoManager constructed with impl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Landroid/os/OplusDailyBattProtoManager;->mBatteryStatsImpl:Landroid/os/BatteryStats;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MY_LOCAL_NETWORK_TYPE_NR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/OplusDailyBattProtoManager;->MY_LOCAL_NETWORK_TYPE_NR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusDailyBattProtoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method private blacklist byteToHex(B)Ljava/lang/String;
    .locals 4
    .param p1, "num"    # B

    .line 553
    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 554
    .local v0, "hexDigits":[C
    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    const/4 v3, 0x0

    aput-char v1, v0, v3

    .line 555
    and-int/lit8 v1, p1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    const/4 v2, 0x1

    aput-char v1, v0, v2

    .line 556
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private blacklist dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V
    .locals 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;

    .line 456
    move-object/from16 v6, p1

    move-object/from16 v7, p4

    if-nez v7, :cond_0

    .line 457
    return-void

    .line 459
    :cond_0
    iget v8, v7, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 460
    .local v8, "count":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_6

    .line 461
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 462
    .local v10, "token":J
    const-wide v0, 0x10300000001L

    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v2

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 463
    const-wide v0, 0x10500000002L

    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 465
    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v0

    int-to-long v12, v0

    .line 466
    .local v12, "initMode":J
    invoke-virtual {v7, v9}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v0

    int-to-long v14, v0

    .line 468
    .local v14, "modMode":J
    const/4 v0, 0x0

    .line 469
    .local v0, "ds":I
    const-wide/16 v1, 0x3

    and-long v3, v14, v1

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 470
    and-long/2addr v1, v12

    long-to-int v1, v1

    add-int/2addr v1, v4

    packed-switch v1, :pswitch_data_0

    .line 484
    const/4 v0, 0x5

    move v5, v0

    goto :goto_1

    .line 481
    :pswitch_0
    const/4 v0, 0x4

    .line 482
    move v5, v0

    goto :goto_1

    .line 478
    :pswitch_1
    const/4 v0, 0x3

    .line 479
    move v5, v0

    goto :goto_1

    .line 475
    :pswitch_2
    const/4 v0, 0x1

    .line 476
    move v5, v0

    goto :goto_1

    .line 472
    :pswitch_3
    const/4 v0, 0x2

    .line 473
    move v5, v0

    goto :goto_1

    .line 469
    :cond_1
    move v5, v0

    .line 488
    .end local v0    # "ds":I
    .local v5, "ds":I
    :goto_1
    const-wide v0, 0x10e00000003L

    invoke-virtual {v6, v0, v1, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, "psm":I
    const-wide/16 v1, 0x4

    and-long v18, v14, v1

    cmp-long v3, v18, v16

    const/16 v18, 0x2

    if-nez v3, :cond_3

    .line 492
    and-long/2addr v1, v12

    cmp-long v1, v1, v16

    if-eqz v1, :cond_2

    .line 493
    goto :goto_2

    :cond_2
    move/from16 v4, v18

    :goto_2
    move v0, v4

    goto :goto_3

    .line 491
    :cond_3
    move v4, v0

    .line 495
    .end local v0    # "psm":I
    .local v4, "psm":I
    :goto_3
    const-wide v0, 0x10e00000004L

    invoke-virtual {v6, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, "im":I
    const-wide/16 v1, 0x8

    and-long v19, v14, v1

    cmp-long v3, v19, v16

    if-nez v3, :cond_5

    .line 499
    and-long/2addr v1, v12

    cmp-long v1, v1, v16

    if-eqz v1, :cond_4

    .line 500
    goto :goto_4

    :cond_4
    const/16 v18, 0x3

    :goto_4
    move/from16 v0, v18

    move v2, v0

    goto :goto_5

    .line 498
    :cond_5
    move v2, v0

    .line 502
    .end local v0    # "im":I
    .local v2, "im":I
    :goto_5
    const-wide v0, 0x10e00000005L

    invoke-virtual {v6, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v16, v2

    .end local v2    # "im":I
    .local v16, "im":I
    move-wide v2, v12

    move/from16 v18, v4

    move/from16 v17, v5

    .end local v4    # "psm":I
    .end local v5    # "ds":I
    .local v17, "ds":I
    .local v18, "psm":I
    move-wide v4, v14

    invoke-direct/range {v0 .. v5}, Landroid/os/OplusDailyBattProtoManager;->handleNetworkProtoDetail(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 506
    invoke-virtual {v6, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 460
    .end local v10    # "token":J
    .end local v12    # "initMode":J
    .end local v14    # "modMode":J
    .end local v16    # "im":I
    .end local v17    # "ds":I
    .end local v18    # "psm":I
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 508
    .end local v9    # "i":I
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist dumpLatestDailyInfo(Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;)Z
    .locals 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "dumpLastestDailyInfo"

    invoke-static {v3}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 149
    const/4 v3, 0x0

    .line 151
    .local v3, "doHaveContent":Z
    iget-object v4, v0, Landroid/os/OplusDailyBattProtoManager;->mBatteryStatsImpl:Landroid/os/BatteryStats;

    const/4 v5, 0x0

    .line 181
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 151
    if-nez v4, :cond_0

    .line 152
    const-string v4, "OplusDailyBattProtoManager"

    const-string v6, "mBatteryStatsImpl is NOT inited"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v5

    .line 156
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v7, 0x1

    new-array v8, v7, [I

    .line 158
    .local v8, "outInt":[I
    const/4 v9, 0x0

    .line 159
    .local v9, "dit":Landroid/os/BatteryStats$DailyItem;
    const/4 v10, 0x0

    .line 160
    .local v10, "curIndex":I
    const-wide/16 v11, 0x0

    .line 162
    .local v11, "bToken":J
    iget-object v13, v0, Landroid/os/OplusDailyBattProtoManager;->mBatteryStatsImpl:Landroid/os/BatteryStats;

    invoke-virtual {v13, v10}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v13

    move-object v9, v13

    if-eqz v13, :cond_6

    .line 163
    const/4 v3, 0x1

    .line 165
    add-int/lit8 v10, v10, 0x1

    .line 167
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .local v13, "desc":Ljava/lang/StringBuilder;
    const-string v14, "  Daily from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-wide v14, v9, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v7, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-wide v14, v9, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v7, v14, v15}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-eqz v1, :cond_4

    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 175
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    sget-object v7, Landroid/os/MirrorBatteryStats;->dumpDurationSteps:Lcom/oplus/internal/reflect/RefMethod;

    if-eqz v7, :cond_2

    sget-object v7, Landroid/os/MirrorBatteryStats;->dumpDailyLevelStepSummary:Lcom/oplus/internal/reflect/RefMethod;

    if-eqz v7, :cond_2

    .line 180
    sget-object v7, Landroid/os/MirrorBatteryStats;->dumpDurationSteps:Lcom/oplus/internal/reflect/RefMethod;

    const/4 v14, 0x5

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v1, v15, v5

    const-string v17, "      "

    const/16 v16, 0x1

    aput-object v17, v15, v16

    const-string v18, "    Discharge step durations:"

    const/16 v19, 0x2

    aput-object v18, v15, v19

    iget-object v14, v9, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/16 v20, 0x3

    aput-object v14, v15, v20

    .line 181
    const/4 v14, 0x4

    aput-object v6, v15, v14

    .line 180
    invoke-virtual {v7, v0, v15}, Lcom/oplus/internal/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const-string v15, "        "

    const/4 v14, 0x6

    if-eqz v7, :cond_1

    .line 182
    sget-object v7, Landroid/os/MirrorBatteryStats;->dumpDailyLevelStepSummary:Lcom/oplus/internal/reflect/RefMethod;

    move/from16 v21, v3

    .end local v3    # "doHaveContent":Z
    .local v21, "doHaveContent":Z
    new-array v3, v14, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const/16 v16, 0x1

    aput-object v15, v3, v16

    const-string v22, "Discharge"

    aput-object v22, v3, v19

    iget-object v14, v9, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    aput-object v14, v3, v20

    const/4 v14, 0x4

    aput-object v4, v3, v14

    const/4 v14, 0x5

    aput-object v8, v3, v14

    invoke-virtual {v7, v0, v3}, Lcom/oplus/internal/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    .end local v21    # "doHaveContent":Z
    .restart local v3    # "doHaveContent":Z
    :cond_1
    move/from16 v21, v3

    const/4 v14, 0x5

    .line 185
    .end local v3    # "doHaveContent":Z
    .restart local v21    # "doHaveContent":Z
    :goto_0
    sget-object v3, Landroid/os/MirrorBatteryStats;->dumpDurationSteps:Lcom/oplus/internal/reflect/RefMethod;

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v1, v7, v5

    const/4 v14, 0x1

    aput-object v17, v7, v14

    const-string v14, "    Charge step durations:"

    aput-object v14, v7, v19

    iget-object v14, v9, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    aput-object v14, v7, v20

    .line 186
    const/4 v14, 0x4

    aput-object v6, v7, v14

    .line 185
    invoke-virtual {v3, v0, v7}, Lcom/oplus/internal/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    sget-object v3, Landroid/os/MirrorBatteryStats;->dumpDailyLevelStepSummary:Lcom/oplus/internal/reflect/RefMethod;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    const/4 v7, 0x1

    aput-object v15, v6, v7

    const-string v7, "Charge"

    aput-object v7, v6, v19

    iget-object v7, v9, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    aput-object v7, v6, v20

    const/4 v7, 0x4

    aput-object v4, v6, v7

    const/4 v7, 0x5

    aput-object v8, v6, v7

    invoke-virtual {v3, v0, v6}, Lcom/oplus/internal/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 178
    .end local v21    # "doHaveContent":Z
    .restart local v3    # "doHaveContent":Z
    :cond_2
    move/from16 v21, v3

    .line 192
    .end local v3    # "doHaveContent":Z
    .restart local v21    # "doHaveContent":Z
    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total RAM size: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Landroid/os/OplusDailyBattProtoManager;->getTotalRAM()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DeepSleep option: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Landroid/os/OplusDailyBattProtoManager;->getDeepSleepOption()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 194
    .end local v21    # "doHaveContent":Z
    .restart local v3    # "doHaveContent":Z
    :cond_4
    move/from16 v21, v3

    .end local v3    # "doHaveContent":Z
    .restart local v21    # "doHaveContent":Z
    if-eqz v2, :cond_5

    .line 196
    const-wide v6, 0x10b00000001L

    invoke-virtual {v2, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 198
    const-wide v6, 0x10900000001L

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 199
    const-wide v6, 0x10300000002L

    iget-wide v14, v9, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-virtual {v2, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 200
    const-wide v6, 0x10300000003L

    iget-wide v14, v9, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-virtual {v2, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 202
    const-wide v6, 0x20b00000004L

    iget-object v3, v9, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {v0, v2, v6, v7, v3}, Landroid/os/OplusDailyBattProtoManager;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 203
    const-wide v6, 0x20b00000005L

    iget-object v3, v9, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    invoke-direct {v0, v2, v6, v7, v3}, Landroid/os/OplusDailyBattProtoManager;->dumpDurationSteps(Landroid/util/proto/ProtoOutputStream;JLandroid/os/BatteryStats$LevelStepTracker;)V

    .line 205
    const-wide v6, 0x10300000006L

    invoke-direct/range {p0 .. p0}, Landroid/os/OplusDailyBattProtoManager;->getTotalRAM()J

    move-result-wide v14

    invoke-virtual {v2, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 206
    const-wide v6, 0x10500000007L

    invoke-direct/range {p0 .. p0}, Landroid/os/OplusDailyBattProtoManager;->getDeepSleepOption()I

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 208
    invoke-virtual {v2, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    move/from16 v3, v21

    goto :goto_3

    .line 213
    .end local v13    # "desc":Ljava/lang/StringBuilder;
    :cond_5
    :goto_2
    move/from16 v3, v21

    .end local v21    # "doHaveContent":Z
    .restart local v3    # "doHaveContent":Z
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 214
    const/4 v5, 0x1

    return v5

    .line 216
    :cond_7
    return v5
.end method

.method private blacklist encodeHexString([B)Ljava/lang/String;
    .locals 3
    .param p1, "byteArray"    # [B

    .line 560
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 561
    .local v0, "hexStringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 562
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, Landroid/os/OplusDailyBattProtoManager;->byteToHex(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getDeepSleepOption()I
    .locals 3

    .line 575
    const/4 v0, 0x2

    .line 576
    .local v0, "option":I
    iget-object v1, p0, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 578
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz v1, :cond_0

    .line 579
    const-string v2, "oppoguardelf_deepsleep_switch_state"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 583
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return v0
.end method

.method public static blacklist getInstance(Landroid/os/BatteryStats;)Landroid/os/OplusDailyBattProtoManager;
    .locals 2
    .param p0, "impl"    # Landroid/os/BatteryStats;

    .line 114
    sget-object v0, Landroid/os/OplusDailyBattProtoManager;->sInstance:Landroid/os/OplusDailyBattProtoManager;

    if-nez v0, :cond_1

    .line 115
    const-class v0, Landroid/os/OplusDailyBattProtoManager;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Landroid/os/OplusDailyBattProtoManager;->sInstance:Landroid/os/OplusDailyBattProtoManager;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Landroid/os/OplusDailyBattProtoManager;

    invoke-direct {v1, p0}, Landroid/os/OplusDailyBattProtoManager;-><init>(Landroid/os/BatteryStats;)V

    sput-object v1, Landroid/os/OplusDailyBattProtoManager;->sInstance:Landroid/os/OplusDailyBattProtoManager;

    .line 119
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 121
    :cond_1
    :goto_0
    sget-object v0, Landroid/os/OplusDailyBattProtoManager;->sInstance:Landroid/os/OplusDailyBattProtoManager;

    return-object v0
.end method

.method private blacklist getTotalRAM()J
    .locals 4

    .line 591
    iget-wide v0, p0, Landroid/os/OplusDailyBattProtoManager;->mTotalRAM:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 593
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 594
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/os/OplusDailyBattProtoManager;->mTotalRAM:J

    .line 596
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_0
    iget-wide v0, p0, Landroid/os/OplusDailyBattProtoManager;->mTotalRAM:J

    return-wide v0
.end method

.method private blacklist handleNetworkProtoDetail(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "initMode"    # J
    .param p4, "modMode"    # J

    .line 512
    const/4 v0, 0x0

    .line 514
    .local v0, "net":I
    const/4 v1, 0x4

    shr-long v2, p4, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 515
    shr-long v1, p2, v1

    long-to-int v1, v1

    .line 516
    .local v1, "networkType":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    const/4 v0, 0x7

    .line 544
    goto :goto_0

    .line 538
    :pswitch_1
    const/4 v0, 0x6

    .line 540
    goto :goto_0

    .line 534
    :pswitch_2
    const/4 v0, 0x5

    .line 536
    goto :goto_0

    .line 530
    :pswitch_3
    const/4 v0, 0x4

    .line 532
    goto :goto_0

    .line 526
    :pswitch_4
    const/4 v0, 0x3

    .line 528
    goto :goto_0

    .line 522
    :pswitch_5
    const/4 v0, 0x2

    .line 524
    goto :goto_0

    .line 518
    :pswitch_6
    const/4 v0, 0x1

    .line 549
    .end local v1    # "networkType":I
    :cond_0
    :goto_0
    const-wide v1, 0x10e00000006L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 550
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist ifDailyProtoEnabled()Z
    .locals 4

    .line 600
    iget-object v0, p0, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "daily_batt_proto_switch"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 603
    return v3

    .line 605
    :cond_0
    return v1

    .line 608
    :cond_1
    return v1
.end method

.method private static blacklist myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 108
    sget-boolean v0, Landroid/os/OplusDailyBattProtoManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "OplusDailyBattProtoManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init with ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    .line 133
    return-void
.end method

.method public blacklist noteConnectivityChangedLocked(ILjava/lang/String;III)[I
    .locals 10
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "phoneDataConnectionType"    # I
    .param p4, "modStepMode"    # I
    .param p5, "curStepMode"    # I

    .line 311
    sget-boolean v0, Landroid/os/OplusDailyBattProtoManager;->DEBUG:Z

    const-string v1, ")"

    const-string v2, "), curStepMode: "

    const-string v3, "("

    const-string v4, "OplusDailyBattProtoManager"

    if-eqz v0, :cond_0

    .line 312
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noteConnectivityChangedLocked - type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", phoneDataConnectionType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "noteConnectivityChangedLocked - (before) modStepMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, p4, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, p5, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    .line 319
    if-eqz v0, :cond_1

    .line 320
    const-string v5, "noteConnectivityChangedLocked - Update to TYPE_NETWORK_OFF(0) accordingly"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 380
    const-string v5, "### Not my intresting type, ignore it"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    goto/16 :goto_1

    .line 329
    :pswitch_0
    shr-int/lit8 v5, p5, 0x4

    iput v5, p0, Landroid/os/OplusDailyBattProtoManager;->mPreiousNetworkType:I

    .line 331
    if-eqz v0, :cond_2

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Store previous network type : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Landroid/os/OplusDailyBattProtoManager;->mPreiousNetworkType:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_2
    const/4 v5, 0x0

    .line 337
    .local v5, "finalStepMode":I
    iget v8, p0, Landroid/os/OplusDailyBattProtoManager;->mPreiousNetworkType:I

    packed-switch v8, :pswitch_data_1

    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### Why change to disconnected from unexpected type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/os/OplusDailyBattProtoManager;->mPreiousNetworkType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    :pswitch_1
    const-string v8, "### Why change to disconnected from TYPE_NETWORK_OFF_FROM_DATA_NR(6)"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    goto :goto_0

    .line 359
    :pswitch_2
    const-string v8, "### Why change to disconnected from TYPE_NETWORK_OFF_FROM_DATA_REST(5)"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    goto :goto_0

    .line 355
    :pswitch_3
    const-string v8, "### Why change to disconnected from TYPE_NETWORK_OFF_FROM_WIFI(4)"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto :goto_0

    .line 351
    :pswitch_4
    const/4 v5, 0x6

    .line 353
    goto :goto_0

    .line 347
    :pswitch_5
    const/4 v5, 0x5

    .line 349
    goto :goto_0

    .line 343
    :pswitch_6
    const/4 v5, 0x4

    .line 345
    goto :goto_0

    .line 339
    :pswitch_7
    const-string v8, "### Why change to disconnected from TYPE_NETWORK_OFF(0)"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    nop

    .line 372
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finalStepMode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    shr-int/lit8 v8, p5, 0x4

    xor-int/2addr v8, v5

    shl-int/lit8 v8, v8, 0x4

    or-int/2addr p4, v8

    .line 375
    and-int/lit16 v8, p5, -0xf1

    shl-int/lit8 v9, v5, 0x4

    or-int p5, v8, v9

    .line 377
    .end local v5    # "finalStepMode":I
    goto :goto_1

    .line 385
    :cond_3
    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 387
    if-ne p1, v7, :cond_5

    .line 389
    if-eqz v0, :cond_4

    .line 390
    const-string v5, "noteConnectivityChangedLocked - Update to TYPE_NETWORK_WIFI(1)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_4
    shr-int/lit8 v5, p5, 0x4

    xor-int/2addr v5, v7

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr p4, v5

    .line 393
    and-int/lit16 v5, p5, -0xf1

    or-int/lit8 p5, v5, 0x10

    goto :goto_1

    .line 395
    :cond_5
    if-nez p1, :cond_9

    .line 398
    sget v5, Landroid/os/OplusDailyBattProtoManager;->MY_LOCAL_NETWORK_TYPE_NR:I

    if-ne p3, v5, :cond_7

    .line 400
    if-eqz v0, :cond_6

    .line 401
    const-string v5, "noteConnectivityChangedLocked - Update to TYPE_NETWORK_DATA_NR(3)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_6
    shr-int/lit8 v5, p5, 0x4

    xor-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr p4, v5

    .line 404
    and-int/lit16 v5, p5, -0xf1

    or-int/lit8 p5, v5, 0x30

    goto :goto_1

    .line 407
    :cond_7
    if-eqz v0, :cond_8

    .line 408
    const-string v5, "noteConnectivityChangedLocked - Update to TYPE_NETWORK_DATA_REST(2)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_8
    shr-int/lit8 v5, p5, 0x4

    xor-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr p4, v5

    .line 411
    and-int/lit16 v5, p5, -0xf1

    or-int/lit8 p5, v5, 0x20

    .line 415
    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "noteConnectivityChangedLocked - (after) modStepMode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v5, p4, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p5, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_a
    new-array v0, v6, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    aput p5, v0, v7

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist notePhoneDataConnectionStateLocked(IZIIII)[I
    .locals 16
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "bin"    # I
    .param p4, "historyCurStates"    # I
    .param p5, "modStepMode"    # I
    .param p6, "curStepMode"    # I

    .line 423
    move/from16 v0, p3

    move/from16 v1, p5

    move/from16 v2, p6

    sget-boolean v3, Landroid/os/OplusDailyBattProtoManager;->DEBUG:Z

    const-string v4, ")"

    const-string v5, "), curStepMode: "

    const-string v6, "("

    const-string v7, "OplusDailyBattProtoManager"

    if-eqz v3, :cond_0

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update phone Data connection "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasData: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notePhoneDataConnectionStateLocked - (before) modStepMode: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    shr-int/lit8 v10, v1, 0x4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    shr-int/lit8 v10, v2, 0x4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_0
    move/from16 v9, p2

    .line 430
    :goto_0
    shr-int/lit8 v8, v2, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-ne v8, v12, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v11

    .line 431
    .local v8, "ifDataRest":Z
    :goto_1
    shr-int/lit8 v13, v2, 0x4

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    move v13, v10

    goto :goto_2

    :cond_2
    move v13, v11

    .line 432
    .local v13, "ifDataDR":Z
    :goto_2
    if-nez v8, :cond_3

    if-eqz v13, :cond_7

    .line 433
    :cond_3
    sget v15, Landroid/os/OplusDailyBattProtoManager;->MY_LOCAL_NETWORK_TYPE_NR:I

    if-ne v0, v15, :cond_5

    .line 434
    if-eqz v3, :cond_4

    .line 435
    const-string v15, "notePhoneDataConnectionStateLocked - Update to NETWORK_TYPE_NR(3)"

    invoke-static {v7, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_4
    shr-int/lit8 v15, v2, 0x4

    xor-int/2addr v14, v15

    shl-int/lit8 v14, v14, 0x4

    or-int/2addr v1, v14

    .line 438
    .end local p5    # "modStepMode":I
    .local v1, "modStepMode":I
    and-int/lit16 v14, v2, -0xf1

    or-int/lit8 v2, v14, 0x30

    .end local p6    # "curStepMode":I
    .local v2, "curStepMode":I
    goto :goto_3

    .line 440
    .end local v1    # "modStepMode":I
    .end local v2    # "curStepMode":I
    .restart local p5    # "modStepMode":I
    .restart local p6    # "curStepMode":I
    :cond_5
    if-eqz v3, :cond_6

    .line 441
    const-string v14, "notePhoneDataConnectionStateLocked - Update to TYPE_NETWORK_DATA_REST(2)"

    invoke-static {v7, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_6
    shr-int/lit8 v14, v2, 0x4

    xor-int/2addr v14, v12

    shl-int/lit8 v14, v14, 0x4

    or-int/2addr v1, v14

    .line 444
    .end local p5    # "modStepMode":I
    .restart local v1    # "modStepMode":I
    and-int/lit16 v14, v2, -0xf1

    or-int/lit8 v2, v14, 0x20

    .line 447
    .end local p6    # "curStepMode":I
    .restart local v2    # "curStepMode":I
    :cond_7
    :goto_3
    if-eqz v3, :cond_8

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "notePhoneDataConnectionStateLocked - (after) modStepMode: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v14, v1, 0x4

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    shr-int/lit8 v5, v2, 0x4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_8
    new-array v3, v12, [I

    aput v1, v3, v11

    aput v2, v3, v10

    return-object v3
.end method

.method public blacklist registerRomUpdate()V
    .locals 4

    .line 136
    const-string v0, "registerRomUpdate"

    invoke-static {v0}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    const-string v1, "OplusDailyBattProtoManager"

    if-eqz v0, :cond_0

    .line 138
    new-instance v0, Landroid/os/OplusBaseBatteryStatsRUSHelper;

    iget-object v2, p0, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    const-string v3, "sys_daily_proto_config"

    invoke-direct {v0, v2, v3}, Landroid/os/OplusBaseBatteryStatsRUSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/OplusDailyBattProtoManager;->mOplusBaseBatteryStatsRUSHelper:Landroid/os/OplusBaseBatteryStatsRUSHelper;

    .line 139
    invoke-virtual {v0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->registerRomUpdate()V

    .line 140
    const-string v0, "registerRomUpdate ok"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_0
    const-string v0, "mContext is still null, can\'t registerRomUpdate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void
.end method

.method public blacklist reportDailyProto()V
    .locals 19

    .line 221
    move-object/from16 v1, p0

    const-string v2, "reportDailyProto IOException, error = "

    const-string v3, "reportDailyProto FileNotFoundException, error = "

    const-string v4, "/data/system/latest_daily_proto.bin"

    const-string v5, "OplusDailyBattProtoManager"

    const-string v0, "reportDailyProto"

    invoke-static {v0}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 224
    invoke-direct/range {p0 .. p0}, Landroid/os/OplusDailyBattProtoManager;->ifDailyProtoEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const-string v0, "oops, this proto reporting feature is off, just return..."

    invoke-static {v0}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 226
    return-void

    .line 228
    :cond_0
    const/4 v6, 0x0

    .line 230
    .local v6, "hasContent":Z
    const/4 v7, 0x0

    .line 232
    .local v7, "protOut":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "protoFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v8

    .line 234
    new-instance v8, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 235
    .local v8, "proto":Landroid/util/proto/ProtoOutputStream;
    const/4 v9, 0x0

    invoke-direct {v1, v9, v8}, Landroid/os/OplusDailyBattProtoManager;->dumpLatestDailyInfo(Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v6, v9

    .line 245
    .end local v0    # "protoFile":Ljava/io/File;
    .end local v8    # "proto":Landroid/util/proto/ProtoOutputStream;
    nop

    .line 246
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :cond_1
    :goto_0
    goto :goto_1

    .line 248
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 249
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 251
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_d

    .line 240
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_2
    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .end local v0    # "ex":Ljava/io/IOException;
    if-eqz v7, :cond_1

    .line 246
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 237
    :catch_2
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v7, :cond_1

    .line 246
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 252
    :goto_1
    sget-boolean v0, Landroid/os/OplusDailyBattProtoManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasContent = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    if-eqz v6, :cond_a

    .line 256
    const/4 v8, 0x0

    .line 257
    .local v8, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 260
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_6
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 261
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v9, v0

    .line 262
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 263
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 264
    .local v4, "length":I
    :goto_2
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v4, v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 265
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "read in length:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 266
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 268
    :cond_3
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 269
    .local v10, "bytes":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes.length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 272
    invoke-direct {v1, v10}, Landroid/os/OplusDailyBattProtoManager;->encodeHexString([B)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "hexString":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hexString = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 276
    iget-object v12, v1, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    if-eqz v12, :cond_4

    .line 277
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 278
    .local v12, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "ver"

    const-string v14, "2.1"

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v13, "proto"

    invoke-interface {v12, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v13, v1, Landroid/os/OplusDailyBattProtoManager;->mContext:Landroid/content/Context;

    const-string v14, "30406"

    const-string v15, "DailyBattProto"

    const-string v16, "DailyBattProto"

    const/16 v18, 0x0

    move-object/from16 v17, v12

    invoke-static/range {v13 .. v18}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 283
    const-string v13, "insert into OplusStatistics..."

    invoke-static {v13}, Landroid/os/OplusDailyBattProtoManager;->myLog(Ljava/lang/String;)V

    .line 285
    .end local v12    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    .line 286
    :cond_4
    const-string v12, "mContext is still null"

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 297
    .end local v0    # "buffer":[B
    .end local v4    # "length":I
    .end local v10    # "bytes":[B
    .end local v11    # "hexString":Ljava/lang/String;
    :goto_3
    nop

    .line 298
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 300
    nop

    .line 301
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    .line 296
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_7

    .line 292
    :catch_3
    move-exception v0

    .line 293
    .local v0, "ex":Ljava/io/IOException;
    :try_start_8
    invoke-static {v5, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 294
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 297
    .end local v0    # "ex":Ljava/io/IOException;
    if-eqz v8, :cond_5

    .line 298
    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 300
    :cond_5
    if-eqz v9, :cond_7

    .line 301
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    .line 289
    :catch_4
    move-exception v0

    .line 290
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_a
    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 297
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v8, :cond_6

    .line 298
    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 303
    :catch_5
    move-exception v0

    goto :goto_5

    .line 300
    :cond_6
    :goto_4
    if-eqz v9, :cond_7

    .line 301
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    .line 304
    .local v0, "ex":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    .end local v0    # "ex":Ljava/io/IOException;
    goto :goto_c

    .line 305
    :cond_7
    :goto_6
    goto :goto_c

    .line 297
    :goto_7
    if-eqz v8, :cond_8

    .line 298
    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_8

    .line 303
    :catch_6
    move-exception v0

    goto :goto_9

    .line 300
    :cond_8
    :goto_8
    if-eqz v9, :cond_9

    .line 301
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_a

    .line 304
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 305
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_9
    :goto_a
    nop

    .line 306
    :goto_b
    throw v2

    .line 308
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_a
    :goto_c
    return-void

    .line 245
    :goto_d
    if-eqz v7, :cond_b

    .line 246
    :try_start_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_e

    .line 248
    :catch_7
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 249
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 250
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_b
    :goto_e
    nop

    .line 251
    :goto_f
    throw v2
.end method
