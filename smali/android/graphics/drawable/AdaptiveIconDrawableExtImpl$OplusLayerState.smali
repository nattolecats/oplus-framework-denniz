.class Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AdaptiveIconDrawableExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OplusLayerState"
.end annotation


# instance fields
.field private blacklist mChangingConfigurations:I

.field private blacklist mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

.field private blacklist mParentLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/app/uxicons/CustomAdaptiveIconConfig;)V
    .locals 1
    .param p1, "layerState"    # Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;
    .param p2, "config"    # Landroid/app/uxicons/CustomAdaptiveIconConfig;

    .line 224
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 225
    iput-object p1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mParentLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    .line 226
    iput-object p2, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    .line 227
    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;->getChangingConfigurations()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mChangingConfigurations:I

    .line 228
    return-void
.end method


# virtual methods
.method public whitelist getChangingConfigurations()I
    .locals 1

    .line 254
    iget v0, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mChangingConfigurations:I

    return v0
.end method

.method public whitelist newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 232
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mParentLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 233
    .local v0, "drawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v1

    .line 234
    .local v1, "ext":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;

    if-eqz v2, :cond_0

    .line 235
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v2, v3}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->-$$Nest$fputmConfig(Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;Landroid/app/uxicons/CustomAdaptiveIconConfig;)V

    .line 236
    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->init()V

    .line 238
    :cond_0
    return-object v0
.end method

.method public whitelist newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 243
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    iget-object v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mParentLayerState:Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 244
    .local v0, "drawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v1

    .line 245
    .local v1, "ext":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;

    if-eqz v2, :cond_0

    .line 246
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;

    iget-object v3, p0, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl$OplusLayerState;->mConfig:Landroid/app/uxicons/CustomAdaptiveIconConfig;

    invoke-static {v2, v3}, Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;->-$$Nest$fputmConfig(Landroid/graphics/drawable/AdaptiveIconDrawableExtImpl;Landroid/app/uxicons/CustomAdaptiveIconConfig;)V

    .line 247
    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->init()V

    .line 249
    :cond_0
    return-object v0
.end method
