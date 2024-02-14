.class Landroid/widget/OplusFastScroller$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/OplusFastScroller;->transitionToHidden()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/OplusFastScroller;


# direct methods
.method constructor blacklist <init>(Landroid/widget/OplusFastScroller;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/OplusFastScroller;

    .line 965
    iput-object p1, p0, Landroid/widget/OplusFastScroller$3;->this$0:Landroid/widget/OplusFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 968
    iget-object v0, p0, Landroid/widget/OplusFastScroller$3;->this$0:Landroid/widget/OplusFastScroller;

    invoke-static {v0}, Landroid/widget/OplusFastScroller;->-$$Nest$fgetmState(Landroid/widget/OplusFastScroller;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 969
    iget-object v0, p0, Landroid/widget/OplusFastScroller$3;->this$0:Landroid/widget/OplusFastScroller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/OplusFastScroller;->-$$Nest$fputmState(Landroid/widget/OplusFastScroller;I)V

    .line 971
    :cond_0
    return-void
.end method
