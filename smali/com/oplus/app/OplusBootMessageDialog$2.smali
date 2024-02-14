.class Lcom/oplus/app/OplusBootMessageDialog$2;
.super Ljava/lang/Object;
.source "OplusBootMessageDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/app/OplusBootMessageDialog;->startProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/app/OplusBootMessageDialog;

.field final synthetic blacklist val$icon:Landroid/widget/ImageView;

.field final synthetic blacklist val$message:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/app/OplusBootMessageDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/app/OplusBootMessageDialog;

    .line 229
    iput-object p1, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    iput-object p2, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->val$message:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 232
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 236
    .local v0, "alpha":Ljava/lang/Float;
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 237
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->val$message:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const v2, 0x3f666666    # 0.9f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    invoke-static {v1}, Lcom/oplus/app/OplusBootMessageDialog;->-$$Nest$fgetmIsStartAnimation(Lcom/oplus/app/OplusBootMessageDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/app/OplusBootMessageDialog;->-$$Nest$fputmIsStartAnimation(Lcom/oplus/app/OplusBootMessageDialog;Z)V

    .line 242
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$2;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    invoke-static {v1}, Lcom/oplus/app/OplusBootMessageDialog;->-$$Nest$fgetmAnimationDrawable(Lcom/oplus/app/OplusBootMessageDialog;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 244
    :cond_0
    return-void
.end method
