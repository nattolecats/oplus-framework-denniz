.class Lcom/oplus/resolver/OplusResolverDialogHelper$5;
.super Landroid/os/AsyncTask;
.source "OplusResolverDialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverDialogHelper;->showRecommend(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

.field final synthetic blacklist val$intentType:Ljava/lang/String;

.field final synthetic blacklist val$marketJump:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverDialogHelper;

    .line 390
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->val$marketJump:Landroid/view/View;

    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->val$intentType:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "param"    # [Ljava/lang/Void;

    .line 393
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$msupport(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .line 398
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->val$marketJump:Landroid/view/View;

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->val$intentType:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$mshowMarket(Lcom/oplus/resolver/OplusResolverDialogHelper;ZLandroid/view/View;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 390
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper$5;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
