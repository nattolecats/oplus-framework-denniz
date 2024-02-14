.class Lcom/oplus/resolver/OplusResolverOshare$11;
.super Ljava/lang/Object;
.source "OplusResolverOshare.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverOshare;->updateOShareUI(Ljava/util/List;)V
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

    .line 615
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 3

    .line 618
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 620
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$mgetBackgroundDrawable(Lcom/oplus/resolver/OplusResolverOshare;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 621
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshare$11;->this$0:Lcom/oplus/resolver/OplusResolverOshare;

    invoke-static {v1}, Lcom/oplus/resolver/OplusResolverOshare;->-$$Nest$fgetmOsharePanelView(Lcom/oplus/resolver/OplusResolverOshare;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 623
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
