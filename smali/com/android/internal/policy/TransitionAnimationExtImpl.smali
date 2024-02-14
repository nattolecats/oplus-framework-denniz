.class public Lcom/android/internal/policy/TransitionAnimationExtImpl;
.super Ljava/lang/Object;
.source "TransitionAnimationExtImpl.java"


# static fields
.field private static final blacklist OPLUS_ROUNDED_CORNERS_ANIM_PREFIX:Ljava/lang/String; = "oplus_rounded_corners_anim_"

.field private static final blacklist isLightOS:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.windowanimaiton.light"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/TransitionAnimationExtImpl;->isLightOS:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addAnimationRoundedCorners(Landroid/content/Context;Ljava/lang/String;ILandroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "animation"    # Landroid/view/animation/Animation;

    .line 21
    sget-boolean v0, Lcom/android/internal/policy/TransitionAnimationExtImpl;->isLightOS:Z

    if-eqz v0, :cond_0

    .line 22
    return-object p3

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "animResName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    const-string v1, "oplus_rounded_corners_anim_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    .line 31
    :cond_1
    return-object p3
.end method

.method public static blacklist hookLoadAnimationSafely(Landroid/content/Context;Ljava/lang/String;ILandroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "animation"    # Landroid/view/animation/Animation;

    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimationExtImpl;->addAnimationRoundedCorners(Landroid/content/Context;Ljava/lang/String;ILandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method
