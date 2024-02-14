.class Lcom/oplus/resolver/OplusResolverOshare$6;
.super Ljava/lang/Object;
.source "OplusResolverOshare.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare;->lambda$initOShareView$0$com-oplus-resolver-OplusResolverOshare(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverOshare;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverOshare;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverOshare;

    .line 368
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$6;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 371
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$6;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceInited(Lcom/oplus/resolver/OplusResolverOshare;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$6;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$6;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOShareServiceUtil(Lcom/oplus/resolver/OplusResolverOshare;)Lcom/oplus/oshare/OplusOshareServiceUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/oshare/OplusOshareServiceUtil;->initShareEngine()V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$6;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverOshare;->initOShareService()V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$6;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fputmIsOshareApplicationEnable(Lcom/oplus/resolver/OplusResolverOshare;Z)V

    .line 379
    :cond_1
    return-void
.end method
