.class public Lcom/oplus/debug/InputLog$DebugEvent;
.super Ljava/lang/Object;
.source "InputLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/debug/InputLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugEvent"
.end annotation


# static fields
.field private static final blacklist DEFAULT_STATE_FLAG:I = -0x1

.field private static final blacklist INPUT_DISPATCH_STATE_ENQUEUE:Ljava/lang/String; = "ENQUEUE_EVENT"

.field private static final blacklist INPUT_DISPATCH_STATE_FINISHED:Ljava/lang/String; = "FINISH_EVENT"

.field private static final blacklist INPUT_DISPATCH_STATE_STARTED:Ljava/lang/String; = "START_EVENT"

.field private static final blacklist SEPARATOR:Ljava/lang/String; = "|"

.field private static final blacklist TYPE_KEY:I = 0x1

.field private static final blacklist TYPE_MOTION:I = 0x2


# instance fields
.field private blacklist action:I

.field private blacklist downTime:J

.field private blacklist eventTime:J

.field private final blacklist handleDetail:Ljava/lang/StringBuilder;

.field private final blacklist stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->handleDetail:Ljava/lang/StringBuilder;

    .line 127
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private blacklist formatRecord(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 191
    const-string v0, "|"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v1, "record":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Lcom/oplus/debug/InputLog;->currDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const/4 v2, -0x1

    if-eq v2, p2, :cond_0

    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatRecord error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputLog"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist deliverd(Ljava/lang/String;I)V
    .locals 2
    .param p1, "stage"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .line 158
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, p1, p2}, Lcom/oplus/debug/InputLog$DebugEvent;->formatRecord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public blacklist enqueue(ZZ)V
    .locals 3
    .param p1, "immediately"    # Z
    .param p2, "scheduled"    # Z

    .line 153
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENQUEUE_EVENT|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/oplus/debug/InputLog$DebugEvent;->formatRecord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public blacklist finish(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 171
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "FINISH_EVENT"

    invoke-direct {p0, v1, p1}, Lcom/oplus/debug/InputLog$DebugEvent;->formatRecord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public blacklist handled(Ljava/lang/String;)V
    .locals 3
    .param p1, "detail"    # Ljava/lang/String;

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->handleDetail:Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->handleDetail:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handled error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist match(Landroid/view/InputEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 175
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 176
    return v0

    .line 178
    :cond_0
    instance-of v1, p1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 179
    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    .line 180
    .local v1, "key":Landroid/view/KeyEvent;
    iget v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->type:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->action:I

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-wide v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->downTime:J

    .line 181
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->eventTime:J

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    nop

    .line 180
    :goto_0
    return v0

    .line 182
    .end local v1    # "key":Landroid/view/KeyEvent;
    :cond_2
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 183
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 184
    .local v1, "motion":Landroid/view/MotionEvent;
    iget v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->action:I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->downTime:J

    .line 185
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-wide v3, p0, Lcom/oplus/debug/InputLog$DebugEvent;->eventTime:J

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    nop

    .line 184
    :goto_1
    return v0

    .line 187
    .end local v1    # "motion":Landroid/view/MotionEvent;
    :cond_4
    return v0
.end method

.method public blacklist start(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 130
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 131
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    .line 132
    .local v0, "key":Landroid/view/KeyEvent;
    const/4 v1, 0x1

    iput v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->type:I

    .line 133
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->action:I

    .line 134
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->downTime:J

    .line 135
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->eventTime:J

    .end local v0    # "key":Landroid/view/KeyEvent;
    goto :goto_0

    .line 136
    :cond_0
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 137
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 138
    .local v0, "motion":Landroid/view/MotionEvent;
    const/4 v1, 0x2

    iput v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->type:I

    .line 139
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iput v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->action:I

    .line 140
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->downTime:J

    .line 141
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->eventTime:J

    goto :goto_1

    .line 136
    .end local v0    # "motion":Landroid/view/MotionEvent;
    :cond_1
    :goto_0
    nop

    .line 144
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->handleDetail:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDetail reset failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, -0x1

    const-string v2, "START_EVENT"

    invoke-direct {p0, v2, v1}, Lcom/oplus/debug/InputLog$DebugEvent;->formatRecord(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 207
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DebugEvent [ type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "result":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/oplus/debug/InputLog$DebugEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/debug/InputLog$DebugEvent;->action:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oplus/debug/InputLog$DebugEvent;->downTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/oplus/debug/InputLog$DebugEvent;->eventTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, ", stateRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/debug/InputLog$DebugEvent;->stateRecord:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", handleDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/debug/InputLog$DebugEvent;->handleDetail:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    .end local v0    # "result":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toString error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InputLog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "E"

    return-object v0
.end method
