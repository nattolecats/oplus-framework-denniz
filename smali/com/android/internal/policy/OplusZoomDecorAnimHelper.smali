.class public Lcom/android/internal/policy/OplusZoomDecorAnimHelper;
.super Ljava/lang/Object;
.source "OplusZoomDecorAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;,
        Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_ANIM_1:F = 0.33f

.field private static final blacklist ALPHA_ANIM_2:F = 0.67f

.field private static final blacklist BOUND_ALPHA_ANIM_TIME:I = 0xfa

.field private static final blacklist BUTTON_ALPHA_ANIM_1:F = 0.3f

.field private static final blacklist BUTTON_ALPHA_ANIM_2:F = 0.1f

.field private static final blacklist BUTTON_ALPHA_ANIM_TIME:I = 0xc8

.field private static final blacklist COLOR_CHANGE_ANIM_TIME:I = 0x12c

.field private static final blacklist HANDLE_BACKGROUND_ALPHA_ANIM_1:F = 0.3f

.field private static final blacklist HANDLE_BACKGROUND_ALPHA_ANIM_2:F = 0.1f

.field private static final blacklist HANDLE_BACKGROUND_ANIM_TIME:J = 0xd9L

.field private static final blacklist HANDLE_CHANGE_ANIM_TIME:I = 0xd9

.field private static final blacklist SHOW_TIP:I = 0x1

.field private static final blacklist SHOW_TIP_MSG_DELAY:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "ZoomWindowDecorView"


# instance fields
.field private blacklist mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

.field private blacklist mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mHandleColorAnimator:Landroid/animation/ValueAnimator;

.field private final blacklist mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

.field private blacklist mScaleBoundShow:Z

.field private blacklist mThreeButtonAnimator:Landroid/animation/AnimatorSet;

.field private blacklist mThreeButtonShow:Z

.field private blacklist mTipAlphaAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mTipShow:Z

