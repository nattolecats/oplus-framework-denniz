.class public Lcom/android/internal/os/PowerProfileExtImpl;
.super Ljava/lang/Object;
.source "PowerProfileExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IPowerProfileExt;


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field static final blacklist TAG:Ljava/lang/String; = "PowerProfile"

.field private static final blacklist TAG_ARRAY:Ljava/lang/String; = "array"

.field private static final blacklist TAG_ARRAYITEM:Ljava/lang/String; = "value"

.field private static final blacklist TAG_DEVICE:Ljava/lang/String; = "device"

.field private static final blacklist TAG_ITEM:Ljava/lang/String; = "item"


# instance fields
.field private blacklist mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private blacklist mProjectPowerProfile:Ljava/lang/String;

.field private blacklist mStrProjectVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "ro.product.prjversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/PowerProfileExtImpl;->mStrProjectVersion:Ljava/lang/String;

    .line 41
    const-string v0, "/odm/etc/power_profile/power_profile.xml"

    iput-object v0, p0, Lcom/android/internal/os/PowerProfileExtImpl;->mProjectPowerProfile:Ljava/lang/String;

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/PowerProfile;

    iput-object v0, p0, Lcom/android/internal/os/PowerProfileExtImpl;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 52
    return-void
.end method


# virtual methods
.method public blacklist readPowerValuesFromXml(Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 55
    .local p1, "powerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    .local p2, "powerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "item"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target project version: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/os/PowerProfileExtImpl;->mStrProjectVersion:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "  power profile : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/os/PowerProfileExtImpl;->mProjectPowerProfile:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PowerProfile"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v4, 0x0

    .line 57
    .local v4, "res":Z
    const/4 v5, 0x0

    .line 58
    .local v5, "parsingArray":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 59
    .local v6, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    const/4 v7, 0x0

    .line 61
    .local v7, "arrayName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/internal/os/PowerProfileExtImpl;->mProjectPowerProfile:Ljava/lang/String;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/android/internal/os/PowerProfileExtImpl;->mProjectPowerProfile:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 62
    const/4 v8, 0x0

    .line 64
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v9, v0

    .line 65
    .local v9, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 66
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v10, v0

    .line 67
    .local v10, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v11, v1, Lcom/android/internal/os/PowerProfileExtImpl;->mProjectPowerProfile:Ljava/lang/String;

    invoke-direct {v0, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 68
    const-string v0, "utf-8"

    invoke-interface {v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 70
    const-string v0, "device"

    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 73
    :goto_0
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 75
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 76
    .local v11, "element":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 105
    .end local v11    # "element":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 106
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Double;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_0
    const/4 v4, 0x1

    .line 114
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 116
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 119
    :goto_1
    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 123
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :goto_2
    move-object/from16 v1, p2

    goto/16 :goto_c

    .line 78
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "element":Ljava/lang/String;
    :cond_1
    const-string v0, "value"

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/Double;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Double;

    invoke-virtual {v2, v7, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v5, 0x0

    .line 83
    :cond_2
    const-string v12, "array"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v13, "name"

    const/4 v14, 0x0

    if-eqz v12, :cond_3

    .line 84
    const/4 v5, 0x1

    .line 85
    :try_start_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 86
    invoke-interface {v10, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object/from16 v1, p2

    goto :goto_6

    .line 87
    :cond_3
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v1, p2

    goto :goto_6

    .line 88
    :cond_5
    :goto_3
    const/4 v0, 0x0

    .line 89
    .local v0, "name":Ljava/lang/String;
    if-nez v5, :cond_6

    invoke-interface {v10, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_4

    :cond_6
    move-object v12, v0

    .line 90
    .end local v0    # "name":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    :goto_4
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v13, 0x4

    if-ne v0, v13, :cond_8

    .line 91
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v13, v0

    .line 92
    .local v13, "power":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 94
    .local v14, "value":D
    :try_start_4
    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide/from16 v14, v16

    .line 96
    goto :goto_5

    .line 95
    :catch_1
    move-exception v0

    .line 97
    :goto_5
    :try_start_5
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v1, p2

    :try_start_6
    invoke-virtual {v1, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 99
    :cond_7
    move-object/from16 v1, p2

    if-eqz v5, :cond_9

    .line 100
    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 111
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "power":Ljava/lang/String;
    .end local v14    # "value":D
    :catch_2
    move-exception v0

    goto :goto_8

    .line 109
    :catch_3
    move-exception v0

    goto :goto_9

    .line 90
    .restart local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "element":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    :cond_8
    move-object/from16 v1, p2

    .line 104
    .end local v11    # "element":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    :cond_9
    :goto_6
    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 114
    .end local v9    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v0

    move-object/from16 v1, p2

    :goto_7
    move-object v3, v0

    goto :goto_a

    .line 111
    :catch_4
    move-exception v0

    move-object/from16 v1, p2

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :goto_8
    :try_start_7
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "res":Z
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfileExtImpl;
    .end local p1    # "powerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    .end local p2    # "powerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    throw v3

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v4    # "res":Z
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfileExtImpl;
    .restart local p1    # "powerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    .restart local p2    # "powerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catch_5
    move-exception v0

    move-object/from16 v1, p2

    .line 110
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_9
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v4    # "res":Z
    .end local v5    # "parsingArray":Z
    .end local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .end local v7    # "arrayName":Ljava/lang/String;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/internal/os/PowerProfileExtImpl;
    .end local p1    # "powerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    .end local p2    # "powerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 114
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "res":Z
    .restart local v5    # "parsingArray":Z
    .restart local v6    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    .restart local v7    # "arrayName":Ljava/lang/String;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/internal/os/PowerProfileExtImpl;
    .restart local p1    # "powerArrayMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Double;>;"
    .restart local p2    # "powerItemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_a
    if-eqz v8, :cond_a

    .line 116
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 119
    goto :goto_b

    .line 117
    :catch_6
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_b
    throw v3

    .line 61
    .end local v8    # "fis":Ljava/io/FileInputStream;
    :cond_b
    move-object/from16 v1, p2

    .line 123
    :goto_c
    return v4
.end method
