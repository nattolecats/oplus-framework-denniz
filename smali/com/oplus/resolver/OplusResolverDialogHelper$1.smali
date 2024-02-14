.class Lcom/oplus/resolver/OplusResolverDialogHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "OplusResolverDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverDialogHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverDialogHelper;

    .line 110
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 113
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "action":Ljava/lang/String;
    const-string v1, "oplus.intent.action.STOP_CHOOSER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$1;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 119
    :cond_0
    return-void
.end method
