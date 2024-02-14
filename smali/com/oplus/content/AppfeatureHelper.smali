.class public Lcom/oplus/content/AppfeatureHelper;
.super Ljava/lang/Object;
.source "AppfeatureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    }
.end annotation


# static fields
.field private static final blacklist APP_TABLE_NAME_MAP:[Ljava/lang/String;

.field private static final blacklist CFG_ARGS_SPLIT:Ljava/lang/String; = ";"

.field private static final blacklist CFG_ARG_SPLIT:Ljava/lang/String; = ":"

.field static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 28
    const-string v0, "AppfeatureHelper"

    sput-object v0, Lcom/oplus/content/AppfeatureHelper;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "app_feature"

    const-string v1, "app_feature_first"

    const-string v2, "app_feature_second"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/content/AppfeatureHelper;->APP_TABLE_NAME_MAP:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist enableAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/util/List;Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p3, "cacheMode"    # Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;",
            ")V"
        }
    .end annotation

    .line 151
    .local p2, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/oplus/content/AppFeatureCache;->getInstance()Lcom/oplus/content/AppFeatureCache;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/oplus/content/AppFeatureCache;->enableAppFeatureCache(Landroid/content/ContentResolver;ILjava/util/List;Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;)V

    .line 152
    return-void
.end method

.method public static blacklist enableAppFeatureCache(Landroid/content/ContentResolver;Ljava/util/List;Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "cacheMode"    # Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;",
            ")V"
        }
    .end annotation

    .line 155
    .local p1, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->enableAppFeatureCache(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/util/List;Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;)V

    .line 156
    return-void
.end method

