.class public Landroid/graphics/drawable/RippleAnimationSessionExtImpl;
.super Ljava/lang/Object;
.source "RippleAnimationSessionExtImpl.java"

# interfaces
.implements Landroid/graphics/drawable/IRippleAnimationSessionExt;


# static fields
.field private static final blacklist ENTER_ANIM_DURATION:I = 0xe9

.field private static final blacklist EXIT_ANIM_DURATION:I = 0xc8

.field private static final blacklist INTERPOLATOR_ENTER_X1:F = 0.17f

.field private static final blacklist INTERPOLATOR_ENTER_X2:F = 0.67f

.field private static final blacklist INTERPOLATOR_ENTER_Y1:F = 0.17f

.field private static final blacklist INTERPOLATOR_ENTER_Y2:F = 1.0f

.field private static final blacklist INTERPOLATOR_EXIT_X1:F = 0.33f

.field private static final blacklist INTERPOLATOR_EXIT_X2:F = 0.83f

.field private static final blacklist INTERPOLATOR_EXIT_Y1:F = 0.0f

.field private static final blacklist INTERPOLATOR_EXIT_Y2:F = 0.83f


# instance fields
.field private final blacklist mEnterAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private final blacklist mExitAnimationInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "base"    # Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleAnimationSessionExtImpl;->mEnterAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f547ae1    # 0.83f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleAnimationSessionExtImpl;->mExitAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    return-void
.end method


# virtual methods
.method public blacklist getEnterAnimationDuration()I
    .locals 1

    .line 53
    const/16 v0, 0xe9

    return v0
.end method

.method public blacklist getEnterAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSessionExtImpl;->mEnterAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public blacklist getExitAnimationDuration()I
    .locals 1

    .line 58
    const/16 v0, 0xc8

    return v0
.end method

.method public blacklist getExitAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 68
    iget-object v0, p0, Landroid/graphics/drawable/RippleAnimationSessionExtImpl;->mExitAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method
