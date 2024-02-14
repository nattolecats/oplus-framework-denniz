.class Lcom/oplus/widget/OplusTextClock$2;
.super Ljava/lang/Object;
.source "OplusTextClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusTextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/widget/OplusTextClock;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/widget/OplusTextClock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/widget/OplusTextClock;

    .line 185
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock$2;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 187
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$2;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$fgetmStopTicking(Lcom/oplus/widget/OplusTextClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$2;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$monTimeChanged(Lcom/oplus/widget/OplusTextClock;)V

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 193
    .local v0, "now":J
    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 195
    .local v2, "next":J
    iget-object v4, p0, Lcom/oplus/widget/OplusTextClock$2;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-virtual {v4}, Lcom/oplus/widget/OplusTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oplus/widget/OplusTextClock$2;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v5}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$fgetmTicker(Lcom/oplus/widget/OplusTextClock;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 196
    return-void
.end method
