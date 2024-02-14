.class public Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
.super Ljava/lang/Object;
.source "CustomAdaptiveIconConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/uxicons/CustomAdaptiveIconConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;


# direct methods
.method public constructor whitelist <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/app/uxicons/CustomAdaptiveIconConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;-><init>(Landroid/content/res/Resources;Landroid/app/uxicons/CustomAdaptiveIconConfig-IA;)V

    iput-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist create()Landroid/app/uxicons/CustomAdaptiveIconConfig;
    .locals 1

    .line 77
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    return-object v0
.end method

.method public whitelist setCustomIconFgSize(I)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
    .locals 3
    .param p1, "customIconFgSize"    # I

    .line 56
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmCustomIconFgSize(Landroid/app/uxicons/CustomAdaptiveIconConfig;I)V

    .line 57
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmForegroundScalePercent(Landroid/app/uxicons/CustomAdaptiveIconConfig;F)V

    .line 58
    return-object p0
.end method

.method public whitelist setCustomIconSize(I)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
    .locals 3
    .param p1, "customIconSize"    # I

    .line 50
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmCustomIconSize(Landroid/app/uxicons/CustomAdaptiveIconConfig;I)V

    .line 51
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmScalePercent(Landroid/app/uxicons/CustomAdaptiveIconConfig;F)V

    .line 52
    return-object p0
.end method

.method public whitelist setCustomMask(Landroid/graphics/Path;)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
    .locals 1
    .param p1, "customMask"    # Landroid/graphics/Path;

    .line 62
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmCustomMask(Landroid/app/uxicons/CustomAdaptiveIconConfig;Landroid/graphics/Path;)V

    .line 63
    return-object p0
.end method

.method public whitelist setIsAdaptiveIconDrawable(Z)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
    .locals 1
    .param p1, "isAdaptiveIconDrawable"    # Z

    .line 72
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmIsAdaptiveIconDrawable(Landroid/app/uxicons/CustomAdaptiveIconConfig;Z)V

    .line 73
    return-object p0
.end method

.method public whitelist setIsPlatformDrawable(Z)Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;
    .locals 1
    .param p1, "isPlatformDrawable"    # Z

    .line 67
    iget-object v0, p0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v0, p1}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->-$$Nest$fputmIsPlatformDrawable(Landroid/app/uxicons/CustomAdaptiveIconConfig;Z)V

    .line 68
    return-object p0
.end method
