.class Lcom/oplus/widget/OplusTextClock$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusTextClock.java"


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

    .line 171
    iput-object p1, p0, Lcom/oplus/widget/OplusTextClock$1;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 174
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$1;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$fgetmStopTicking(Lcom/oplus/widget/OplusTextClock;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$1;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$fgetmTimeZone(Lcom/oplus/widget/OplusTextClock;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    const-string v0, "time-zone"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "timeZone":Ljava/lang/String;
    iget-object v1, p0, Lcom/oplus/widget/OplusTextClock$1;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v1, v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$mcreateTime(Lcom/oplus/widget/OplusTextClock;Ljava/lang/String;)V

    .line 181
    .end local v0    # "timeZone":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/oplus/widget/OplusTextClock$1;->this$0:Lcom/oplus/widget/OplusTextClock;

    invoke-static {v0}, Lcom/oplus/widget/OplusTextClock;->-$$Nest$monTimeChanged(Lcom/oplus/widget/OplusTextClock;)V

    .line 182
    return-void
.end method
