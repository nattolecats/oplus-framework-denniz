.class public Landroid/app/OplusUXIconLoader;
.super Ljava/lang/Object;
.source "OplusUXIconLoader.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusUXIconLoader"

.field private static blacklist mIconPackName:Ljava/lang/String;

.field private static blacklist mNeedUpdateIconMap:Z

.field private static blacklist sIconConfig:Landroid/app/OplusIconConfig;

.field private static volatile blacklist sInstance:Landroid/app/OplusUXIconLoader;

.field private static blacklist sVersionCode:J


# instance fields
.field private blacklist mAppIconNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppIconResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCommonStyleConfigArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCommonStylePathArray:[Ljava/lang/String;

.field private blacklist mCommonStylePrefixArray:[Ljava/lang/String;

.field private blacklist mComponentNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDarkModeBrightness:F

.field private blacklist mDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

.field private blacklist mHasInitConfigArray:Z

.field private blacklist mIconPackUtil:Landroid/app/OplusIconPackUtil;

.field private volatile blacklist mIsExpVersion:Ljava/lang/Boolean;

.field blacklist mOplusUxIconDrawableManager:Landroid/app/IOplusResolverUxIconDrawableManager;

.field private blacklist mSpecialStyleConfigArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSpecialStylePathArray:[Ljava/lang/String;

.field private blacklist mSpecialStylePrefixArray:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    sput-object v0, Landroid/app/OplusUXIconLoader;->sInstance:Landroid/app/OplusUXIconLoader;

    .line 99
    new-instance v0, Landroid/app/OplusIconConfig;

    invoke-direct {v0}, Landroid/app/OplusIconConfig;-><init>()V

    sput-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Landroid/app/IOplusResolverUxIconDrawableManager;->DEFAULT:Landroid/app/IOplusResolverUxIconDrawableManager;

    iput-object v0, p0, Landroid/app/OplusUXIconLoader;->mOplusUxIconDrawableManager:Landroid/app/IOplusResolverUxIconDrawableManager;

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/OplusUXIconLoader;->mHasInitConfigArray:Z

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mSpecialStyleConfigArray:Ljava/util/ArrayList;

    .line 112
    const v1, 0x3f570a3d    # 0.84f

    iput v1, p0, Landroid/app/OplusUXIconLoader;->mDarkModeBrightness:F

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mAppIconNameMap:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mComponentNameMap:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mAppIconResMap:Ljava/util/HashMap;

    .line 141
    iget v1, p0, Landroid/app/OplusUXIconLoader;->mDarkModeBrightness:F

    invoke-direct {p0, v1}, Landroid/app/OplusUXIconLoader;->getDarkModeColorInCurrentContrast(F)I

    move-result v1

    .line 142
    .local v1, "color":I
    new-instance v2, Landroid/graphics/LightingColorFilter;

    invoke-direct {v2, v1, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v2, p0, Landroid/app/OplusUXIconLoader;->mDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    .line 143
    return-void
.end method

.method private blacklist buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;
    .param p3, "background"    # Landroid/graphics/drawable/Drawable;
    .param p4, "monochromeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "isPlatformDrawable"    # Z
    .param p6, "isAdaptiveIconDrawable"    # Z

    .line 959
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 979
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 960
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    invoke-virtual {p0, p3}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 963
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p3, p2, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 964
    .local v0, "iconDrawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v1

    .line 965
    .local v1, "iAdaptiveIconDrawableExt":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    if-eqz v1, :cond_2

    .line 966
    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 967
    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v2

    invoke-static {p1, v2}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v4

    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 968
    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v2

    invoke-static {p1, v2}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v5

    new-instance v6, Landroid/graphics/Path;

    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 969
    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getShapePath()Landroid/graphics/Path;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 966
    move-object v2, v1

    move-object v3, p1

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;IILandroid/graphics/Path;ZZ)V

    .line 974
    :cond_2
    sget-boolean v2, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v2, :cond_3

    .line 975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildAdaptiveIconDrawable foreground =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",background =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",config =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusUXIconLoader"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_3
    return-object v0
.end method

.method private blacklist buildAdaptiveIconDrawableForIconPack(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;
    .param p3, "background"    # Landroid/graphics/drawable/Drawable;
    .param p4, "monochromeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "path"    # Landroid/graphics/Path;
    .param p6, "isPlatformDrawable"    # Z
    .param p7, "isAdaptiveIconDrawable"    # Z

    .line 1006
    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    if-nez v8, :cond_1

    if-eqz v9, :cond_0

    goto :goto_0

    .line 1019
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1007
    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    move-object/from16 v10, p4

    invoke-direct {v0, v9, p2, v10}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v11, v0

    .line 1008
    .local v11, "iconDrawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v12

    .line 1009
    .local v12, "iAdaptiveIconDrawableExt":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    if-eqz v12, :cond_2

    .line 1010
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 1011
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v2

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 1012
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v3

    .line 1010
    move-object v0, v12

    move-object v1, p1

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;IILandroid/graphics/Path;ZZ)V

    .line 1017
    :cond_2
    return-object v11
.end method

.method private blacklist buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "foreground"    # Landroid/graphics/drawable/Drawable;
    .param p3, "background"    # Landroid/graphics/drawable/Drawable;
    .param p4, "monochromeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "foregroundSize"    # I
    .param p6, "backgroundSize"    # I

    .line 984
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 999
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 985
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    invoke-virtual {p0, p3}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 987
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p3, p2, p4}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 988
    .local v0, "iconDrawable":Landroid/graphics/drawable/AdaptiveIconDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v1

    .line 989
    .local v1, "iAdaptiveIconDrawableExt":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    if-eqz v1, :cond_2

    .line 990
    new-instance v6, Landroid/graphics/Path;

    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 993
    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getShapePath()Landroid/graphics/Path;

    move-result-object v2

    invoke-direct {v6, v2}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 990
    move-object v2, v1

    move-object v3, p1

    move v4, p6

    move v5, p5

    invoke-interface/range {v2 .. v8}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;IILandroid/graphics/Path;ZZ)V

    .line 997
    :cond_2
    return-object v0
.end method

.method private blacklist buildIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "baseFilePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "targetIconName"    # Ljava/lang/String;

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 908
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 909
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 910
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 911
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 912
    .local v0, "pathBuild":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 913
    .local v1, "iconPath":Ljava/lang/String;
    return-object v1
.end method

.method private blacklist checkConfig(Landroid/content/res/Resources;Loplus/content/res/OplusExtraConfiguration;)V
    .locals 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "extraConfig"    # Loplus/content/res/OplusExtraConfiguration;

    .line 783
    invoke-static {}, Landroid/app/OplusUxDrawableMappingHelper;->parsePackMapping()V

    .line 784
    iget-boolean v0, p0, Landroid/app/OplusUXIconLoader;->mHasInitConfigArray:Z

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 785
    iput-boolean v3, p0, Landroid/app/OplusUXIconLoader;->mHasInitConfigArray:Z

    .line 786
    invoke-direct {p0, p1}, Landroid/app/OplusUXIconLoader;->initConfigArray(Landroid/content/res/Resources;)V

    .line 787
    iget v0, p0, Landroid/app/OplusUXIconLoader;->mDarkModeBrightness:F

    invoke-direct {p0, v0}, Landroid/app/OplusUXIconLoader;->getDarkModeColorInCurrentContrast(F)I

    move-result v0

    .line 788
    .local v0, "color":I
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-direct {v4, v0, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v4, p0, Landroid/app/OplusUXIconLoader;->mDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    .line 789
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    if-ne v4, v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 791
    .local v4, "isDarkMode":Z
    :goto_0
    sget-object v5, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v5, v4}, Landroid/app/OplusIconConfig;->setIsDarkMode(Z)V

    .line 792
    sget-object v6, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    iget-object v9, p0, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/app/OplusUXIconLoader;->mSpecialStyleConfigArray:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePathArray:[Ljava/lang/String;

    iget-object v12, p0, Landroid/app/OplusUXIconLoader;->mSpecialStylePathArray:[Ljava/lang/String;

    move-object v7, p2

    move-object v8, p1

    invoke-static/range {v6 .. v12}, Landroid/app/OplusUxIconConfigParser;->parseConfig(Landroid/app/OplusIconConfig;Loplus/content/res/OplusExtraConfiguration;Landroid/content/res/Resources;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 795
    sget-object v5, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    iget v6, p2, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-virtual {v5, v6}, Landroid/app/OplusIconConfig;->setUserId(I)V

    .line 798
    .end local v0    # "color":I
    .end local v4    # "isDarkMode":Z
    :cond_1
    iget v0, p2, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    const/4 v4, -0x1

    const-string v5, "OplusUXIconLoader"

    if-eq v0, v4, :cond_2

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getUserId()I

    move-result v0

    if-eq v0, v4, :cond_2

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getUserId()I

    move-result v0

    iget v4, p2, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    if-eq v0, v4, :cond_2

    .line 799
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_8

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extraConfig.mUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not equals to sIconConfig.mUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 801
    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ignore changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 804
    :cond_2
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getNeedUpdateConfig()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 805
    sget-object v6, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    iget-object v9, p0, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/app/OplusUXIconLoader;->mSpecialStyleConfigArray:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePathArray:[Ljava/lang/String;

    iget-object v12, p0, Landroid/app/OplusUXIconLoader;->mSpecialStylePathArray:[Ljava/lang/String;

    move-object v7, p2

    move-object v8, p1

    invoke-static/range {v6 .. v12}, Landroid/app/OplusUxIconConfigParser;->parseConfig(Landroid/app/OplusIconConfig;Loplus/content/res/OplusExtraConfiguration;Landroid/content/res/Resources;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 808
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0, v3}, Landroid/app/OplusIconConfig;->removeUpdateConfig(I)V

    .line 810
    :cond_3
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getNeedUpdateConfig()I

    move-result v0

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 811
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    if-ne v0, v1, :cond_4

    move v2, v3

    :cond_4
    move v0, v2

    .line 813
    .local v0, "isDarkMode":Z
    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1, v0}, Landroid/app/OplusIconConfig;->setIsDarkMode(Z)V

    .line 814
    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1, v4}, Landroid/app/OplusIconConfig;->removeUpdateConfig(I)V

    .line 818
    .end local v0    # "isDarkMode":Z
    :cond_5
    iget-object v0, p2, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    sget-object v1, Landroid/app/OplusUXIconLoader;->mIconPackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 819
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_6

    .line 820
    const-string v0, "checkConfig set mNeedUpdateIconMap true"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_6
    sput-boolean v3, Landroid/app/OplusUXIconLoader;->mNeedUpdateIconMap:Z

    .line 823
    iget-object v0, p2, Loplus/content/res/OplusExtraConfiguration;->mIconPackName:Ljava/lang/String;

    sput-object v0, Landroid/app/OplusUXIconLoader;->mIconPackName:Ljava/lang/String;

    .line 826
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkConfig sIconConfig =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_8
    :goto_1
    invoke-static {}, Landroid/app/OplusUxIconAppCheckUtils;->resetPresetAppsList()V

    .line 829
    return-void
.end method

.method private blacklist generateIconPackDrawable(Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "monoChrome"    # Landroid/graphics/drawable/Drawable;
    .param p5, "isPlatformDrawable"    # Z
    .param p6, "isAdaptiveIconDrawable"    # Z

    .line 489
    move-object v0, p3

    .line 490
    .local v0, "result":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {v1, p2, p3}, Landroid/app/OplusIconPackUtil;->generateIconPackDrawable(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 493
    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/16 v5, 0x96

    invoke-direct {v2, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/oplus/util/OplusRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForIconPack(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "src"    # Landroid/graphics/drawable/Drawable;

    .line 1039
    invoke-direct {p0, p1}, Landroid/app/OplusUXIconLoader;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1040
    .local v0, "temp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Landroid/graphics/OplusPalette;->from(Landroid/graphics/Bitmap;)Landroid/graphics/OplusPalette$Builder;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/graphics/OplusPalette$Builder;->generateEdageWithStep(II)Landroid/graphics/OplusPalette;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/OplusPalette;->getTransMaxColor(I)I

    move-result v1

    .line 1041
    .local v1, "backgroundColor":I
    if-ne v1, v2, :cond_0

    .line 1042
    invoke-direct {p0}, Landroid/app/OplusUXIconLoader;->getDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1044
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1045
    .restart local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1047
    :goto_0
    return-object v2
.end method

.method private blacklist getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1051
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 1052
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1054
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 1055
    .local v0, "w":I
    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 1056
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 1057
    .local v1, "h":I
    if-gtz v1, :cond_2

    const/4 v1, 0x1

    .line 1058
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1059
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1060
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1061
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1062
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1063
    return-object v3
.end method

.method private blacklist getCommonStylePrefixExceptRect(I)Ljava/lang/String;
    .locals 3
    .param p1, "pos"    # I

    .line 1074
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePrefixArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1075
    add-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0

    .line 1077
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getDarkModeColorInCurrentContrast(F)I
    .locals 5
    .param p1, "currentContrast"    # F

    .line 1173
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1174
    const/16 v0, 0xd6

    .local v0, "currentColorR":I
    goto :goto_0

    .line 1176
    .end local v0    # "currentColorR":I
    :cond_0
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 1178
    .restart local v0    # "currentColorR":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "colorR":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1180
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method private blacklist getDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 722
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string v1, "#FFFBFBFB"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 723
    .local v0, "defaultBackgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    return-object v0
.end method

.method private blacklist getDrawableForAppIcon(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p6, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 627
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    const/4 v14, 0x0

    .line 628
    .local v14, "isAdaptiveIconDrawable":Z
    iget-object v0, v7, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    .line 629
    .local v15, "pos":I
    const/16 v16, 0x0

    .line 630
    .local v16, "foreground":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 632
    .local v17, "background":Landroid/graphics/drawable/Drawable;
    const-string v0, "android.app.stubs"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    return-object v13

    .line 635
    :cond_0
    const/4 v0, 0x0

    if-nez v13, :cond_1

    return-object v0

    .line 636
    :cond_1
    invoke-static {v11, v8}, Landroid/app/OplusUxIconAppCheckUtils;->isDeskActivity(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 637
    if-ne v15, v2, :cond_3

    .line 638
    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_2

    .line 639
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 638
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 641
    :cond_3
    const/4 v2, 0x0

    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_4

    .line 642
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_4
    nop

    :goto_1
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 641
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 644
    :cond_5
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42140000    # 37.0f

    mul-float/2addr v1, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v1, v3

    float-to-int v6, v1

    .line 646
    .local v6, "sizeThreshold":I
    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0xc0500dc

    const v5, 0xc0500db

    const v3, 0xc05008e

    const/high16 v19, 0x42180000    # 38.0f

    if-ne v15, v2, :cond_e

    .line 648
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 649
    .local v2, "iconMaxSize":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 650
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v5, v2

    goto :goto_2

    .line 651
    :cond_6
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 652
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v5, v2

    goto :goto_2

    .line 651
    :cond_7
    move v5, v2

    .line 654
    .end local v2    # "iconMaxSize":I
    .local v5, "iconMaxSize":I
    :goto_2
    if-gtz v5, :cond_8

    .line 655
    return-object v0

    .line 657
    :cond_8
    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v2

    invoke-static {v11, v2}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    int-to-float v1, v5

    div-float v20, v2, v1

    .line 659
    .local v20, "scale":F
    iget v1, v10, Landroid/content/pm/ApplicationInfo;->iconRes:I

    if-eq v1, v9, :cond_a

    invoke-direct {v7, v8, v12, v9}, Landroid/app/OplusUXIconLoader;->isLauncherIcon(Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3

    :cond_9
    move/from16 v19, v5

    move/from16 v21, v14

    move v14, v6

    goto :goto_5

    .line 660
    :cond_a
    :goto_3
    invoke-direct {v7, v13}, Landroid/app/OplusUXIconLoader;->hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 661
    move-object/from16 v2, p6

    .line 662
    .end local v16    # "foreground":Landroid/graphics/drawable/Drawable;
    .local v2, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 663
    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .local v16, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_b

    .line 664
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_4

    :cond_b
    nop

    :goto_4
    move-object v4, v0

    .line 665
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v19

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 666
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {v11, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v20

    float-to-int v1, v0

    .line 663
    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p4

    move/from16 v18, v3

    move-object/from16 v3, v16

    move/from16 v19, v5

    .end local v5    # "iconMaxSize":I
    .local v19, "iconMaxSize":I
    move/from16 v5, v18

    move/from16 v21, v14

    move v14, v6

    .end local v6    # "sizeThreshold":I
    .local v14, "sizeThreshold":I
    .local v21, "isAdaptiveIconDrawable":Z
    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 660
    .end local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v19    # "iconMaxSize":I
    .end local v21    # "isAdaptiveIconDrawable":Z
    .restart local v5    # "iconMaxSize":I
    .restart local v6    # "sizeThreshold":I
    .local v14, "isAdaptiveIconDrawable":Z
    .local v16, "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "background":Landroid/graphics/drawable/Drawable;
    :cond_c
    move/from16 v19, v5

    move/from16 v21, v14

    move v14, v6

    .line 668
    .end local v5    # "iconMaxSize":I
    .end local v6    # "sizeThreshold":I
    .local v14, "sizeThreshold":I
    .restart local v19    # "iconMaxSize":I
    .restart local v21    # "isAdaptiveIconDrawable":Z
    :goto_5
    move-object/from16 v3, p6

    .line 669
    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .local v3, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_d

    .line 670
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_6

    :cond_d
    nop

    :goto_6
    move-object v4, v0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 671
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {v11, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v5

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 672
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {v11, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v20

    float-to-int v6, v0

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v16

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 674
    .end local v3    # "background":Landroid/graphics/drawable/Drawable;
    .end local v19    # "iconMaxSize":I
    .end local v20    # "scale":F
    .end local v21    # "isAdaptiveIconDrawable":Z
    .restart local v6    # "sizeThreshold":I
    .local v14, "isAdaptiveIconDrawable":Z
    .restart local v17    # "background":Landroid/graphics/drawable/Drawable;
    :cond_e
    move/from16 v21, v14

    move v14, v6

    .end local v6    # "sizeThreshold":I
    .local v14, "sizeThreshold":I
    .restart local v21    # "isAdaptiveIconDrawable":Z
    instance-of v2, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v2, :cond_f

    .line 675
    move-object v1, v13

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 676
    move-object v1, v13

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 677
    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    move/from16 v21, v2

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    .end local v21    # "isAdaptiveIconDrawable":Z
    .local v2, "isAdaptiveIconDrawable":Z
    goto/16 :goto_b

    .line 678
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v2    # "isAdaptiveIconDrawable":Z
    .restart local v17    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "isAdaptiveIconDrawable":Z
    :cond_f
    const/4 v2, 0x2

    if-eq v15, v2, :cond_18

    if-nez v15, :cond_10

    goto/16 :goto_a

    .line 693
    :cond_10
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->iconRes:I

    if-eq v2, v9, :cond_11

    invoke-direct {v7, v8, v12, v9}, Landroid/app/OplusUXIconLoader;->isLauncherIcon(Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 694
    :cond_11
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lt v2, v14, :cond_13

    invoke-direct {v7, v13}, Landroid/app/OplusUXIconLoader;->hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_7

    .line 714
    :cond_12
    move-object/from16 v1, p6

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_b

    .line 695
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "background":Landroid/graphics/drawable/Drawable;
    :cond_13
    :goto_7
    move-object/from16 v2, p6

    .line 696
    .end local v16    # "foreground":Landroid/graphics/drawable/Drawable;
    .local v2, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 698
    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .local v16, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 699
    .local v3, "iconMaxSize":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 700
    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v6, v3

    goto :goto_8

    .line 701
    :cond_14
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 702
    invoke-virtual {v11, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move v6, v3

    goto :goto_8

    .line 701
    :cond_15
    move v6, v3

    .line 704
    .end local v3    # "iconMaxSize":I
    .local v6, "iconMaxSize":I
    :goto_8
    if-gtz v6, :cond_16

    .line 705
    return-object v0

    .line 707
    :cond_16
    sget-object v3, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v3}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v3

    invoke-static {v11, v3}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    int-to-float v1, v6

    div-float v17, v3, v1

    .line 709
    .local v17, "scale":F
    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_17

    .line 710
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_9

    :cond_17
    nop

    :goto_9
    move-object v4, v0

    .line 711
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v19

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    mul-float v0, v0, v17

    float-to-int v5, v0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 712
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v0

    invoke-static {v11, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v18

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, v16

    move/from16 v19, v6

    .end local v6    # "iconMaxSize":I
    .restart local v19    # "iconMaxSize":I
    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 680
    .end local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v19    # "iconMaxSize":I
    .local v16, "foreground":Landroid/graphics/drawable/Drawable;
    .local v17, "background":Landroid/graphics/drawable/Drawable;
    :cond_18
    :goto_a
    iget v1, v10, Landroid/content/pm/ApplicationInfo;->iconRes:I

    if-eq v1, v9, :cond_19

    invoke-direct {v7, v8, v12, v9}, Landroid/app/OplusUXIconLoader;->isLauncherIcon(Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 681
    :cond_19
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lt v1, v14, :cond_1c

    invoke-direct {v7, v13}, Landroid/app/OplusUXIconLoader;->hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_d

    .line 689
    :cond_1a
    move-object/from16 v1, p6

    .line 691
    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move/from16 v21, v2

    move-object/from16 v17, v16

    move-object/from16 v16, v1

    .line 717
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .local v16, "background":Landroid/graphics/drawable/Drawable;
    .local v17, "foreground":Landroid/graphics/drawable/Drawable;
    :goto_b
    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_1b

    .line 718
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_1b
    nop

    :goto_c
    move-object v4, v0

    const/4 v5, 0x0

    .line 717
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 682
    .local v16, "foreground":Landroid/graphics/drawable/Drawable;
    .local v17, "background":Landroid/graphics/drawable/Drawable;
    :cond_1c
    :goto_d
    move-object/from16 v2, p6

    .line 683
    .end local v16    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 684
    .end local v17    # "background":Landroid/graphics/drawable/Drawable;
    .local v16, "background":Landroid/graphics/drawable/Drawable;
    instance-of v1, v13, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_1d

    .line 685
    move-object v0, v13

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    :cond_1d
    nop

    :goto_e
    move-object v4, v0

    .line 686
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v19

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v5, v0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 687
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v0

    invoke-static {v11, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v6

    .line 684
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v3, v16

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getDrawableForIconPackTheme(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "activityName"    # Ljava/lang/String;
    .param p5, "iconNamePrefix"    # Ljava/lang/String;
    .param p6, "res"    # Landroid/content/res/Resources;
    .param p7, "originDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 399
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    move-object/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v0, Landroid/app/OplusUXIconLoader;->mIconPackName:Ljava/lang/String;

    const-string v1, "OplusUXIconLoader"

    const/4 v7, 0x0

    if-eqz v0, :cond_1c

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v8, v9

    goto/16 :goto_e

    .line 405
    :cond_0
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_1

    .line 406
    const-string v0, "mIconPackName is not null, try to load from icon pack firstly"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_1
    sget-object v0, Landroid/app/OplusUXIconLoader;->mIconPackName:Ljava/lang/String;

    move-object/from16 v10, p2

    invoke-direct {v14, v0, v12, v15, v10}, Landroid/app/OplusUXIconLoader;->loadDrawableFromIconPack(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 410
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    if-eqz v6, :cond_2

    .line 411
    invoke-virtual {v14, v6}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    const/16 v3, 0x96

    invoke-direct {v1, v5, v5, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/oplus/util/OplusRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v3, v6

    move-object/from16 v16, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    move v6, v7

    move v7, v8

    invoke-direct/range {v0 .. v7}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForIconPack(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 419
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v16, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 420
    .local v17, "foreground":Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x0

    .line 421
    .local v18, "background":Landroid/graphics/drawable/Drawable;
    move-object/from16 v6, p7

    .line 422
    .end local v16    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_3

    .line 423
    return-object v7

    .line 425
    :cond_3
    invoke-static {v9, v13}, Landroid/app/OplusUxIconAppCheckUtils;->isPresetApp(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v16

    .line 426
    .local v16, "isSystemApp":Z
    const/4 v0, 0x0

    .line 427
    .local v0, "offUxIcon":Z
    if-eqz v16, :cond_4

    .line 428
    invoke-direct {v14, v15, v13}, Landroid/app/OplusUXIconLoader;->isOffUxIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    move/from16 v19, v0

    goto :goto_0

    .line 427
    :cond_4
    move/from16 v19, v0

    .line 430
    .end local v0    # "offUxIcon":Z
    .local v19, "offUxIcon":Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v3, p6

    move/from16 v20, v5

    move/from16 v5, v16

    move-object v15, v6

    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v15, "drawable":Landroid/graphics/drawable/Drawable;
    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 434
    if-eqz v17, :cond_a

    .line 435
    iget-object v0, v14, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/app/OplusIconPackUtil;->hasGenerateIconPack()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 439
    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    if-eqz v12, :cond_6

    move-object v8, v12

    :cond_6
    invoke-direct {v2, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    aput-object v18, v0, v20

    const/4 v1, 0x1

    aput-object v17, v0, v1

    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 440
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_7

    .line 441
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_7
    move-object v4, v7

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->generateIconPackDrawable(Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 436
    :cond_8
    :goto_2
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_9

    .line 437
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_3

    :cond_9
    move-object v4, v7

    :goto_3
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 445
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42140000    # 37.0f

    mul-float/2addr v0, v1

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v0, v0, v20

    float-to-int v6, v0

    .line 446
    .local v6, "sizeThreshold":I
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_10

    .line 447
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 448
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 449
    iget-object v0, v14, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/app/OplusIconPackUtil;->hasGenerateIconPack()Z

    move-result v0

    if-nez v0, :cond_b

    move v8, v6

    goto :goto_5

    .line 453
    :cond_b
    new-instance v2, Landroid/content/ComponentName;

    .line 454
    if-eqz v12, :cond_c

    move-object v8, v12

    :cond_c
    invoke-direct {v2, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_d

    .line 455
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_d
    move-object v4, v7

    :goto_4
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v3, v15

    move v8, v6

    .end local v6    # "sizeThreshold":I
    .local v8, "sizeThreshold":I
    move v6, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->generateIconPackDrawable(Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 449
    .end local v8    # "sizeThreshold":I
    .restart local v6    # "sizeThreshold":I
    :cond_e
    move v8, v6

    .line 450
    .end local v6    # "sizeThreshold":I
    .restart local v8    # "sizeThreshold":I
    :goto_5
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_f

    .line 451
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_6

    :cond_f
    move-object v4, v7

    :goto_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 457
    .end local v8    # "sizeThreshold":I
    .restart local v6    # "sizeThreshold":I
    :cond_10
    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lt v0, v6, :cond_17

    invoke-direct {v14, v15}, Landroid/app/OplusUXIconLoader;->hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_11

    move/from16 v21, v6

    move-object v6, v9

    move-object v5, v13

    goto/16 :goto_a

    .line 474
    :cond_11
    move-object v10, v15

    .line 475
    .end local v18    # "background":Landroid/graphics/drawable/Drawable;
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    iget-object v0, v14, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/OplusIconPackUtil;->hasGenerateIconPack()Z

    move-result v0

    if-nez v0, :cond_12

    move/from16 v21, v6

    goto :goto_8

    .line 479
    :cond_12
    new-instance v2, Landroid/content/ComponentName;

    if-eqz v12, :cond_13

    move-object v8, v12

    :cond_13
    invoke-direct {v2, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_14

    .line 481
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_7

    :cond_14
    move-object v4, v7

    :goto_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v3, v15

    move/from16 v21, v6

    .end local v6    # "sizeThreshold":I
    .local v21, "sizeThreshold":I
    move v6, v7

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->generateIconPackDrawable(Landroid/content/res/Resources;Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 475
    .end local v21    # "sizeThreshold":I
    .restart local v6    # "sizeThreshold":I
    :cond_15
    move/from16 v21, v6

    .line 476
    .end local v6    # "sizeThreshold":I
    .restart local v21    # "sizeThreshold":I
    :goto_8
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_16

    .line 477
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_9

    :cond_16
    move-object v0, v7

    :goto_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 476
    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object v6, v9

    move-object/from16 v9, v17

    move-object v11, v0

    move v12, v1

    move-object v5, v13

    move v13, v2

    invoke-direct/range {v7 .. v13}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 457
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    .end local v21    # "sizeThreshold":I
    .restart local v6    # "sizeThreshold":I
    .restart local v18    # "background":Landroid/graphics/drawable/Drawable;
    :cond_17
    move/from16 v21, v6

    move-object v6, v9

    move-object v5, v13

    .line 458
    .end local v6    # "sizeThreshold":I
    .restart local v21    # "sizeThreshold":I
    :goto_a
    move-object v2, v15

    .line 459
    .end local v17    # "foreground":Landroid/graphics/drawable/Drawable;
    .local v2, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getDefaultBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 460
    .end local v18    # "background":Landroid/graphics/drawable/Drawable;
    .local v9, "background":Landroid/graphics/drawable/Drawable;
    iget-object v0, v14, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    const/high16 v10, 0x42180000    # 38.0f

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/OplusIconPackUtil;->hasGenerateIconPack()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 461
    iget-object v11, v14, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    new-instance v12, Landroid/content/ComponentName;

    .line 462
    if-eqz p4, :cond_18

    move-object/from16 v8, p4

    :cond_18
    invoke-direct {v12, v5, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_19

    .line 464
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_b

    :cond_19
    move-object v4, v7

    .line 465
    :goto_b
    invoke-virtual/range {p6 .. p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v10

    add-float v0, v0, v20

    float-to-int v8, v0

    new-instance v0, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;

    invoke-direct {v0, v6}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;-><init>(Landroid/content/res/Resources;)V

    .line 466
    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig$Builder;->create()Landroid/app/uxicons/CustomAdaptiveIconConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/uxicons/CustomAdaptiveIconConfig;->getDefaultIconSize()I

    move-result v13

    .line 463
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v3, v9

    move v5, v8

    move-object v8, v6

    move v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 461
    invoke-virtual {v11, v12, v0}, Landroid/app/OplusIconPackUtil;->generateIconPackDrawable(Landroid/content/ComponentName;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 467
    const/4 v0, 0x0

    move-object v11, v9

    move-object v9, v0

    .end local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    goto :goto_c

    .line 460
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1a
    move-object v8, v6

    .line 469
    move-object v11, v9

    move-object v9, v2

    .end local v2    # "foreground":Landroid/graphics/drawable/Drawable;
    .local v9, "foreground":Landroid/graphics/drawable/Drawable;
    .local v11, "background":Landroid/graphics/drawable/Drawable;
    :goto_c
    instance-of v0, v15, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1b

    .line 470
    move-object v0, v15

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_d

    :cond_1b
    move-object v4, v7

    .line 471
    :goto_d
    invoke-virtual/range {p6 .. p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v10

    add-float v0, v0, v20

    float-to-int v5, v0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 472
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v0

    invoke-static {v8, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v6

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object v2, v9

    move-object v3, v11

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 399
    .end local v9    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v11    # "background":Landroid/graphics/drawable/Drawable;
    .end local v15    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v16    # "isSystemApp":Z
    .end local v19    # "offUxIcon":Z
    .end local v21    # "sizeThreshold":I
    :cond_1c
    move-object v8, v9

    .line 400
    :goto_e
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_1d

    .line 401
    const-string v0, "mIconPackName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1d
    return-object v7
.end method

.method private blacklist getDrawableForUXIconTheme(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p4, "iconNamePrefix"    # Ljava/lang/String;
    .param p5, "originDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 500
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    iget-object v0, v7, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 501
    .local v12, "pos":I
    iget-object v0, v7, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/lit8 v13, v0, -0x1

    .line 502
    .local v13, "customThemeConfigPos":I
    const/4 v14, 0x0

    .line 503
    .local v14, "foreground":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 504
    .local v15, "background":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 505
    .local v0, "offUxIcon":Z
    invoke-static {v9, v8}, Landroid/app/OplusUxIconAppCheckUtils;->isPresetApp(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v16

    .line 506
    .local v16, "isSystemApp":Z
    if-eqz v16, :cond_0

    .line 507
    move-object/from16 v6, p3

    invoke-direct {v7, v6, v8}, Landroid/app/OplusUXIconLoader;->isOffUxIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    move/from16 v17, v0

    goto :goto_0

    .line 506
    :cond_0
    move-object/from16 v6, p3

    move/from16 v17, v0

    .line 509
    .end local v0    # "offUxIcon":Z
    .local v17, "offUxIcon":Z
    :goto_0
    const/16 v18, 0x0

    if-ltz v12, :cond_c

    iget-object v0, v7, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_c

    .line 510
    const/4 v0, 0x2

    if-ne v12, v0, :cond_3

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    invoke-direct {v7, v12}, Landroid/app/OplusUXIconLoader;->getCommonStylePrefixExceptRect(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 511
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 514
    if-eqz v14, :cond_2

    .line 515
    const/4 v2, 0x0

    instance-of v0, v11, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 516
    move-object v0, v11

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object/from16 v4, v18

    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 515
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v14

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 518
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 519
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 522
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 521
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto/16 :goto_6

    .line 524
    :cond_3
    if-eqz v12, :cond_b

    if-ne v12, v13, :cond_4

    goto/16 :goto_5

    .line 530
    :cond_4
    if-ne v12, v1, :cond_f

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 532
    invoke-direct {v7, v12}, Landroid/app/OplusUXIconLoader;->getCommonStylePrefixExceptRect(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 531
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 534
    if-eqz v14, :cond_6

    .line 535
    invoke-virtual {v7, v14}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 536
    const/4 v2, 0x0

    instance-of v0, v11, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_5

    .line 537
    move-object v0, v11

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_5
    move-object/from16 v4, v18

    :goto_2
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 536
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v3, v14

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 539
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 540
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 543
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 546
    const v0, 0xc05008e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 547
    .local v0, "iconMaxSize":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 548
    const v1, 0xc0500db

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v6, v0

    goto :goto_3

    .line 549
    :cond_7
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 550
    const v1, 0xc0500dc

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    move v6, v0

    goto :goto_3

    .line 549
    :cond_8
    move v6, v0

    .line 552
    .end local v0    # "iconMaxSize":I
    .local v6, "iconMaxSize":I
    :goto_3
    if-gtz v6, :cond_9

    .line 553
    return-object v18

    .line 555
    :cond_9
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v0

    invoke-static {v9, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    int-to-float v1, v6

    div-float v19, v0, v1

    .line 557
    .local v19, "scale":F
    instance-of v0, v11, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_a

    .line 558
    move-object v0, v11

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_a
    move-object/from16 v4, v18

    :goto_4
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 559
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {v9, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v5

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 560
    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v0

    invoke-static {v9, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v19

    float-to-int v3, v0

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move/from16 v18, v3

    move-object v3, v15

    move/from16 v20, v6

    .end local v6    # "iconMaxSize":I
    .local v20, "iconMaxSize":I
    move/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 526
    .end local v19    # "scale":F
    .end local v20    # "iconMaxSize":I
    :cond_b
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v5, v16

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto/16 :goto_6

    .line 564
    :cond_c
    iget-object v0, v7, Landroid/app/OplusUXIconLoader;->mSpecialStyleConfigArray:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 565
    .local v6, "specialPos":I
    if-ltz v6, :cond_e

    iget-object v0, v7, Landroid/app/OplusUXIconLoader;->mSpecialStylePrefixArray:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_e

    .line 566
    if-eqz v16, :cond_d

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 568
    invoke-direct {v7, v6}, Landroid/app/OplusUXIconLoader;->getSpecialStylePrefix(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v19, v6

    .end local v6    # "specialPos":I
    .local v19, "specialPos":I
    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 570
    if-eqz v14, :cond_f

    .line 571
    invoke-virtual {v7, v14}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    return-object v14

    .line 575
    .end local v19    # "specialPos":I
    .restart local v6    # "specialPos":I
    :cond_d
    move/from16 v19, v6

    .end local v6    # "specialPos":I
    .restart local v19    # "specialPos":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectFgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 575
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 579
    invoke-direct/range {p0 .. p0}, Landroid/app/OplusUXIconLoader;->getRectBgPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    goto :goto_6

    .line 565
    .end local v19    # "specialPos":I
    .restart local v6    # "specialPos":I
    :cond_e
    move/from16 v19, v6

    .line 584
    .end local v6    # "specialPos":I
    :cond_f
    :goto_6
    if-eqz v14, :cond_11

    .line 585
    instance-of v0, v11, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_10

    .line 586
    move-object v0, v11

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_7

    :cond_10
    move-object/from16 v4, v18

    :goto_7
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v14

    move-object v3, v15

    invoke-direct/range {v0 .. v6}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 588
    :cond_11
    return-object v18
.end method

.method private blacklist getDrawableFromPath(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "pathName"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1096
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 1097
    :cond_0
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1098
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1099
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {p2, v0, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1103
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1099
    return-object v4

    .line 1098
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/OplusUXIconLoader;
    .end local p1    # "pathName":Ljava/lang/String;
    .end local p2    # "res":Landroid/content/res/Resources;
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1103
    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Landroid/app/OplusUXIconLoader;
    .restart local p1    # "pathName":Ljava/lang/String;
    .restart local p2    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1104
    throw v0

    .line 1100
    :catch_0
    move-exception v3

    .line 1103
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1104
    nop

    .line 1105
    return-object v0

    .line 1096
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static whitelist getLoader()Landroid/app/OplusUXIconLoader;
    .locals 2

    .line 130
    sget-object v0, Landroid/app/OplusUXIconLoader;->sInstance:Landroid/app/OplusUXIconLoader;

    if-nez v0, :cond_1

    .line 131
    const-class v0, Landroid/app/OplusUXIconLoader;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Landroid/app/OplusUXIconLoader;->sInstance:Landroid/app/OplusUXIconLoader;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Landroid/app/OplusUXIconLoader;

    invoke-direct {v1}, Landroid/app/OplusUXIconLoader;-><init>()V

    sput-object v1, Landroid/app/OplusUXIconLoader;->sInstance:Landroid/app/OplusUXIconLoader;

    .line 135
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 137
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/OplusUXIconLoader;->sInstance:Landroid/app/OplusUXIconLoader;

    return-object v0
.end method

.method private blacklist getRectBgPrefix()Ljava/lang/String;
    .locals 2

    .line 1085
    iget-object v0, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePrefixArray:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist getRectFgPrefix()Ljava/lang/String;
    .locals 2

    .line 1081
    iget-object v0, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePrefixArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private blacklist getSpecialStylePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .line 1067
    iget-object v0, p0, Landroid/app/OplusUXIconLoader;->mSpecialStylePrefixArray:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1068
    aget-object v0, v0, p1

    return-object v0

    .line 1070
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private blacklist hasTransparentPixels(Landroid/graphics/drawable/Drawable;)Z
    .locals 12
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 1110
    invoke-direct {p0, p1}, Landroid/app/OplusUXIconLoader;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 1112
    .local v1, "transparentCount":I
    const/4 v2, 0x0

    .line 1113
    .local v2, "pixels":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v3, v5

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    .line 1114
    .local v3, "xStep":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 1117
    .local v4, "yStep":I
    move v5, v3

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    const/4 v8, 0x3

    const/16 v9, 0xdc

    const/4 v10, 0x4

    if-ge v5, v7, :cond_3

    .line 1118
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, v10, :cond_2

    .line 1119
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-ge v11, v9, :cond_0

    .line 1120
    add-int/lit8 v2, v2, 0x1

    .line 1122
    :cond_0
    if-ne v7, v8, :cond_1

    if-le v2, v6, :cond_1

    .line 1123
    add-int/lit8 v1, v1, 0x1

    .line 1118
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1126
    .end local v7    # "j":I
    :cond_2
    const/4 v2, 0x0

    .line 1117
    add-int/2addr v5, v3

    goto :goto_0

    .line 1129
    .end local v5    # "i":I
    :cond_3
    move v5, v3

    .restart local v5    # "i":I
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1130
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    .restart local v7    # "j":I
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v10

    sub-int/2addr v11, v6

    if-le v7, v11, :cond_6

    .line 1131
    invoke-virtual {v0, v5, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-ge v11, v9, :cond_4

    .line 1132
    add-int/lit8 v2, v2, 0x1

    .line 1134
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v11, v10

    if-ne v7, v11, :cond_5

    if-le v2, v6, :cond_5

    .line 1135
    add-int/lit8 v1, v1, 0x1

    .line 1130
    :cond_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 1138
    .end local v7    # "j":I
    :cond_6
    const/4 v2, 0x0

    .line 1129
    add-int/2addr v5, v3

    goto :goto_2

    .line 1141
    .end local v5    # "i":I
    :cond_7
    move v5, v4

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_b

    .line 1142
    const/4 v7, 0x1

    .restart local v7    # "j":I
    :goto_5
    if-ge v7, v10, :cond_a

    .line 1143
    invoke-virtual {v0, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v11

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    if-ge v11, v9, :cond_8

    .line 1144
    add-int/lit8 v2, v2, 0x1

    .line 1146
    :cond_8
    if-ne v7, v8, :cond_9

    if-le v2, v6, :cond_9

    .line 1147
    add-int/lit8 v1, v1, 0x1

    .line 1142
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1150
    .end local v7    # "j":I
    :cond_a
    const/4 v2, 0x0

    .line 1141
    add-int/2addr v5, v4

    goto :goto_4

    .line 1153
    .end local v5    # "i":I
    :cond_b
    move v5, v4

    .restart local v5    # "i":I
    :goto_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_f

    .line 1154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    .restart local v7    # "j":I
    :goto_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v8, v10

    sub-int/2addr v8, v6

    if-le v7, v8, :cond_e

    .line 1155
    invoke-virtual {v0, v7, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    if-ge v8, v9, :cond_c

    .line 1156
    add-int/lit8 v2, v2, 0x1

    .line 1158
    :cond_c
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v8, v10

    if-ne v7, v8, :cond_d

    if-le v2, v6, :cond_d

    .line 1159
    add-int/lit8 v1, v1, 0x1

    .line 1154
    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    .line 1162
    .end local v7    # "j":I
    :cond_e
    const/4 v2, 0x0

    .line 1153
    add-int/2addr v5, v4

    goto :goto_6

    .line 1166
    .end local v5    # "i":I
    :cond_f
    goto :goto_8

    .line 1164
    :catch_0
    move-exception v5

    .line 1168
    :goto_8
    const/4 v5, 0x6

    if-lt v1, v5, :cond_10

    goto :goto_9

    :cond_10
    const/4 v6, 0x0

    :goto_9
    return v6
.end method

.method private blacklist initConfigArray(Landroid/content/res/Resources;)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 861
    const v0, 0xc070027    # 1.0400068E-31f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 862
    .local v0, "commonThemeConfigArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 863
    iget-object v2, p0, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    aget v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 865
    .end local v1    # "i":I
    :cond_0
    const v1, 0xc07002b    # 1.0400072E-31f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 866
    .local v1, "specialThemeConfigArray":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 867
    iget-object v3, p0, Landroid/app/OplusUXIconLoader;->mSpecialStyleConfigArray:Ljava/util/ArrayList;

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 870
    .end local v2    # "i":I
    :cond_1
    const v2, 0xc070026    # 1.0400066E-31f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePrefixArray:[Ljava/lang/String;

    .line 871
    const v2, 0xc07002a    # 1.0400071E-31f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/OplusUXIconLoader;->mSpecialStylePrefixArray:[Ljava/lang/String;

    .line 874
    invoke-direct {p0}, Landroid/app/OplusUXIconLoader;->isExpVersion()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 875
    const v2, 0xc070005    # 1.0400028E-31f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePathArray:[Ljava/lang/String;

    goto :goto_2

    .line 877
    :cond_2
    const v2, 0xc070024    # 1.0400064E-31f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/OplusUXIconLoader;->mCommonStylePathArray:[Ljava/lang/String;

    .line 880
    :goto_2
    const v2, 0xc070028    # 1.0400069E-31f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/OplusUXIconLoader;->mSpecialStylePathArray:[Ljava/lang/String;

    .line 881
    return-void
.end method

.method private blacklist initIsExpVersionValues()V
    .locals 4

    .line 849
    const-string v0, "OplusUXIconLoader"

    :try_start_0
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v1

    const-string v2, "oplus.software.uxicon_exp"

    .line 850
    invoke-virtual {v1, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    .line 849
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mIsExpVersion:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    goto :goto_0

    .line 851
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v1, :cond_0

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsExpVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/OplusUXIconLoader;->mIsExpVersion:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    return-void
.end method

.method private blacklist isExpVersion()Z
    .locals 2

    .line 834
    iget-object v0, p0, Landroid/app/OplusUXIconLoader;->mIsExpVersion:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 835
    const-class v0, Landroid/app/OplusUXIconLoader;

    monitor-enter v0

    .line 836
    :try_start_0
    iget-object v1, p0, Landroid/app/OplusUXIconLoader;->mIsExpVersion:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 837
    invoke-direct {p0}, Landroid/app/OplusUXIconLoader;->initIsExpVersionValues()V

    .line 838
    iget-object v1, p0, Landroid/app/OplusUXIconLoader;->mIsExpVersion:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 839
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 842
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 844
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/app/OplusUXIconLoader;->mIsExpVersion:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist isLauncherIcon(Ljava/lang/String;Landroid/content/pm/PackageManager;I)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "id"    # I

    .line 597
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 598
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const v1, 0xc0400

    .line 605
    .local v1, "flag":I
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 607
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "OplusUXIconLoader"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 608
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v6

    if-ne v6, p3, :cond_1

    .line 609
    sget-boolean v3, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v3, :cond_0

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLauncherIcon true: pkgName="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 615
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 616
    :cond_2
    sget-boolean v3, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v3, :cond_3

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLauncherIcon false: pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist isOffUxIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 884
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 885
    return v0

    .line 887
    :cond_0
    const/4 v1, 0x0

    .line 889
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 892
    goto :goto_0

    .line 890
    :catch_0
    move-exception v2

    .line 891
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is off uxicon error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusUXIconLoader"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    .line 894
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.oplus.off_uxicon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 895
    .local v2, "isOff":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 896
    const/4 v0, 0x1

    return v0

    .line 898
    :cond_1
    return v0

    .line 901
    .end local v2    # "isOff":Ljava/lang/Boolean;
    :cond_2
    return v0
.end method

.method private blacklist loadDrawableFromIconPack(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "iconPackageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "pm"    # Landroid/content/pm/PackageManager;
    .param p4, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 731
    const-string v0, "OplusUXIconLoader"

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v2, :cond_0

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadDrawableFromIconPack from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    const/4 v2, 0x0

    .line 736
    .local v2, "iconPackResources":Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 737
    .local v3, "bitmap":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    move-object v2, v4

    .line 746
    invoke-static {}, Landroid/app/OplusIconPackMappingHelper;->parsePackMapping()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 750
    const v4, 0xc0400

    :try_start_1
    invoke-virtual {p3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 752
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_1

    .line 753
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    .line 754
    .local v5, "newVersionCode":J
    sget-wide v7, Landroid/app/OplusUXIconLoader;->sVersionCode:J

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 755
    sput-wide v5, Landroid/app/OplusUXIconLoader;->sVersionCode:J

    .line 756
    const/4 v7, 0x1

    sput-boolean v7, Landroid/app/OplusUXIconLoader;->mNeedUpdateIconMap:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 762
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "newVersionCode":J
    :cond_1
    nop

    .line 764
    :try_start_2
    sget-boolean v4, Landroid/app/OplusUXIconLoader;->mNeedUpdateIconMap:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    if-nez v4, :cond_3

    .line 765
    :cond_2
    new-instance v4, Landroid/app/OplusIconPackUtil;

    invoke-direct {v4, p1, v2}, Landroid/app/OplusIconPackUtil;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    iput-object v4, p0, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    .line 766
    invoke-virtual {v4}, Landroid/app/OplusIconPackUtil;->getIconResMapFromXml()V

    .line 767
    const/4 v4, 0x0

    sput-boolean v4, Landroid/app/OplusUXIconLoader;->mNeedUpdateIconMap:Z

    .line 770
    :cond_3
    if-eqz p1, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    .line 773
    :cond_4
    iget-object v4, p0, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v6, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/OplusIconPackUtil;->getDrawableIconForPackage(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 771
    :cond_5
    :goto_0
    return-object v1

    .line 759
    :catch_0
    move-exception v4

    .line 760
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadDrawableFromIconPack exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 761
    return-object v1

    .line 774
    .end local v2    # "iconPackResources":Landroid/content/res/Resources;
    .end local v3    # "bitmap":Landroid/graphics/drawable/Drawable;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 775
    .local v2, "e":Ljava/lang/Exception;
    iput-object v1, p0, Landroid/app/OplusUXIconLoader;->mIconPackUtil:Landroid/app/OplusIconPackUtil;

    .line 776
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private blacklist loadUXIconByPath(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;

    .line 1024
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_0

    .line 1026
    const-string v0, "OplusUXIconLoader"

    const-string v1, "loadUXIconByPath isEmpty(path)."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1030
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/app/OplusUXIconLoader;->getDrawableFromPath(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "needColorFilter"    # Z

    .line 164
    if-nez p1, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    if-nez p2, :cond_2

    .line 168
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 169
    .local v0, "colorFilter":Landroid/graphics/ColorFilter;
    instance-of v1, v0, Landroid/graphics/LightingColorFilter;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/LightingColorFilter;

    .line 170
    invoke-virtual {v1}, Landroid/graphics/LightingColorFilter;->getColorMultiply()I

    move-result v1

    iget-object v2, p0, Landroid/app/OplusUXIconLoader;->mDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v2}, Landroid/graphics/LightingColorFilter;->getColorMultiply()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 171
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 173
    :cond_1
    return-void

    .line 177
    .end local v0    # "colorFilter":Landroid/graphics/ColorFilter;
    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_3

    .line 178
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 180
    :cond_3
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_5

    .line 181
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 182
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 183
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 184
    .local v2, "childDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    .end local v2    # "childDrawable":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_4
    goto :goto_2

    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz v0, :cond_6

    .line 187
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {v0}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 188
    :cond_6
    instance-of v0, p1, Landroid/graphics/drawable/DrawableContainer;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 191
    :cond_7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 193
    .local v0, "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 194
    .local v1, "constantClass":Ljava/lang/Class;
    const-string v2, "mTint"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 195
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 196
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 197
    sget-boolean v3, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v3, :cond_8

    .line 198
    const-string v3, "OplusUXIconLoader"

    const-string v4, "setDarkFilterToDrawable mTint not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_8
    return-void

    .line 203
    .end local v1    # "constantClass":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_9
    goto :goto_1

    .line 202
    :catch_0
    move-exception v1

    .line 204
    :goto_1
    iget-object v1, p0, Landroid/app/OplusUXIconLoader;->mDarkModeColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 206
    .end local v0    # "constantState":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_2
    return-void
.end method


# virtual methods
.method blacklist findAppDrawable(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;ZZZ)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "isSpecialStyle"    # Z
    .param p5, "isSystemApp"    # Z
    .param p6, "offUxIcon"    # Z

    .line 919
    const-wide/16 v0, 0x2000

    const-string v2, "#UxIcon.getDrawable.findAppDrawable"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 921
    const/4 v2, 0x0

    .line 922
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    invoke-static {v3}, Landroid/app/OplusUxIconConstants$IconLoader;->getDensityName(I)Ljava/lang/String;

    move-result-object v3

    .line 923
    .local v3, "densityName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/app/OplusUxIconConstants$IconLoader;->MY_COUNTRY_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 924
    sget-object v5, Landroid/app/OplusUxIconConstants$IconLoader;->MY_COUNTRY_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 925
    :cond_0
    new-instance v5, Ljava/io/File;

    sget-object v6, Landroid/app/OplusUxIconConstants$IconLoader;->MY_CARRIER_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 926
    sget-object v5, Landroid/app/OplusUxIconConstants$IconLoader;->MY_CARRIER_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    goto :goto_0

    .line 927
    :cond_1
    sget-object v5, Landroid/app/OplusUxIconConstants$IconLoader;->MY_STOCK_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 929
    .local v4, "filePath":Ljava/lang/String;
    sget-boolean v5, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v5, :cond_2

    .line 930
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filepath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusUXIconLoader"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_2
    if-eqz p5, :cond_4

    .line 937
    nop

    .line 938
    if-nez p4, :cond_3

    move-object v5, v4

    goto :goto_1

    :cond_3
    sget-object v5, Landroid/app/OplusUxIconConstants$IconLoader;->BASE_PRODUCT_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    .line 937
    :goto_1
    invoke-direct {p0, v5, p1, p2}, Landroid/app/OplusUXIconLoader;->buildIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p3}, Landroid/app/OplusUXIconLoader;->loadUXIconByPath(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 943
    :cond_4
    sget-object v5, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v5}, Landroid/app/OplusIconConfig;->isArtPlusOn()Z

    move-result v5

    .line 944
    .local v5, "artPlusOn":Z
    if-eqz v5, :cond_5

    .line 945
    const-string v6, "/data/oplus/uxicons/"

    invoke-direct {p0, v6, p1, p2}, Landroid/app/OplusUXIconLoader;->buildIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p3}, Landroid/app/OplusUXIconLoader;->loadUXIconByPath(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 946
    if-nez v2, :cond_5

    .line 947
    invoke-direct {p0, v4, p1, p2}, Landroid/app/OplusUXIconLoader;->buildIconPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p3}, Landroid/app/OplusUXIconLoader;->loadUXIconByPath(Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 952
    .end local v5    # "artPlusOn":Z
    :cond_5
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 954
    return-object v2
.end method

.method public whitelist getUxIconDrawable(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "oplusRes"    # Landroid/content/res/IResourcesExt;
    .param p3, "src"    # Landroid/graphics/drawable/Drawable;
    .param p4, "isForegroundDrawable"    # Z

    .line 220
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->isNeedUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    :cond_0
    if-nez p2, :cond_1

    .line 222
    return-object p3

    .line 224
    :cond_1
    invoke-interface {p2}, Landroid/content/res/IResourcesExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    .line 225
    .local v0, "sysConfig":Landroid/content/res/OplusBaseConfiguration;
    if-nez v0, :cond_2

    .line 226
    return-object p3

    .line 228
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    .line 229
    .local v1, "oplusExtraConfiguration":Loplus/content/res/OplusExtraConfiguration;
    if-eqz v1, :cond_d

    .line 230
    invoke-direct {p0, p1, v1}, Landroid/app/OplusUXIconLoader;->checkConfig(Landroid/content/res/Resources;Loplus/content/res/OplusExtraConfiguration;)V

    .line 234
    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p3

    .line 236
    .end local v0    # "sysConfig":Landroid/content/res/OplusBaseConfiguration;
    .end local v1    # "oplusExtraConfiguration":Loplus/content/res/OplusExtraConfiguration;
    :cond_3
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_4

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUxIconDrawable sIconConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusUXIconLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_4
    iget-object v0, p0, Landroid/app/OplusUXIconLoader;->mCommonStyleConfigArray:Ljava/util/ArrayList;

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 240
    .local v0, "pos":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 242
    const v1, 0xc05008e

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 243
    .local v1, "iconMaxSize":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    const v3, 0xc0500db

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    .line 245
    :cond_5
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 246
    const v3, 0xc0500dc

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 248
    :cond_6
    :goto_0
    if-gtz v1, :cond_7

    .line 249
    return-object v2

    .line 251
    :cond_7
    sget-object v3, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v3}, Landroid/app/OplusIconConfig;->getIconSize()I

    move-result v3

    invoke-static {p1, v3}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 253
    .local v3, "scale":F
    const/4 v6, 0x0

    instance-of v4, p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_8

    .line 254
    move-object v2, p3

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    :cond_8
    nop

    :goto_1
    move-object v8, v2

    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 255
    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v2

    invoke-static {p1, v2}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v9

    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 256
    invoke-virtual {v2}, Landroid/app/OplusIconConfig;->getForegroundSize()I

    move-result v2

    invoke-static {p1, v2}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v10, v2

    .line 253
    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v4 .. v10}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawableForThirdParty(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 258
    .end local v1    # "iconMaxSize":I
    .end local v3    # "scale":F
    :cond_9
    if-eqz p4, :cond_b

    .line 259
    invoke-direct {p0, p3}, Landroid/app/OplusUXIconLoader;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 260
    .local v1, "bgDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_a

    .line 261
    move-object v2, p3

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    :cond_a
    nop

    :goto_2
    move-object v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 260
    move-object v4, p0

    move-object v5, p1

    move-object v6, p3

    move-object v7, v1

    invoke-direct/range {v4 .. v10}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2

    .line 263
    .end local v1    # "bgDrawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    const/4 v5, 0x0

    instance-of v1, p3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_c

    .line 264
    move-object v1, p3

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getMonochrome()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_3

    :cond_c
    nop

    :goto_3
    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 263
    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Landroid/app/OplusUXIconLoader;->buildAdaptiveIconDrawable(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 232
    .local v0, "sysConfig":Landroid/content/res/OplusBaseConfiguration;
    .local v1, "oplusExtraConfiguration":Loplus/content/res/OplusExtraConfiguration;
    :cond_d
    return-object p3
.end method

.method public whitelist loadUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 20
    .param p1, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "activityName"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p6, "loadByResolver"    # Z

    .line 278
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v1, p5

    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    const-string v12, "loadIcon packageName = "

    const-string v13, "OplusUXIconLoader"

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",applicationInfo =:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; loadByResolver = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p6

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_0
    move/from16 v14, p6

    .line 284
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 286
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local p5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    move-object v15, v0

    goto :goto_1

    .line 287
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local p5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v2

    .line 284
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move-object v15, v1

    .line 292
    .end local p5    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v15, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-nez v15, :cond_2

    .line 293
    return-object v2

    .line 296
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    return-object v2

    .line 301
    :cond_3
    const/4 v1, 0x0

    .line 304
    .local v1, "oplusRes":Landroid/content/res/IResourcesExt;
    move-object/from16 v8, p1

    :try_start_1
    invoke-interface {v8, v15}, Landroid/content/res/IUxIconPackageManagerExt;->getOplusBaseResourcesForThemeHelper(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/IResourcesExt;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v1    # "oplusRes":Landroid/content/res/IResourcesExt;
    .local v0, "oplusRes":Landroid/content/res/IResourcesExt;
    nop

    .line 309
    if-nez v0, :cond_4

    .line 310
    return-object v2

    .line 313
    :cond_4
    invoke-interface {v0}, Landroid/content/res/IResourcesExt;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 315
    .local v7, "res":Landroid/content/res/Resources;
    if-nez v7, :cond_5

    .line 316
    return-object v2

    .line 320
    :cond_5
    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->isNeedUpdate()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    :cond_6
    const-string v1, "system"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Landroid/content/res/IResourcesExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 323
    invoke-interface {v0}, Landroid/content/res/IResourcesExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    .local v1, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    goto :goto_2

    .line 324
    .end local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    :cond_7
    invoke-interface {v0}, Landroid/content/res/IResourcesExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 325
    invoke-interface {v0}, Landroid/content/res/IResourcesExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v1

    .line 329
    .restart local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    :goto_2
    invoke-direct {v9, v7, v1}, Landroid/app/OplusUXIconLoader;->checkConfig(Landroid/content/res/Resources;Loplus/content/res/OplusExtraConfiguration;)V

    .line 330
    sget-object v3, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v3}, Landroid/app/OplusIconConfig;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_8

    return-object v2

    .line 340
    .end local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    :cond_8
    const-string v1, ""

    .line 341
    .local v1, "iconNamePrefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 342
    .local v3, "loadApkIcon":Z
    iget v4, v15, Landroid/content/pm/ApplicationInfo;->icon:I

    const/4 v5, 0x5

    if-eq v11, v4, :cond_a

    .line 345
    const-string v4, "com.android.contacts"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 346
    invoke-virtual {v4}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v4

    if-eq v4, v5, :cond_9

    .line 347
    const-string v1, "dialer_"

    move-object/from16 v16, v1

    move/from16 v17, v3

    goto :goto_3

    .line 349
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v16, v1

    move/from16 v17, v3

    goto :goto_3

    .line 342
    :cond_a
    move-object/from16 v16, v1

    move/from16 v17, v3

    .line 357
    .end local v1    # "iconNamePrefix":Ljava/lang/String;
    .end local v3    # "loadApkIcon":Z
    .local v16, "iconNamePrefix":Ljava/lang/String;
    .local v17, "loadApkIcon":Z
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v10, v11, v15}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 358
    .local v6, "originDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, v9, Landroid/app/OplusUXIconLoader;->mOplusUxIconDrawableManager:Landroid/app/IOplusResolverUxIconDrawableManager;

    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-interface {v1, v3, v10, v15, v6}, Landroid/app/IOplusResolverUxIconDrawableManager;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 359
    .local v4, "resolveDrawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v1

    if-ne v1, v5, :cond_c

    .line 362
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v15

    move-object v5, v4

    .end local v4    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .local v5, "resolveDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v4, p2

    move-object/from16 p5, v5

    .end local v5    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .local p5, "resolveDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v5, p3

    move-object/from16 v18, v0

    move-object v0, v6

    .end local v6    # "originDrawable":Landroid/graphics/drawable/Drawable;
    .local v0, "originDrawable":Landroid/graphics/drawable/Drawable;
    .local v18, "oplusRes":Landroid/content/res/IResourcesExt;
    move-object/from16 v6, v16

    move-object/from16 v19, v7

    .end local v7    # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Landroid/app/OplusUXIconLoader;->getDrawableForIconPackTheme(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 364
    .local v1, "packIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_b

    .line 365
    return-object v1

    .line 367
    .end local v1    # "packIcon":Landroid/graphics/drawable/Drawable;
    :cond_b
    move-object/from16 v8, p5

    move-object/from16 v7, v19

    goto :goto_4

    .line 374
    .end local v18    # "oplusRes":Landroid/content/res/IResourcesExt;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local p5    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .local v0, "oplusRes":Landroid/content/res/IResourcesExt;
    .restart local v4    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "originDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_c
    move-object/from16 v18, v0

    move-object/from16 p5, v4

    move-object v0, v6

    move-object/from16 v19, v7

    .end local v4    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "originDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "res":Landroid/content/res/Resources;
    .local v0, "originDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "oplusRes":Landroid/content/res/IResourcesExt;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local p5    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v11, :cond_d

    .line 375
    return-object v2

    .line 376
    :cond_d
    if-nez v17, :cond_10

    move-object/from16 v8, p5

    .end local p5    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .local v8, "resolveDrawable":Landroid/graphics/drawable/Drawable;
    if-ne v0, v8, :cond_f

    .line 377
    move-object/from16 v7, v19

    .end local v19    # "res":Landroid/content/res/Resources;
    .restart local v7    # "res":Landroid/content/res/Resources;
    invoke-static {v7, v10}, Landroid/app/OplusUxIconAppCheckUtils;->isPresetApp(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v19

    .line 378
    .local v19, "isSystemApp":Z
    invoke-static/range {p2 .. p2}, Landroid/app/OplusUxDrawableMappingHelper;->containsPackageName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    if-nez v19, :cond_e

    instance-of v1, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_e

    sget-object v1, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    .line 380
    invoke-virtual {v1}, Landroid/app/OplusIconConfig;->getTheme()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 381
    :cond_e
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move-object/from16 v5, v16

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/app/OplusUXIconLoader;->getDrawableForUXIconTheme(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 382
    .local v1, "uxicon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_11

    .line 383
    return-object v1

    .line 376
    .end local v1    # "uxicon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "res":Landroid/content/res/Resources;
    .local v19, "res":Landroid/content/res/Resources;
    :cond_f
    move-object/from16 v7, v19

    .end local v19    # "res":Landroid/content/res/Resources;
    .restart local v7    # "res":Landroid/content/res/Resources;
    goto :goto_4

    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local p5    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    :cond_10
    move-object/from16 v8, p5

    move-object/from16 v7, v19

    .line 389
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local p5    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "res":Landroid/content/res/Resources;
    .restart local v8    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    :cond_11
    :goto_4
    sget-boolean v1, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v1, :cond_12

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sIconConfig =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_12
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p4

    move-object v4, v15

    move-object v5, v7

    move-object v12, v7

    .end local v7    # "res":Landroid/content/res/Resources;
    .local v12, "res":Landroid/content/res/Resources;
    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/OplusUXIconLoader;->getDrawableForAppIcon(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 327
    .end local v8    # "resolveDrawable":Landroid/graphics/drawable/Drawable;
    .end local v12    # "res":Landroid/content/res/Resources;
    .end local v16    # "iconNamePrefix":Ljava/lang/String;
    .end local v17    # "loadApkIcon":Z
    .end local v18    # "oplusRes":Landroid/content/res/IResourcesExt;
    .local v0, "oplusRes":Landroid/content/res/IResourcesExt;
    .restart local v7    # "res":Landroid/content/res/Resources;
    :cond_13
    return-object v2

    .line 305
    .end local v0    # "oplusRes":Landroid/content/res/IResourcesExt;
    .end local v7    # "res":Landroid/content/res/Resources;
    .local v1, "oplusRes":Landroid/content/res/IResourcesExt;
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 306
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v2
.end method

.method public whitelist setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 209
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->isEnableDarkModeIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 210
    return-void
.end method

.method public whitelist updateDarkModeConfig()V
    .locals 2

    .line 155
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "OplusUXIconLoader"

    const-string v1, "sIconConfig.addUpdateConfig(OplusIconConfig.UPDATE_DARKMODE_CONFIG)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->addUpdateConfig(I)V

    .line 161
    :cond_1
    return-void
.end method

.method public whitelist updateExtraConfig()V
    .locals 2

    .line 146
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    invoke-virtual {v0}, Landroid/app/OplusIconConfig;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "OplusUXIconLoader"

    const-string v1, "sIconConfig.addUpdateConfig(OplusIconConfig.UPDATE_ICON_CONFIG)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    sget-object v0, Landroid/app/OplusUXIconLoader;->sIconConfig:Landroid/app/OplusIconConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->addUpdateConfig(I)V

    .line 152
    :cond_1
    return-void
.end method
