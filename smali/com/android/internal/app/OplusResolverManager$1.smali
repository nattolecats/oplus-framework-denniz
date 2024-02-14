.class Lcom/android/internal/app/OplusResolverManager$1;
.super Ljava/lang/Object;
.source "OplusResolverManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/OplusResolverManager;->addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/OplusResolverManager;

.field final synthetic blacklist val$child:Landroid/view/ViewGroup;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/OplusResolverManager;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/OplusResolverManager;

    .line 614
    iput-object p1, p0, Lcom/android/internal/app/OplusResolverManager$1;->this$0:Lcom/android/internal/app/OplusResolverManager;

    iput-object p2, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPreDraw()Z
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 619
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager$1;->this$0:Lcom/android/internal/app/OplusResolverManager;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/OplusResolverManager;->-$$Nest$mgetBackgroundDrawable(Lcom/android/internal/app/OplusResolverManager;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 620
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager$1;->val$child:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 622
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
