.class Lcom/oplus/resolver/OplusResolverDialogHelper$4;
.super Ljava/lang/Object;
.source "OplusResolverDialogHelper.java"

# interfaces
.implements Lcom/oplus/widget/OplusViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/resolver/OplusResolverDialogHelper;->setResolveView(ZLandroid/os/UserHandle;Lcom/oplus/resolver/OplusResolverDialogViewPager;Lcom/oplus/widget/indicator/OplusPageIndicator;Landroid/widget/CheckBox;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

.field final synthetic blacklist val$dotView:Lcom/oplus/widget/indicator/OplusPageIndicator;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Lcom/oplus/widget/indicator/OplusPageIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverDialogHelper;

    .line 247
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$4;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$4;->val$dotView:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .line 261
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$4;->val$dotView:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/oplus/widget/indicator/OplusPageIndicator;->onPageScrollStateChanged(I)V

    .line 262
    return-void
.end method

.method public whitelist onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .line 256
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$4;->val$dotView:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/widget/indicator/OplusPageIndicator;->onPageScrolled(IFI)V

    .line 257
    return-void
.end method

.method public whitelist onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .line 251
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$4;->val$dotView:Lcom/oplus/widget/indicator/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/oplus/widget/indicator/OplusPageIndicator;->onPageSelected(I)V

    .line 252
    return-void
.end method
