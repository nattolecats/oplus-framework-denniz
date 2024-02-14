.class Lcom/oplus/resolver/OplusResolverDialogHelper$2;
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

    .line 122
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$2;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 125
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$2;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$2;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$2;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 128
    :cond_0
    return-void
.end method
