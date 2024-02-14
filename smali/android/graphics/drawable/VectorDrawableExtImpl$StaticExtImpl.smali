.class public Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;
.super Ljava/lang/Object;
.source "VectorDrawableExtImpl.java"

# interfaces
.implements Landroid/graphics/drawable/IVectorDrawableExt$IStaticExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawableExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticExtImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl$SingleHolder;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_LIMIT:I = 0x4b

.field private static final blacklist CHANGE_UNIT:F = 0.5f

.field private static final blacklist MODE_FLAG:I = 0xff0000

.field private static final blacklist WIDTH_SYMBOL:Ljava/lang/String; = "path_width"


# instance fields
.field private blacklist mBaseResources:Landroid/content/res/IResourcesExt;

.field private blacklist mFilterColor:I

.field private blacklist mHEntity:Landroid/graphics/drawable/SumEntity;

.field private blacklist mHasOriginColor:Z

.field private blacklist mLEntity:Landroid/graphics/drawable/SumEntity;

.field private blacklist mSEntity:Landroid/graphics/drawable/SumEntity;

.field private blacklist mShouldRestoreFillColor:I

.field private blacklist mShouldRestoreFilterColor:Z

.field private blacklist mShouldRestoreStrokeColor:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreFillColor:I

    .line 48
    iput v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreStrokeColor:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mHasOriginColor:Z

    .line 50
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreFilterColor:Z

    .line 53
    new-instance v0, Landroid/graphics/drawable/SumEntity;

    invoke-direct {v0}, Landroid/graphics/drawable/SumEntity;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mHEntity:Landroid/graphics/drawable/SumEntity;

    .line 54
    new-instance v0, Landroid/graphics/drawable/SumEntity;

    invoke-direct {v0}, Landroid/graphics/drawable/SumEntity;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mSEntity:Landroid/graphics/drawable/SumEntity;

    .line 55
    new-instance v0, Landroid/graphics/drawable/SumEntity;

    invoke-direct {v0}, Landroid/graphics/drawable/SumEntity;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mLEntity:Landroid/graphics/drawable/SumEntity;

    .line 58
    return-void
.end method

