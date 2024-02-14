.class public Lcom/oplus/deepthinker/userprofile/utils/WifiLocationLabelUtils;
.super Ljava/lang/Object;
.source "WifiLocationLabelUtils.java"


# static fields
.field private static final blacklist CONFIG_KEY_MIN_LEN:I = 0x4

.field private static final blacklist CONFIG_KEY_PREFIX_LEN:I = 0x2

.field private static final blacklist CONFIG_KEY_START_INDEX:I = 0x0

.field private static final blacklist CONFIG_KEY_SUFFIX_LEN:I = 0x2

.field private static final blacklist INDEX_ACCURACY:I = 0x3

.field private static final blacklist INDEX_BSSID:I = 0x1

.field private static final blacklist INDEX_LATITUDE:I = 0x1

.field private static final blacklist INDEX_LONGITUDE:I = 0x0

.field private static final blacklist INDEX_POINT_SIZE:I = 0x2

.field private static final blacklist INDEX_RADIUS:I = 0x4

.field private static final blacklist INDEX_SSID:I = 0x0

.field private static final blacklist LABEL_RESULT_LENGTH:I = 0x7

.field private static final blacklist LABEL_SPLITER:Ljava/lang/String; = "-"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiLocationLabelUtils"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getWifiLocationLabels(Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;)Ljava/util/List;
    .locals 9
    .param p0, "delegate"    # Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;>;"
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v1, "query":Landroid/os/Bundle;
    const-string v2, "label_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    sget-object v2, Lcom/oplus/deepthinker/userprofile/UserProfileConstants$LabelId;->WIFI_LOCATION:Lcom/oplus/deepthinker/userprofile/UserProfileConstants$LabelId;

    invoke-virtual {v2}, Lcom/oplus/deepthinker/userprofile/UserProfileConstants$LabelId;->getValue()I

    move-result v2

    const-string v3, "label_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v2, "data_cycle"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    invoke-static {p0, v1}, Lcom/oplus/deepthinker/userprofile/utils/InnerUtils;->queryUserProfile(Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v2

    .line 61
    .local v2, "queryList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v3, "WifiLocationLabelUtils"

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 65
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 67
    .local v5, "cv":Landroid/content/ContentValues;
    :try_start_0
    const-string v6, "label_result"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, "labelResult":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "labelResult = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {v6}, Lcom/oplus/deepthinker/userprofile/utils/WifiLocationLabelUtils;->parseWifiLabels(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    nop

    .end local v6    # "labelResult":Ljava/lang/String;
    goto :goto_1

    .line 70
    :catch_0
    move-exception v6

    .line 71
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getWifiLocationLabels Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v5    # "cv":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 74
    :cond_1
    return-object v0

    .line 62
    :cond_2
    :goto_2
    const-string v4, "getWifiLocationLabel result is null or Empty"

    invoke-static {v3, v4}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v0
.end method

.method private static blacklist parseWifiLabels(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .param p0, "labelResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 80
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v2, p0

    :try_start_1
    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 82
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 83
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "mLongitude"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    .line 84
    .local v7, "longitude":D
    const-string v5, "mLatitude"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    .line 85
    .local v9, "latitude":D
    const-string v5, "mRadius"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 86
    .local v11, "radius":I
    const-string v5, "mClusterPointsNum"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 87
    .local v12, "clusterPointsNum":I
    const-string v5, "mAccuracy"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v13

    .line 88
    .local v13, "accuracy":D
    const-string v5, "mBssidSet"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/deepthinker/userprofile/utils/WifiLocationLabelUtils;->strToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v15

    .line 89
    .local v15, "bssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "mSsidSet"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/deepthinker/userprofile/utils/WifiLocationLabelUtils;->strToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v16

    .line 90
    .local v16, "ssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "mConfigName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/deepthinker/userprofile/utils/WifiLocationLabelUtils;->strToSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v17

    .line 91
    .local v17, "configKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v5, "mSurvivalTime"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 92
    .local v5, "survivalTime":I
    new-instance v18, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;

    move-object/from16 v6, v18

    invoke-direct/range {v6 .. v17}, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;-><init>(DDIIDLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    move-object/from16 v6, v18

    .line 94
    .local v6, "wifiLocationLabel":Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;
    invoke-virtual {v6, v5}, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->setSurvivalTime(I)V

    .line 95
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 81
    nop

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "survivalTime":I
    .end local v6    # "wifiLocationLabel":Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;
    .end local v7    # "longitude":D
    .end local v9    # "latitude":D
    .end local v11    # "radius":I
    .end local v12    # "clusterPointsNum":I
    .end local v13    # "accuracy":D
    .end local v15    # "bssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v16    # "ssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "configKey":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseWifiLabels Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WifiLocationLabelUtils"

    invoke-static {v4, v3}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v1
.end method

.method private static blacklist strToSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "strToSet: input str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiLocationLabelUtils"

    invoke-static {v1, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 106
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v2, "\\\\\""

    const-string v3, "\""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 109
    const-string v3, "strToSet: str.len < CONFIG_KEY_MIN_LEN, return"

    invoke-static {v1, v3}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v0

    .line 112
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\",\""

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "strArray":[Ljava/lang/String;
    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, v4, v3

    .line 116
    .local v6, "element":Ljava/lang/String;
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v6    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "strToSet: output str="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method
