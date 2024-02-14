.class public Lcom/android/internal/telephony/OplusRecoveryAction;
.super Ljava/lang/Object;
.source "OplusRecoveryAction.java"


# static fields
.field public static final blacklist ACTION_AIREPLANE_MODE:I = 0x8

.field public static final blacklist ACTION_CLEAN_DATA_CONNECTION:I = 0x3

.field public static final blacklist ACTION_DETACH_ATTACH:I = 0x7

.field public static final blacklist ACTION_DISABLE_NR:I = 0x4

.field public static final blacklist ACTION_DISABLE_SA:I = 0xa

.field public static final blacklist ACTION_DISABLE_VOLTE:I = 0x1

.field public static final blacklist ACTION_ENABLE_VOLTE:I = 0x2

.field public static final blacklist ACTION_INVALID:I = -0x1

.field public static final blacklist ACTION_MAX:I = 0xb

.field public static final blacklist ACTION_REBOOT_MODEM:I = 0x9

.field public static final blacklist ACTION_REREGISTER:I = 0x5

.field public static final blacklist ACTION_RESEARCH_NETWORK:I = 0x6

.field public static final blacklist STATE_IDLE:I = 0x1

.field public static final blacklist STATE_IN_RECOVERY:I = 0x2

.field public static final blacklist STATE_RECOVERY_FAILED:I = 0x3

.field public static final blacklist STATE_RECOVERY_SUCCESS:I = 0x4


# instance fields
.field blacklist INVALID:I

.field private blacklist mAction:I

.field private blacklist mPriority:I

.field private blacklist mSotId:I

.field private blacklist mState:I


# direct methods
.method public constructor blacklist <init>(III)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "action"    # I
    .param p3, "priority"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->INVALID:I

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mSotId:I

    .line 27
    iput v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mAction:I

    .line 28
    iput v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mPriority:I

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mState:I

    .line 32
    iput p1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mSotId:I

    .line 33
    iput p2, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mAction:I

    .line 34
    iput p3, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mPriority:I

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist getAction()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mAction:I

    return v0
.end method

.method public blacklist getPriority()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mPriority:I

    return v0
.end method

.method public blacklist getSlotId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mSotId:I

    return v0
.end method

.method public blacklist getState()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mState:I

    return v0
.end method

.method public blacklist setState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 50
    iput p1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mState:I

    .line 51
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecoveryAction is [ slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mSotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/OplusRecoveryAction;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
