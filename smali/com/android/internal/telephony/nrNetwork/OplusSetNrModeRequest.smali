.class public Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;
.super Ljava/lang/Object;
.source "OplusSetNrModeRequest.java"


# instance fields
.field private blacklist forceReport:Z

.field private blacklist mode:I

.field private blacklist onComplete:Landroid/os/Message;

.field private blacklist slotId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor blacklist <init>(IIZLandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "mode"    # I
    .param p3, "forceReport"    # Z
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->slotId:I

    .line 16
    iput p2, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->mode:I

    .line 17
    iput-boolean p3, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->forceReport:Z

    .line 18
    iput-object p4, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->onComplete:Landroid/os/Message;

    .line 19
    return-void
.end method


# virtual methods
.method public blacklist getMode()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->mode:I

    return v0
.end method

.method public blacklist getOnCompleteMsg()Landroid/os/Message;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->onComplete:Landroid/os/Message;

    return-object v0
.end method

.method public blacklist getSlotId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->slotId:I

    return v0
.end method

.method public blacklist isForceReport()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->forceReport:Z

    return v0
.end method

.method public blacklist setForceReport(Z)V
    .locals 0
    .param p1, "forceReport"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->forceReport:Z

    .line 43
    return-void
.end method

.method public blacklist setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .line 34
    iput p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->mode:I

    .line 35
    return-void
.end method

.method public blacklist setOnCompleteMsg(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .line 50
    iput-object p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->onComplete:Landroid/os/Message;

    .line 51
    return-void
.end method

.method public blacklist setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 26
    iput p1, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->slotId:I

    .line 27
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->slotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ,mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ,forceReport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->forceReport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ,onComplete = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/nrNetwork/OplusSetNrModeRequest;->onComplete:Landroid/os/Message;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
