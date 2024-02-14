.class public Landroid/os/TheiaEventInfo;
.super Ljava/lang/Object;
.source "TheiaEventInfo.java"


# instance fields
.field public blacklist mExtraInfo:Ljava/lang/String;

.field public blacklist mLogInfo:Landroid/os/TheiaLogInfo;

.field public blacklist mPid:I

.field public blacklist mTheiaID:J

.field public blacklist mTimeStamp:J

.field public blacklist mUid:I


# direct methods
.method public constructor blacklist <init>(JJIILandroid/os/TheiaLogInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "theiaID"    # J
    .param p3, "timeStamp"    # J
    .param p5, "pid"    # I
    .param p6, "uid"    # I
    .param p7, "logInfo"    # Landroid/os/TheiaLogInfo;
    .param p8, "extraInfo"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Landroid/os/TheiaEventInfo;->mTheiaID:J

    .line 26
    iput-wide p3, p0, Landroid/os/TheiaEventInfo;->mTimeStamp:J

    .line 27
    iput p5, p0, Landroid/os/TheiaEventInfo;->mPid:I

    .line 28
    iput p6, p0, Landroid/os/TheiaEventInfo;->mUid:I

    .line 29
    iput-object p7, p0, Landroid/os/TheiaEventInfo;->mLogInfo:Landroid/os/TheiaLogInfo;

    .line 30
    iput-object p8, p0, Landroid/os/TheiaEventInfo;->mExtraInfo:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private static blacklist toHex(J)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # J

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "0x%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 52
    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Landroid/os/TheiaEventInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 55
    return v2

    .line 57
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/TheiaEventInfo;

    .line 58
    .local v1, "that":Landroid/os/TheiaEventInfo;
    iget-wide v3, p0, Landroid/os/TheiaEventInfo;->mTheiaID:J

    iget-wide v5, v1, Landroid/os/TheiaEventInfo;->mTheiaID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getTheiaID()J
    .locals 2

    .line 47
    iget-wide v0, p0, Landroid/os/TheiaEventInfo;->mTheiaID:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Landroid/os/TheiaEventInfo;->mTheiaID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/os/TheiaEventInfo;->mTheiaID:J

    invoke-static {v1, v2}, Landroid/os/TheiaEventInfo;->toHex(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/os/TheiaEventInfo;->mTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/os/TheiaEventInfo;->mLogInfo:Landroid/os/TheiaLogInfo;

    invoke-virtual {v3}, Landroid/os/TheiaLogInfo;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/TheiaEventInfo;->toHex(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/TheiaEventInfo;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/TheiaEventInfo;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/TheiaEventInfo;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