.method private static blacklist getAppFeatureCursor(Landroid/content/ContentResolver;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # I
    .param p2, "featureName"    # Ljava/lang/String;

    .line 232
    invoke-static {}, Lcom/oplus/content/AppFeatureCache;->getInstance()Lcom/oplus/content/AppFeatureCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/oplus/content/AppFeatureCache;->getCursorFromCache(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 233
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/oplus/content/AppFeatureCache;->getCachedMode(I)Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    move-result-object v1

    sget-object v2, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->CACHE_ONLY:Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    if-eq v1, v2, :cond_0

    .line 234
    invoke-static {p1}, Lcom/oplus/content/AppfeatureHelper;->getUriFromFeatureMap(I)Landroid/net/Uri;

    move-result-object v1

    .line 235
    .local v1, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v7, v2

    const/4 v8, 0x0

    const-string v6, "featurename=?"

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-object v0
.end method

.method public static blacklist getBoolean(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "def"    # Z

    .line 101
    move v0, p3

    .line 102
    .local v0, "value":Z
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    const-string v2, "boolean"

    invoke-static {p0, v1, p2, v2}, Lcom/oplus/content/AppfeatureHelper;->getStringForFeature(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oplus/content/AppfeatureHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, p3

    :goto_0
    move v0, v2

    .line 107
    nop

    .line 108
    :goto_1
    return v0
.end method

.method public static blacklist getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 112
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->getBoolean(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getFloat(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;F)F
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "def"    # F

    .line 86
    move v0, p3

    .line 87
    .local v0, "value":F
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    const-string v2, "float"

    invoke-static {p0, v1, p2, v2}, Lcom/oplus/content/AppfeatureHelper;->getStringForFeature(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oplus/content/AppfeatureHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, p3

    :goto_0
    move v0, v2

    .line 92
    nop

    .line 93
    :goto_1
    return v0
.end method

.method public static blacklist getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "def"    # F

    .line 97
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->getFloat(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static blacklist getInt(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;I)I
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "def"    # I

    .line 56
    move v0, p3

    .line 57
    .local v0, "value":I
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    const-string v2, "int"

    invoke-static {p0, v1, p2, v2}, Lcom/oplus/content/AppfeatureHelper;->getStringForFeature(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oplus/content/AppfeatureHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 59
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, p3

    :goto_0
    move v0, v2

    .line 62
    nop

    .line 63
    :goto_1
    return v0
.end method

.method public static blacklist getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 67
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->getInt(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static blacklist getLong(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;J)J
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "def"    # J

    .line 71
    move-wide v0, p3

    .line 72
    .local v0, "value":J
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v2

    const-string v3, "long"

    invoke-static {p0, v2, p2, v3}, Lcom/oplus/content/AppfeatureHelper;->getStringForFeature(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "v":Ljava/lang/String;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v3

    .line 76
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/oplus/content/AppfeatureHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLong error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move-wide v3, p3

    :goto_0
    move-wide v0, v3

    .line 77
    nop

    .line 78
    :goto_1
    return-wide v0
.end method

.method public static blacklist getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 82
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2, p3}, Lcom/oplus/content/AppfeatureHelper;->getLong(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist getString(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 116
    move-object v0, p3

    .line 117
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    const-string v2, "String"

    invoke-static {p0, v1, p2, v2}, Lcom/oplus/content/AppfeatureHelper;->getStringForFeature(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 119
    move-object v0, v1

    .line 121
    :cond_0
    return-object v0
.end method

.method public static blacklist getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->getString(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStringForFeature(Landroid/content/ContentResolver;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # I
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "value":Ljava/lang/String;
    if-eqz p0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p3, :cond_5

    .line 181
    invoke-static {p0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->getAppFeatureCursor(Landroid/content/ContentResolver;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 182
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    :cond_0
    const-string v2, "parameters"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "args":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 187
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "argsArray":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_3

    .line 189
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 190
    .local v7, "arg":Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 192
    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 193
    .local v8, "index":I
    if-lez v8, :cond_1

    .line 194
    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, "argType":Ljava/lang/String;
    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 196
    add-int/lit8 v4, v8, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    goto :goto_1

    .line 189
    .end local v7    # "arg":Ljava/lang/String;
    .end local v8    # "index":I
    .end local v9    # "argType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 202
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 205
    .end local v2    # "args":Ljava/lang/String;
    .end local v3    # "argsArray":[Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 210
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_5
    return-object v0
.end method

.method public static blacklist getStringList(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    invoke-static {p0, v0, p2}, Lcom/oplus/content/AppfeatureHelper;->getStringListForFeature(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStringList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1}, Lcom/oplus/content/AppfeatureHelper;->getStringList(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStringListForFeature(Landroid/content/ContentResolver;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # I
    .param p2, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-static {p0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->getAppFeatureCursor(Landroid/content/ContentResolver;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 217
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    const-string v2, "lists"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "jsonStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/oplus/content/AppfeatureHelper;->jsonString2List(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/oplus/content/AppfeatureHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStringListForFeature error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v2    # "jsonStr":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v0
.end method

.method static blacklist getUriFromFeatureMap(I)Landroid/net/Uri;
    .locals 3
    .param p0, "featureID"    # I

    .line 37
    if-ltz p0, :cond_1

    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 40
    const-string v0, "content://com.oplus.customize.coreapp.configmanager.configprovider.AppFeatureProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, "uri":Landroid/net/Uri;
    sget-object v1, Lcom/oplus/content/AppfeatureHelper;->APP_TABLE_NAME_MAP:[Ljava/lang/String;

    aget-object v2, v1, p0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    aget-object v1, v1, p0

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getUriFromFeatureMap featureID is not support"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invlid feature id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "featureName"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "isFeatureSupport":Z
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    invoke-static {p0, v1, p2}, Lcom/oplus/content/AppfeatureHelper;->getAppFeatureCursor(Landroid/content/ContentResolver;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 139
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 142
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_1
    return v0
.end method

.method public static blacklist isFeatureSupport(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureName"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1}, Lcom/oplus/content/AppfeatureHelper;->isFeatureSupport(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist jsonString2List(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "jsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 243
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 244
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v3    # "value":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist registerContentObserver(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;ZLandroid/database/ContentObserver;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "featureID"    # Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .line 163
    invoke-virtual {p1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/oplus/content/AppfeatureHelper;->getUriFromFeatureMap(I)Landroid/net/Uri;

    move-result-object v0

    .line 164
    .local v0, "uri":Landroid/net/Uri;
    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    .line 165
    invoke-virtual {p0, v0, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    :cond_0
    return-void
.end method

.method public static blacklist registerContentObserver(Landroid/content/ContentResolver;ZLandroid/database/ContentObserver;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "notifyForDescendants"    # Z
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 159
    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->STATIC_COMPONENT:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-static {p0, v0, p1, p2}, Lcom/oplus/content/AppfeatureHelper;->registerContentObserver(Landroid/content/ContentResolver;Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;ZLandroid/database/ContentObserver;)V

    .line 160
    return-void
.end method

.method public static blacklist unRegisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 0
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 170
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    :cond_0
    return-void
.end method
