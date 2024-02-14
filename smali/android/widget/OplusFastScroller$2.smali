.class Landroid/widget/OplusFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OplusFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OplusFastScroller;
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

    .line 311
    iput-object p1, p0, Landroid/widget/OplusFastScroller$2;->this$0:Landroid/widget/OplusFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 314
    iget-object v0, p0, Landroid/widget/OplusFastScroller$2;->this$0:Landroid/widget/OplusFastScroller;

    invoke-static {v0}, Landroid/widget/OplusFastScroller;->-$$Nest$fgetmShowingPrimary(Landroid/widget/OplusFastScroller;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/OplusFastScroller;->-$$Nest$fputmShowingPrimary(Landroid/widget/OplusFastScroller;Z)V

    .line 315
    return-void
.end method
