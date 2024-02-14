.class Landroid/os/LooperMessageSuperviser$CommandHandler;
.super Landroid/os/Handler;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommandHandler"
.end annotation


# static fields
.field static final blacklist MSG_LOOP_DELAYED_END:I = 0x2

.field static final blacklist MSG_LOOP_NORMAL_END:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/os/LooperMessageSuperviser;


# direct methods
.method constructor blacklist <init>(Landroid/os/LooperMessageSuperviser;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/LooperMessageSuperviser;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 162
    iput-object p1, p0, Landroid/os/LooperMessageSuperviser$CommandHandler;->this$0:Landroid/os/LooperMessageSuperviser;

    .line 163
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    return-void
.end method

.method private blacklist clearDelayedMonitorMessage()V
    .locals 1

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/LooperMessageSuperviser$CommandHandler;->removeMessages(I)V

    .line 202
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 167
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Landroid/os/Message;->when:J

    sub-long/2addr v0, v2

    .line 168
    .local v0, "monitorDelayed":J
    const-wide/16 v2, 0x64

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 170
    .local v2, "monitorThreadDelay":Z
    :goto_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INVALID COMMAND MSG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/LooperMessageSuperviser;->debugI(Ljava/lang/String;)V

    goto :goto_1

    .line 172
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "blockedMsg"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 173
    .local v5, "objMsg":Ljava/lang/Object;
    if-eqz v5, :cond_1

    instance-of v7, v5, Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    .line 174
    move-object v4, v5

    check-cast v4, Ljava/lang/StringBuilder;

    .line 175
    .local v4, "blockedMsg":Ljava/lang/StringBuilder;
    iget-object v6, p0, Landroid/os/LooperMessageSuperviser$CommandHandler;->this$0:Landroid/os/LooperMessageSuperviser;

    invoke-static {v6, v4, v3}, Landroid/os/LooperMessageSuperviser;->-$$Nest$minnerEndLooperMessage(Landroid/os/LooperMessageSuperviser;Ljava/lang/StringBuilder;Z)V

    .line 176
    .end local v4    # "blockedMsg":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 177
    :cond_1
    iget-object v3, p0, Landroid/os/LooperMessageSuperviser$CommandHandler;->this$0:Landroid/os/LooperMessageSuperviser;

    invoke-static {v3, v6, v4}, Landroid/os/LooperMessageSuperviser;->-$$Nest$minnerEndLooperMessage(Landroid/os/LooperMessageSuperviser;Ljava/lang/StringBuilder;Z)V

    .line 179
    goto :goto_1

    .line 181
    .end local v5    # "objMsg":Ljava/lang/Object;
    :pswitch_1
    iget-object v3, p0, Landroid/os/LooperMessageSuperviser$CommandHandler;->this$0:Landroid/os/LooperMessageSuperviser;

    invoke-static {v3, v6, v4}, Landroid/os/LooperMessageSuperviser;->-$$Nest$minnerEndLooperMessage(Landroid/os/LooperMessageSuperviser;Ljava/lang/StringBuilder;Z)V

    .line 182
    nop

    .line 187
    :goto_1
    if-eqz v2, :cond_3

    .line 188
    invoke-static {}, Landroid/os/LooperMessageSuperviser;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loop monitor delayed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/LooperMessageSuperviser$CommandHandler;->this$0:Landroid/os/LooperMessageSuperviser;

    invoke-static {v4}, Landroid/os/LooperMessageSuperviser;->-$$Nest$mgetPackageName(Landroid/os/LooperMessageSuperviser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/LooperMessageSuperviser;->debugI(Ljava/lang/String;)V

    .line 191
    :cond_2
    invoke-direct {p0}, Landroid/os/LooperMessageSuperviser$CommandHandler;->clearDelayedMonitorMessage()V

    .line 193
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
