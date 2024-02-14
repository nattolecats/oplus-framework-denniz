.class Lcom/oplus/app/OplusBootMessageDialog$1;
.super Ljava/lang/Object;
.source "OplusBootMessageDialog.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/app/OplusBootMessageDialog;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/oplus/app/OplusBootMessageDialog;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/app/OplusBootMessageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oplus/app/OplusBootMessageDialog;

    .line 208
    iput-object p1, p0, Lcom/oplus/app/OplusBootMessageDialog$1;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 211
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 212
    .local v0, "alpha":Ljava/lang/Float;
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$1;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    invoke-virtual {v1}, Lcom/oplus/app/OplusBootMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog$1;->this$0:Lcom/oplus/app/OplusBootMessageDialog;

    invoke-static {v1}, Lcom/oplus/app/OplusBootMessageDialog;->access$001(Lcom/oplus/app/OplusBootMessageDialog;)V

    .line 216
    :cond_0
    return-void
.end method