.field private final blacklist mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V
    .locals 2
    .param p1, "zoomDecor"    # Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    .line 80
    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 81
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$updateHandleColor$3$com-android-internal-policy-OplusZoomDecorAnimHelper(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "handleView"    # Landroid/widget/ImageView;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 220
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 221
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 222
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 224
    return-void
.end method

.method synthetic blacklist lambda$updateHandleViewBackgroundWithAnim$4$com-android-internal-policy-OplusZoomDecorAnimHelper(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 275
    return-void
.end method

.method synthetic blacklist lambda$updateScaleBoundWithAnim$0$com-android-internal-policy-OplusZoomDecorAnimHelper(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 112
    return-void
.end method

.method synthetic blacklist lambda$updateThreeButtonWithAnim$2$com-android-internal-policy-OplusZoomDecorAnimHelper(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 186
    return-void
.end method

.method synthetic blacklist lambda$updateTipWithAnim$1$com-android-internal-policy-OplusZoomDecorAnimHelper(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 140
    return-void
.end method

.method public blacklist setScaleBoundShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mScaleBoundShow:Z

    .line 85
    return-void
.end method

.method public blacklist setThreeButtonShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 88
    iput-boolean p1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonShow:Z

    .line 89
    return-void
.end method

.method public blacklist setTipShow(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .line 92
    iput-boolean p1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipShow:Z

    .line 93
    return-void
.end method

.method public blacklist showOrHideTip(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .line 295
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->hasMessages(I)Z

    move-result v1

    const-string v2, "ZoomWindowDecorView"

    if-eqz v1, :cond_1

    .line 299
    const-string v1, "updateTipWithAnim removeMessages 1"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->removeMessages(I)V

    goto :goto_0

    .line 302
    :cond_1
    const-string v0, "hide zoom tip"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateTipWithAnim(Z)V

    .line 306
    :goto_0
    return-void
.end method

.method public blacklist switchTipText(Z)V
    .locals 4
    .param p1, "toMini"    # Z

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->hasMessages(I)Z

    move-result v0

    const-string v2, "ZoomWindowDecorView"

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "switchTipText removeMessages 1"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandler:Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$ZoomDecorHandler;->removeMessages(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getTipView()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 313
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->showOrHideTip(Z)V

    .line 315
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switch tip text to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v1, "mini"

    goto :goto_1

    :cond_2
    const-string v1, "zoom"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getTipView()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    if-eqz p1, :cond_3

    const v1, 0xc0401c0

    goto :goto_2

    :cond_3
    const v1, 0xc0401c1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateTipText(I)V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 319
    return-void
.end method

.method public blacklist updateHandleColor(Z)V
    .locals 8
    .param p1, "toDefault"    # Z

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 203
    :cond_0
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "updateHandleColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 206
    const-string v1, "mHandleView null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 210
    :cond_1
    const-string v0, "#0A7FFB"

    const/4 v1, 0x1

    const-string v2, "#999999"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 211
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 213
    :cond_2
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 217
    .local v0, "handleView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ZoomWindowDecorView;->isSplitMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    const v2, 0xc08007c

    goto :goto_1

    :cond_3
    const v2, 0xc080077

    .line 217
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 219
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$1;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$1;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;ZLandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xd9

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 243
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    return-void
.end method

.method public blacklist updateHandleViewBackground(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 292
    return-void

    .line 285
    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist updateHandleViewBackgroundWithAnim(Z)V
    .locals 11
    .param p1, "hide"    # Z

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 258
    return-void

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->isSplitMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 264
    const v3, 0xc08008d

    goto :goto_0

    :cond_3
    const v3, 0xc08008e

    .line 263
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 266
    new-instance v0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;)V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 268
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move v7, v6

    goto :goto_1

    :cond_5
    move v7, v1

    :goto_1
    aput v7, v5, v2

    if-eqz p1, :cond_6

    move v7, v1

    goto :goto_2

    :cond_6
    move v7, v6

    :goto_2
    const/4 v8, 0x1

    aput v7, v5, v8

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 272
    .local v0, "alphaAnim":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleBackground()Landroid/widget/ImageView;

    move-result-object v3

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v4, [F

    const/high16 v9, 0x3f200000    # 0.625f

    if-eqz p1, :cond_7

    move v10, v6

    goto :goto_3

    :cond_7
    move v10, v9

    :goto_3
    aput v10, v7, v2

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move v9, v6

    :goto_4
    aput v9, v7, v8

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 273
    .local v3, "scaleXAnim":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 276
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    aput-object v3, v4, v8

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xd9

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 278
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v5, v1, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 279
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 280
    const-string v1, "ZoomWindowDecorView"

    const-string v2, "updateHandleViewBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 250
    .end local v0    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "scaleXAnim":Landroid/animation/ValueAnimator;
    :cond_9
    :goto_5
    return-void
.end method

.method public blacklist updateScaleBoundWithAnim(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .line 96
    iget-boolean v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mScaleBoundShow:Z

    if-ne p1, v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOrHideScaleBoundWithAnim current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mScaleBoundShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", just return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getScaleBoundView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setScaleBoundShow(Z)V

    .line 102
    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getScaleBoundView()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getScaleBoundView()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 118
    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public blacklist updateThreeButtonWithAnim(Z)V
    .locals 11
    .param p1, "isShow"    # Z

    .line 152
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 153
    .local v0, "handleView":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    .local v1, "handleDrawable":Landroid/graphics/drawable/Drawable;
    const-string v2, "#999999"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonShow:Z

    const-string v3, "ZoomWindowDecorView"

    if-ne p1, v2, :cond_1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateThreeButtonWithAnim current state is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", just return"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateThreeButtonWithAnim change state, current state is"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setThreeButtonShow(Z)V

    .line 166
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    iget-object v2, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 169
    :cond_2
    const/4 v2, 0x0

    .line 170
    .local v2, "closeBtAnimator":Landroid/animation/ValueAnimator;
    const/4 v3, 0x0

    .line 171
    .local v3, "fullBtAnimator":Landroid/animation/ValueAnimator;
    const/4 v4, 0x0

    .line 172
    .local v4, "handleBtAnimator":Landroid/animation/ValueAnimator;
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getCloseView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getFullView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 173
    iget-boolean v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonShow:Z

    const/4 v6, 0x2

    if-eqz v5, :cond_3

    .line 174
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_0

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 175
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getCloseView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_1

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getFullView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_2

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    goto :goto_0

    .line 178
    :cond_3
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHandleView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_3

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 179
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getCloseView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_4

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 180
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v5}, Lcom/android/internal/widget/ZoomWindowDecorView;->getFullView()Landroid/view/View;

    move-result-object v5

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v6, [F

    fill-array-data v8, :array_5

    invoke-static {v5, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 184
    :goto_0
    new-instance v5, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 188
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    .line 189
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    aput-object v3, v7, v6

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 190
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 191
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e99999a    # 0.3f

    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 193
    iget-object v5, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 196
    :cond_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public blacklist updateTipWithAnim(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .line 121
    iget-boolean v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipShow:Z

    const-string v1, "ZoomWindowDecorView"

    if-ne p1, v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideTipWithAnim current state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", just return"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showOrHideTipWithAnim change state, current state is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setTipShow(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getTipView()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getTipView()Landroid/widget/Button;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mZoomDecor:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->getTipView()Landroid/widget/Button;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 144
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->mTipAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 146
    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
