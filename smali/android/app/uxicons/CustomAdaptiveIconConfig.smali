.class public Landroid/app/uxicons/CustomAdaptiveIconConfig;
.super Ljava/lang/Object;
.source "CustomAdaptiveIconConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist OPLUS_ADAPTIVE_MASK_SIZE:I = 0x96


# instance fields
.field private blacklist mCustomIconFgSize:I

.field private blacklist mCustomIconSize:I

.field private blacklist mCustomMask:Landroid/graphics/Path;

.field private blacklist mDefaultIconSize:I

.field private blacklist mForegroundScalePercent:F

.field private blacklist mIsAdaptiveIconDrawable:Z

.field private blacklist mIsPlatformDrawable:Z

.field private blacklist mScalePercent:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCustomIconFgSize(Landroid/app/uxicons/CustomAdaptiveIconConfig;I)V
    .locals 0

    iput p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconFgSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomIconSize(Landroid/app/uxicons/CustomAdaptiveIconConfig;I)V
    .locals 0

    iput p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCustomMask(Landroid/app/uxicons/CustomAdaptiveIconConfig;Landroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForegroundScalePercent(Landroid/app/uxicons/CustomAdaptiveIconConfig;F)V
    .locals 0

    iput p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mForegroundScalePercent:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAdaptiveIconDrawable(Landroid/app/uxicons/CustomAdaptiveIconConfig;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPlatformDrawable(Landroid/app/uxicons/CustomAdaptiveIconConfig;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScalePercent(Landroid/app/uxicons/CustomAdaptiveIconConfig;F)V
    .locals 0

    iput p1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mScalePercent:F

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const v0, 0xc0500db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mDefaultIconSize:I

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const v0, 0xc0500dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mDefaultIconSize:I

    goto :goto_0

    .line 88
    :cond_1
    const v0, 0xc05008e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mDefaultIconSize:I

    .line 90
    :goto_0
    iget v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mDefaultIconSize:I

    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconSize:I

    .line 91
    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconFgSize:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mScalePercent:F

    .line 94
    iput v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mForegroundScalePercent:F

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    .line 96
    iput-boolean v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/Resources;Landroid/app/uxicons/CustomAdaptiveIconConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public whitelist getCustomIconFgSize()I
    .locals 1

    .line 112
    iget v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconFgSize:I

    return v0
.end method

.method public whitelist getCustomIconSize()I
    .locals 1

    .line 108
    iget v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconSize:I

    return v0
.end method

.method public whitelist getCustomMask()Landroid/graphics/Path;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomMask:Landroid/graphics/Path;

    return-object v0
.end method

.method public whitelist getDefaultIconSize()I
    .locals 1

    .line 100
    iget v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mDefaultIconSize:I

    return v0
.end method

.method public whitelist getForegroundScalePercent()F
    .locals 1

    .line 120
    iget v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mForegroundScalePercent:F

    return v0
.end method

.method public whitelist getIsAdaptiveIconDrawable()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    return v0
.end method

.method public whitelist getIsPlatformDrawable()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    return v0
.end method

.method public whitelist getScalePercent()F
    .locals 1

    .line 116
    iget v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mScalePercent:F

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomIconConfig:DefaultIconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mDefaultIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";CustomIconSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";CustomIconFgSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mCustomIconFgSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";ScalePercent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mScalePercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";ForegroundScalePercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mForegroundScalePercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";IsPlatformDrawable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsPlatformDrawable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";IsAdaptiveIconDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig;->mIsAdaptiveIconDrawable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