.method private blacklist calculatePathColor(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V
    .locals 10
    .param p1, "vObject"    # Landroid/graphics/drawable/VectorDrawable$VFullPath;

    .line 126
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillColor()I

    move-result v0

    .line 127
    .local v0, "fillColor":I
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getFillAlpha()F

    move-result v1

    .line 128
    .local v1, "fillAlpha":F
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x42960000    # 75.0f

    cmpl-float v2, v2, v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ltz v2, :cond_0

    .line 129
    new-array v2, v7, [F

    .line 130
    .local v2, "hsl":[F
    invoke-static {v0, v2}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 131
    iget-object v8, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mHEntity:Landroid/graphics/drawable/SumEntity;

    aget v9, v2, v6

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/SumEntity;->add(F)V

    .line 132
    iget-object v8, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mSEntity:Landroid/graphics/drawable/SumEntity;

    aget v9, v2, v5

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/SumEntity;->add(F)V

    .line 133
    iget-object v8, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mLEntity:Landroid/graphics/drawable/SumEntity;

    aget v9, v2, v4

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/SumEntity;->add(F)V

    .line 135
    .end local v2    # "hsl":[F
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeColor()I

    move-result v2

    .line 136
    .local v2, "strokeColor":I
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;->getStrokeAlpha()F

    move-result v8

    .line 137
    .local v8, "strokeAlpha":F
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    cmpl-float v3, v9, v3

    if-ltz v3, :cond_1

    .line 138
    new-array v3, v7, [F

    .line 139
    .local v3, "hsl":[F
    invoke-static {v2, v3}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 140
    iget-object v7, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mHEntity:Landroid/graphics/drawable/SumEntity;

    aget v6, v3, v6

    invoke-virtual {v7, v6}, Landroid/graphics/drawable/SumEntity;->add(F)V

    .line 141
    iget-object v6, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mSEntity:Landroid/graphics/drawable/SumEntity;

    aget v5, v3, v5

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/SumEntity;->add(F)V

    .line 142
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mLEntity:Landroid/graphics/drawable/SumEntity;

    aget v4, v3, v4

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/SumEntity;->add(F)V

    .line 144
    .end local v3    # "hsl":[F
    :cond_1
    return-void
.end method

.method private blacklist calculateVectorColor(Landroid/graphics/drawable/VectorDrawable$VGroup;)V
    .locals 3
    .param p1, "vGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 147
    if-nez p1, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VGroup;->getWrapper()Landroid/graphics/drawable/IVGroupWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/drawable/IVGroupWrapper;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    .local v0, "children":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 152
    return-void

    .line 154
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v2, :cond_2

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->calculateVectorColor(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    goto :goto_1

    .line 157
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->calculatePathColor(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    .line 154
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method private blacklist changeFilter(Landroid/graphics/ColorFilter;)V
    .locals 3
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 164
    instance-of v0, p1, Landroid/graphics/BlendModeColorFilter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 165
    move-object v0, p1

    check-cast v0, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v0}, Landroid/graphics/BlendModeColorFilter;->getColor()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mFilterColor:I

    .line 166
    iput-boolean v2, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreFilterColor:Z

    .line 167
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changeColorFilterInDarkMode(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 168
    :cond_0
    instance-of v0, p1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, p1

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mFilterColor:I

    .line 170
    iput-boolean v2, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreFilterColor:Z

    .line 171
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1}, Lcom/oplus/darkmode/IOplusDarkModeManager;->changeColorFilterInDarkMode(Landroid/graphics/ColorFilter;)V

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 61
    invoke-static {}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl$SingleHolder;->-$$Nest$sfgetINSTACNE()Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isDarkMode(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p1, Landroid/graphics/Canvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0}, Landroid/graphics/IBaseCanvasExt;->isDarkMode()Z

    move-result v0

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist restoreFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 176
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreFilterColor:Z

    if-eqz v0, :cond_1

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mShouldRestoreFilterColor:Z

    .line 178
    instance-of v0, p1, Landroid/graphics/BlendModeColorFilter;

    if-eqz v0, :cond_0

    .line 179
    move-object v0, p1

    check-cast v0, Landroid/graphics/BlendModeColorFilter;

    invoke-virtual {v0}, Landroid/graphics/BlendModeColorFilter;->getWrapper()Landroid/graphics/IBlendModeColorFilterWrapper;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mFilterColor:I

    invoke-interface {v0, v1}, Landroid/graphics/IBlendModeColorFilterWrapper;->setColor(I)V

    goto :goto_0

    .line 180
    :cond_0
    instance-of v0, p1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    .line 181
    move-object v0, p1

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getWrapper()Landroid/graphics/IPorterDuffColorFilterWrapper;

    move-result-object v0

    iget v1, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mFilterColor:I

    invoke-interface {v0, v1}, Landroid/graphics/IPorterDuffColorFilterWrapper;->setColor(I)V

    .line 184
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist calculateStrokeWidth(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 5
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "defaultWidth"    # F

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 106
    const-string v0, "path_width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mBaseResources:Landroid/content/res/IResourcesExt;

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v0}, Landroid/content/res/IResourcesExt;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 108
    .local v0, "config":Landroid/content/res/OplusBaseConfiguration;
    if-nez v0, :cond_0

    .line 109
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    .line 112
    .local v1, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-nez v1, :cond_1

    .line 113
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    return-object v2

    .line 115
    :cond_1
    iget v2, v1, Loplus/content/res/OplusExtraConfiguration;->mFontVariationSettings:I

    .line 116
    .local v2, "fontVariationSettings":I
    const/high16 v3, 0xff0000

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    .line 117
    .local v3, "adjustWidth":F
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, p2

    :goto_0
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    return-object v4

    .line 119
    .end local v0    # "config":Landroid/content/res/OplusBaseConfiguration;
    .end local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v2    # "fontVariationSettings":I
    .end local v3    # "adjustWidth":F
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public blacklist changePaintWhenVectorDraw(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .locals 6
    .param p1, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
    .param p4, "vGroup"    # Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 73
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->isDarkMode(Landroid/graphics/Canvas;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-direct {p0, p3}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->changeFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-direct {p0, p4}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->calculateVectorColor(Landroid/graphics/drawable/VectorDrawable$VGroup;)V

    .line 78
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mHEntity:Landroid/graphics/drawable/SumEntity;

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mSEntity:Landroid/graphics/drawable/SumEntity;

    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mLEntity:Landroid/graphics/drawable/SumEntity;

    invoke-interface {v0, v3, v4, v5}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getColorFilterWhenDrawVectorDrawable(Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 79
    .local v0, "newFilter":Landroid/graphics/ColorFilter;
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mHEntity:Landroid/graphics/drawable/SumEntity;

    invoke-virtual {v3}, Landroid/graphics/drawable/SumEntity;->reset()V

    .line 80
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mSEntity:Landroid/graphics/drawable/SumEntity;

    invoke-virtual {v3}, Landroid/graphics/drawable/SumEntity;->reset()V

    .line 81
    iget-object v3, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mLEntity:Landroid/graphics/drawable/SumEntity;

    invoke-virtual {v3}, Landroid/graphics/drawable/SumEntity;->reset()V

    .line 82
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .line 85
    .end local v0    # "newFilter":Landroid/graphics/ColorFilter;
    :cond_2
    :goto_1
    if-nez p3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v1

    :goto_2
    return-wide v1
.end method

.method public blacklist hookVFullInflate(Landroid/content/res/IResourcesExt;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/IResourcesExt;

    .line 101
    iput-object p1, p0, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->mBaseResources:Landroid/content/res/IResourcesExt;

    .line 102
    return-void
.end method

.method public blacklist resetPaintWhenVectorDraw(Landroid/graphics/drawable/VectorDrawable;Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "vectorDrawable"    # Landroid/graphics/drawable/VectorDrawable;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 93
    invoke-direct {p0, p2}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->isDarkMode(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    if-eqz p3, :cond_0

    .line 95
    invoke-direct {p0, p3}, Landroid/graphics/drawable/VectorDrawableExtImpl$StaticExtImpl;->restoreFilter(Landroid/graphics/ColorFilter;)V

    .line 98
    :cond_0
    return-void
.end method
