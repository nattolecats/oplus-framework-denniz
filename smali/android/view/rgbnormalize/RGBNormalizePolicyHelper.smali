.class public Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;
.super Ljava/lang/Object;
.source "RGBNormalizePolicyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    }
.end annotation


# static fields
.field private static final blacklist VIEW_INFO_MATRIX:Ljava/lang/String; = "matrix"

.field private static final blacklist VIEW_INFO_NAME:Ljava/lang/String; = "name"

.field private static final blacklist VIEW_PARAM_MAX_GRAY_VALUE:Ljava/lang/String; = "max_gray_value"

.field private static final blacklist VIEW_PARAM_MIN_GRAY_VALUE:Ljava/lang/String; = "min_gray_value"

.field private static blacklist sActivities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sCurrentRenderingViewInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

.field private static blacklist sMatrix:[F


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sActivities:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getCurrentRenderingViewInfo()Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    .locals 1

    .line 139
    sget-object v0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sCurrentRenderingViewInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    return-object v0
.end method

.method public static blacklist getMatrix()[F
    .locals 1

    .line 135
    sget-object v0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sMatrix:[F

    return-object v0
.end method

.method public static blacklist initRGBNormalizeApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 7
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 67
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    .line 68
    .local v0, "appInfoExt":Landroid/content/pm/IApplicationInfoExt;
    :goto_0
    if-eqz v0, :cond_1

    .line 69
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getRGBNormalizeExtraBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    const-string v2, "matrix"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "matrixStr":Ljava/lang/String;
    const-string v4, "policy"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "policy":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->parseConfigParams(Ljava/lang/String;)V

    .line 75
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->parsePolicyParams(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 76
    :catch_0
    move-exception v4

    .line 77
    .local v4, "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RGBNormalize"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "matrixStr":Ljava/lang/String;
    .end local v3    # "policy":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method

.method public static blacklist isViewInPolicy(Ljava/lang/String;Landroid/view/View;)Z
    .locals 7
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sCurrentRenderingViewInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    .line 46
    sget-object v0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    return v1

    .line 51
    :cond_0
    sget-object v0, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sActivities:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 52
    .local v0, "viewInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;>;"
    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 54
    return v2

    .line 57
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    .line 58
    .local v4, "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->getViewName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    sput-object v4, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sCurrentRenderingViewInfo:Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    .line 60
    return v2

    .line 62
    .end local v4    # "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    :cond_2
    goto :goto_0

    .line 63
    :cond_3
    return v1
.end method

.method private static blacklist parseConfigParams(Ljava/lang/String;)V
    .locals 4
    .param p0, "matrixStr"    # Ljava/lang/String;

    .line 84
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "matrixList":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [F

    .line 86
    .local v1, "matrix":[F
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 87
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v2

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "index":I
    :cond_0
    sput-object v1, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sMatrix:[F

    .line 90
    return-void
.end method

.method private static blacklist parsePolicyParams(Lorg/json/JSONArray;)V
    .locals 12
    .param p0, "entities"    # Lorg/json/JSONArray;

    .line 93
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 98
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 99
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    .local v1, "eachEntity":Lorg/json/JSONObject;
    if-eqz v1, :cond_3

    .line 102
    const-string v2, "activity_name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "activityName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 104
    .local v3, "views":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 105
    .local v4, "viewParams":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 106
    .local v5, "viewInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;>;"
    const-string v6, "view_name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "view_params"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 109
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 111
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_2

    .line 112
    new-instance v7, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;

    invoke-direct {v7}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;-><init>()V

    .line 113
    .local v7, "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    aget-object v8, v3, v6

    .line 114
    .local v8, "viewName":Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->setViewName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 116
    .local v9, "viewParam":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    .line 117
    const-string v10, "max_gray_value"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 118
    .local v10, "maxGrayValue":I
    const-string v11, "min_gray_value"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 119
    .local v11, "minGrayValue":I
    invoke-virtual {v7, v10}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->setMaxGrayScaleValue(I)V

    .line 120
    invoke-virtual {v7, v11}, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;->setMinGrayScaleValue(I)V

    .line 122
    .end local v10    # "maxGrayValue":I
    .end local v11    # "minGrayValue":I
    :cond_1
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v7    # "viewInfo":Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;
    .end local v8    # "viewName":Ljava/lang/String;
    .end local v9    # "viewParam":Lorg/json/JSONObject;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 125
    .end local v6    # "j":I
    :cond_2
    sget-object v6, Landroid/view/rgbnormalize/RGBNormalizePolicyHelper;->sActivities:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v1    # "eachEntity":Lorg/json/JSONObject;
    .end local v2    # "activityName":Ljava/lang/String;
    .end local v3    # "views":[Ljava/lang/String;
    .end local v4    # "viewParams":Lorg/json/JSONArray;
    .end local v5    # "viewInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/rgbnormalize/RGBNormalizePolicyHelper$OplusRGBViewInfo;>;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "i":I
    :cond_4
    return-void

    .line 94
    :cond_5
    :goto_2
    return-void
.end method
