.class public Lcom/android/internal/os/OplusRpmSubsystemManager;
.super Ljava/lang/Object;
.source "OplusRpmSubsystemManager.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist MILLISECONDS_IN_MINUTE:J = 0xea60L

.field private static final blacklist TAG:Ljava/lang/String; = "OplusRpmSubsystemManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentElapseRealTime:J

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHundredPercentage:D

.field private blacklist mIsInitialized:Z

.field private blacklist mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastStepRpmSuspendRatioSummary:Ljava/lang/String;

.field private blacklist mLastUpdatedElapseRealTime:J

.field private blacklist mOplusRpmhAvailableSummary:I

.field private blacklist mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRpmSuspendRatioSummay:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/OplusRpmSubsystemManager;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iput-wide v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mHundredPercentage:D

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mContext:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    .line 44
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mCurrentElapseRealTime:J

    .line 45
    iput-wide v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastUpdatedElapseRealTime:J

    .line 46
    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastStepRpmSuspendRatioSummary:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mRpmSuspendRatioSummay:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mIsInitialized:Z

    .line 52
    iput-object p1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method private blacklist init()V
    .locals 2

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 58
    const-string v0, "OplusRpmSubsystemManager"

    const-string v1, "init..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/OplusRpmSubsystemManager;->DEBUG:Z

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mCurrentElapseRealTime:J

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/RpmManager;->getPowerStateSubsystemSleepStateList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mIsInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist copySourceToDestinationDeeply(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "source":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;>;"
    .local p2, "destination":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;>;"
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 145
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 147
    .local v1, "powerStateSubsystemSleepState":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    new-instance v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    invoke-direct {v2}, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;-><init>()V

    .line 148
    .local v2, "state":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    iget-object v3, v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    iput-object v3, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    .line 149
    iget-wide v3, v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    iput-wide v3, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->version:J

    .line 150
    iget-wide v3, v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    iput-wide v3, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    .line 151
    iget-wide v3, v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    iput-wide v3, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->totalTransitions:J

    .line 152
    iget-wide v3, v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    iput-wide v3, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->lastEntryTimestampMs:J

    .line 153
    iget-boolean v3, v1, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    iput-boolean v3, v2, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->supportedOnlyInSuspend:Z

    .line 154
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1    # "powerStateSubsystemSleepState":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    .end local v2    # "state":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    goto :goto_0

    .line 156
    :cond_1
    return-void

    .line 143
    :cond_2
    :goto_1
    return-void
.end method

.method public whitelist getLastStepRpmSuspendRatioSummary()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastStepRpmSuspendRatioSummary:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPowerStateSubsystemSleepStateList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/OplusRpmSubsystemManager;->copySourceToDestinationDeeply(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/RpmManager;->getPowerStateSubsystemSleepStateList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v0, Lcom/android/internal/os/OplusRpmSubsystemManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastPowerStateSubsystemSleepStateList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusRpmSubsystemManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPowerStateSubsystemSleepStateList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    return-object v0

    .line 120
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRpmSubsysDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "summary"    # I

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRpmhAvailableSummary()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mOplusRpmhAvailableSummary:I

    return v0
.end method

.method public whitelist measureOplusRpmMasterStatsDelta()V
    .locals 14

    .line 83
    iget-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mRpmSuspendRatioSummay:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastStepRpmSuspendRatioSummary:Ljava/lang/String;

    .line 84
    const-string v0, "OplusRpmSubsystemManager"

    const-string v1, "measureOplusRpmMasterStatsDelta... "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-wide v1, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mCurrentElapseRealTime:J

    iget-wide v3, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastUpdatedElapseRealTime:J

    sub-long/2addr v1, v3

    .line 86
    .local v1, "elapsedRealTimeDelta":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "elapsedRealTimeDelta :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    goto/16 :goto_1

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .local v3, "summary":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .local v5, "ratio":D
    iget-object v7, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 94
    .local v7, "current":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    iget-object v8, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;

    .line 95
    .local v8, "last":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    iget-wide v9, v7, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    iget-wide v11, v8, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->residencyInMsecSinceBoot:J

    sub-long/2addr v9, v11

    long-to-double v9, v9

    long-to-double v11, v1

    div-double/2addr v9, v11

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double/2addr v9, v11

    .line 96
    .end local v5    # "ratio":D
    .local v9, "ratio":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":%.2f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v11, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v5, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v5, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mPowerStateSubsystemSleepStateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 98
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .end local v7    # "current":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    .end local v8    # "last":Lvendor/oplus/hardware/rpmh/V2_0/PowerStateSubsystemSleepState;
    .end local v9    # "ratio":D
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    .end local v4    # "i":I
    :cond_2
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mRpmSuspendRatioSummay:Ljava/lang/String;

    .line 103
    sget-boolean v4, Lcom/android/internal/os/OplusRpmSubsystemManager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastStepRpmSuspendRatioSummary: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastStepRpmSuspendRatioSummary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRpmSuspendRatioSummay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mRpmSuspendRatioSummay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void

    .line 88
    .end local v3    # "summary":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    return-void
.end method

.method public whitelist onBatteryDrained()V
    .locals 2

    .line 159
    const-string v0, "OplusRpmSubsystemManager"

    const-string v1, "battery drained... "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/os/OplusRpmSubsystemManager;->trigger()V

    .line 161
    return-void
.end method

.method public whitelist onBootCompleted()V
    .locals 2

    .line 167
    const-string v0, "OplusRpmSubsystemManager"

    const-string v1, "onBootCompleted... "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/OplusRpmSubsystemManager;->scheduleUpdateRpmPath(J)V

    .line 170
    return-void
.end method

.method public whitelist onScreenStateChaned(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .line 164
    return-void
.end method

.method public whitelist scheduleUpdateRpmPath(J)V
    .locals 0
    .param p1, "delay"    # J

    .line 179
    return-void
.end method

.method public whitelist trigger()V
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/android/internal/os/OplusRpmSubsystemManager;->init()V

    .line 111
    iget-wide v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mCurrentElapseRealTime:J

    iput-wide v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mLastUpdatedElapseRealTime:J

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mCurrentElapseRealTime:J

    .line 113
    iget-boolean v0, p0, Lcom/android/internal/os/OplusRpmSubsystemManager;->mIsInitialized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/os/OplusRpmSubsystemManager;->getPowerStateSubsystemSleepStateList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/internal/os/OplusRpmSubsystemManager;->measureOplusRpmMasterStatsDelta()V

    .line 116
    :cond_0
    return-void
.end method
