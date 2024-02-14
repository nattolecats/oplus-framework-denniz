.class Lcom/oplus/resolver/OplusResolverOshare$5;
.super Ljava/lang/Object;
.source "OplusResolverOshare.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare;->initOShareView(Landroid/view/View;)V
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

    .line 350
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$5;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .line 353
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$5;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOshareClosedTitle(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 354
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$5;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$manimatePress(Lcom/oplus/resolver/OplusResolverOshare;)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$5;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$manimateNormal(Lcom/oplus/resolver/OplusResolverOshare;)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 359
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$5;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$manimateNormal(Lcom/oplus/resolver/OplusResolverOshare;)V

    .line 362
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
