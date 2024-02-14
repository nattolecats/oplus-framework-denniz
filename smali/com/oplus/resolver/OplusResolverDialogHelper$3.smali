.class Lcom/oplus/resolver/OplusResolverDialogHelper$3;
.super Ljava/lang/Object;
.source "OplusResolverDialogHelper.java"

# interfaces
.implements Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;


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

.field final synthetic blacklist val$viewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverDialogHelper;Lcom/oplus/resolver/OplusResolverDialogViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/resolver/OplusResolverDialogHelper;

    .line 226
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->val$viewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist OnItemClick(I)V
    .locals 7
    .param p1, "position"    # I

    .line 238
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmActivity(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$mclickMoreIcon(Lcom/oplus/resolver/OplusResolverDialogHelper;Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmOnItemClickListener(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmOnItemClickListener(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 244
    :cond_1
    return-void
.end method

.method public whitelist OnItemLongClick(I)V
    .locals 7
    .param p1, "position"    # I

    .line 230
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmLongClickListener(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->this$0:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->-$$Nest$fgetmLongClickListener(Lcom/oplus/resolver/OplusResolverDialogHelper;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    .line 232
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverDialogHelper$3;->val$viewPager:Lcom/oplus/resolver/OplusResolverDialogViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverDialogViewPager;->performHapticFeedback(I)Z

    .line 234
    :cond_0
    return-void
.end method
