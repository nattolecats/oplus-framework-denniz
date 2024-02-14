.class public Landroid/os/OplusHistoryMsg;
.super Ljava/lang/Object;
.source "OplusHistoryMsg.java"


# static fields
.field public static final blacklist BACKWARD_MSG_HANDLER_THRESHOLD:I = 0xc8

.field public static final blacklist BACKWARD_MSG_MAX_SLOW_THRESHOLD:I = 0xc8

.field public static final blacklist BACKWARD_MSG_PENDING_COUNT:I = 0x14

.field public static final blacklist MSG_TYPE_DISPATCH_HMAIN_SLOW:Ljava/lang/String; = "msg_h_handler_slow"

.field public static final blacklist MSG_TYPE_DISPATCH_SELF_SLOW:Ljava/lang/String; = "msg_slef_handler_slow"

.field public static final blacklist MSG_TYPE_DISPATCH_SLOW:Ljava/lang/String; = "msg_dispatch_slow"

.field public static final blacklist MSG_TYPE_NORMAL:Ljava/lang/String; = "msg_normal_ms"

.field public static final blacklist M_HANDLER_NAME:Ljava/lang/String; = "android.app.ActivityThread$H"


# instance fields
.field blacklist mArg1:I

.field blacklist mArg2:I

.field blacklist mCallback:Ljava/lang/String;

.field blacklist mCount:I

.field blacklist mEndTime:J

.field private blacklist mStartTime:J

.field blacklist mTarget:Ljava/lang/String;

.field blacklist mType:Ljava/lang/String;

.field blacklist mWall:J

.field blacklist mWhat:I

.field blacklist mWhen:J


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/OplusHistoryMsg;->mCount:I

    .line 68
    return-void
.end method

.method public static blacklist convertMsg(Landroid/os/Message;)Landroid/os/OplusHistoryMsg;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .line 77
    new-instance v0, Landroid/os/OplusHistoryMsg;

    invoke-direct {v0}, Landroid/os/OplusHistoryMsg;-><init>()V

    .line 78
    .local v0, "oplusMsg":Landroid/os/OplusHistoryMsg;
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v0, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    .line 80
    iget-wide v1, p0, Landroid/os/Message;->when:J

    iput-wide v1, v0, Landroid/os/OplusHistoryMsg;->mWhen:J

    .line 81
    iget v1, p0, Landroid/os/Message;->arg1:I

    iput v1, v0, Landroid/os/OplusHistoryMsg;->mArg1:I

    .line 82
    iget v1, p0, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/OplusHistoryMsg;->mArg2:I

    .line 83
    iget v1, p0, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/OplusHistoryMsg;->mWhat:I

    .line 84
    return-object v0
.end method

.method public static blacklist endMsg(Landroid/os/OplusHistoryMsg;)Landroid/os/OplusHistoryMsg;
    .locals 4
    .param p0, "msg"    # Landroid/os/OplusHistoryMsg;

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/OplusHistoryMsg;->mEndTime:J

    .line 89
    iget-wide v2, p0, Landroid/os/OplusHistoryMsg;->mStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/os/OplusHistoryMsg;->mWall:J

    .line 90
    invoke-static {p0}, Landroid/os/OplusHistoryMsg;->generateMsgType(Landroid/os/OplusHistoryMsg;)V

    .line 91
    return-object p0
.end method

.method private static blacklist generateMsgType(Landroid/os/OplusHistoryMsg;)V
    .locals 7
    .param p0, "msg"    # Landroid/os/OplusHistoryMsg;

    .line 95
    const-string v0, "msg_normal_ms"

    .line 96
    .local v0, "type":Ljava/lang/String;
    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mWall:J

    .line 98
    .local v1, "wall":J
    iget-object v3, p0, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    const-wide/16 v4, 0xc8

    if-eqz v3, :cond_2

    .line 99
    const-string v6, "android.app.ActivityThread$H"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    .line 101
    const-string v0, "msg_h_handler_slow"

    goto :goto_0

    .line 102
    :cond_0
    cmp-long v3, v1, v4

    if-lez v3, :cond_1

    .line 103
    const-string v0, "msg_dispatch_slow"

    goto :goto_0

    .line 105
    :cond_1
    const-string v0, "msg_normal_ms"

    goto :goto_0

    .line 108
    :cond_2
    cmp-long v3, v1, v4

    if-lez v3, :cond_3

    .line 109
    const-string v0, "msg_dispatch_slow"

    goto :goto_0

    .line 111
    :cond_3
    const-string v0, "msg_normal_ms"

    .line 114
    :goto_0
    iput-object v0, p0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public static blacklist startMsg(Landroid/os/Message;)Landroid/os/OplusHistoryMsg;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .line 71
    invoke-static {p0}, Landroid/os/OplusHistoryMsg;->convertMsg(Landroid/os/Message;)Landroid/os/OplusHistoryMsg;

    move-result-object v0

    .line 72
    .local v0, "oplusMsg":Landroid/os/OplusHistoryMsg;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/OplusHistoryMsg;->mStartTime:J

    .line 73
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 119
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 120
    return v0

    .line 122
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/os/OplusHistoryMsg;

    .line 126
    .local v2, "that":Landroid/os/OplusHistoryMsg;
    iget-object v3, p0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    iget-object v4, v2, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    .line 127
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 126
    :goto_0
    return v0

    .line 123
    .end local v2    # "that":Landroid/os/OplusHistoryMsg;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusHistoryLooperMessage{mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mWall:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusHistoryMsg;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusHistoryMsg;->mArg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusHistoryMsg;->mArg2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/OplusHistoryMsg;->mWhat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toStringWithoutCount()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/OplusHistoryMsg;->mWall:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/OplusHistoryMsg;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
