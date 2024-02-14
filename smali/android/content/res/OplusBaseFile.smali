.class public Landroid/content/res/OplusBaseFile;
.super Ljava/lang/Object;
.source "OplusBaseFile.java"


# static fields
.field protected static final blacklist ACCESSIBLE:Ljava/lang/String; = "accessible"

.field protected static final blacklist ATTR_NAME:Ljava/lang/String; = "name"

.field protected static final blacklist ATTR_PACKAGE:Ljava/lang/String; = "package"

.field protected static final blacklist DEBUG_THEME:Z

.field public static final blacklist DISABLE:Ljava/lang/String;

.field protected static final blacklist FFFFFF8000000000:J = -0x8000000000L

.field protected static final blacklist FFFFFFFF80000000:J = -0x80000000L

.field protected static final blacklist INPUT_STREAM_CACHE_BYTE_COUNT:I = 0x2000

.field protected static final blacklist NINE_SUFFIX:Ljava/lang/String; = ".9.png"

.field public static final blacklist OPLUS_CUSTOM_CHECK_LIST:[Ljava/lang/String;

.field protected static final blacklist OPLUS_MATERIAL_ENABLE:Ljava/lang/String; = "color_material_enable"

.field protected static final blacklist OPLUS_NXTHEME_IDENTIFIER:Ljava/lang/String; = "nxColorThemeIdentifier"

.field protected static final blacklist OPLUS_THEME_IDENTIFIER:Ljava/lang/String; = "couiThemeIdentifier"

.field protected static final blacklist OPLUS_XML:Ljava/lang/String; = "colors.xml"

.field public static final blacklist PACKAGE_DISABLE_LIST:[Ljava/lang/String;

.field protected static final blacklist PATH_DIVIDER:Ljava/lang/String; = "/"

.field protected static final blacklist PATH_SUFFIX:Ljava/lang/String; = "#*.png"

.field protected static final blacklist PNG_SUFFIX:Ljava/lang/String; = ".png"

.field public static final blacklist S:Ljava/lang/String;

.field protected static final blacklist TAG:Ljava/lang/String; = "OplusBaseFile"

.field protected static final blacklist TAG_ATTR:Ljava/lang/String; = "attr"

.field protected static final blacklist TAG_BOOLEAN:Ljava/lang/String; = "bool"

.field protected static final blacklist TAG_CHILD:Ljava/lang/String; = "child"

.field protected static final blacklist TAG_COLOR:Ljava/lang/String; = "color"

.field protected static final blacklist TAG_DIMEN:Ljava/lang/String; = "dimen"

.field protected static final blacklist TAG_DRAWABLE:Ljava/lang/String; = "drawable"

.field protected static final blacklist TAG_GROUP:Ljava/lang/String; = "group"

.field protected static final blacklist TAG_ID:Ljava/lang/String; = "id"

.field protected static final blacklist TAG_INDEX:Ljava/lang/String; = "index"

.field protected static final blacklist TAG_INTEGER:Ljava/lang/String; = "integer"

.field protected static final blacklist TAG_RESOURCES:Ljava/lang/String; = "resources"

.field protected static final blacklist TAG_STRING:Ljava/lang/String; = "string"

.field protected static final blacklist TRUE:Ljava/lang/String; = "true"

.field protected static final blacklist XML_SUFFIX:Ljava/lang/String; = ".xml"

.field protected static blacklist sCacheFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/OplusBaseFile;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static blacklist sDensities:[I

.field protected static blacklist sDensity:I

.field protected static blacklist sNightWhites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist mBaseResources:Landroid/content/res/IResourcesImplExt;

.field protected blacklist mCharSequences:Landroid/util/SparseArray;

.field private blacklist mHasParsed:Z

.field protected blacklist mIntegers:Landroid/util/SparseArray;

.field protected blacklist mPackageName:Ljava/lang/String;

.field protected blacklist mResources:Landroid/content/res/ResourcesImpl;

.field private blacklist mSupportChar:Z

.field private blacklist mSupportFile:Z

.field private blacklist mSupportInt:Z

.field private blacklist mThemeIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 71
    const/4 v0, 0x7

    new-array v1, v0, [C

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/4 v3, 0x2

    aget-char v2, v2, v3

    const/4 v4, 0x0

    aput-char v2, v1, v4

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v5, 0xe

    aget-char v2, v2, v5

    const/4 v6, 0x1

    aput-char v2, v1, v6

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v7, 0xb

    aget-char v2, v2, v7

    aput-char v2, v1, v3

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    aget-char v2, v2, v5

    const/4 v7, 0x3

    aput-char v2, v1, v7

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v8, 0x11

    aget-char v2, v2, v8

    const/4 v8, 0x4

    aput-char v2, v1, v8

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    aget-char v2, v2, v5

    const/4 v5, 0x5

    aput-char v2, v1, v5

    sget-object v2, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v9, 0x12

    aget-char v2, v2, v9

    const/4 v10, 0x6

    aput-char v2, v1, v10

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/content/res/OplusBaseFile;->S:Ljava/lang/String;

    .line 72
    new-array v2, v7, [C

    sget-object v11, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    aget-char v11, v11, v3

    aput-char v11, v2, v4

    sget-object v11, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    const/16 v12, 0x13

    aget-char v11, v11, v12

    aput-char v11, v2, v6

    sget-object v11, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    aget-char v9, v11, v9

    aput-char v9, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/content/res/OplusBaseFile;->DISABLE:Ljava/lang/String;

    .line 73
    new-array v9, v3, [Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.android."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v4

    const-string v2, "com.android.networkstack"

    aput-object v2, v9, v6

    sput-object v9, Landroid/content/res/OplusBaseFile;->PACKAGE_DISABLE_LIST:[Ljava/lang/String;

    .line 77
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v9, "com.android.systemui"

    aput-object v9, v2, v4

    const-string v9, "com.android.settings"

    aput-object v9, v2, v6

    const-string v6, "com.android.mms"

    aput-object v6, v2, v3

    const-string v3, "com.android.incallui"

    aput-object v3, v2, v7

    const-string v3, "com.android.contacts"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ".incallui"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".alarmclock"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v10

    const-string v1, "com.android.settings.intelligence"

    aput-object v1, v2, v0

    sput-object v2, Landroid/content/res/OplusBaseFile;->OPLUS_CUSTOM_CHECK_LIST:[Ljava/lang/String;

    .line 114
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/res/OplusBaseFile;->sNightWhites:Ljava/util/ArrayList;

    .line 121
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    sput v0, Landroid/content/res/OplusBaseFile;->sDensity:I

    .line 135
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/res/OplusBaseFile;->sCacheFiles:Ljava/util/Map;

    .line 136
    sget-object v0, Landroid/content/res/OplusBaseFile;->sNightWhites:Ljava/util/ArrayList;

    const-string v1, "icons"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Landroid/content/res/OplusBaseFile;->sNightWhites:Ljava/util/ArrayList;

    const-string v1, "lockscreen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Landroid/content/res/OplusBaseFile;->sNightWhites:Ljava/util/ArrayList;

    const-string v1, "com.android.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget v0, Landroid/content/res/OplusBaseFile;->sDensity:I

    invoke-static {v0}, Loplus/util/OplusDisplayUtils;->getBestDensityOrder(I)[I

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusBaseFile;->sDensities:[I

    .line 140
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;ZZZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseResources"    # Landroid/content/res/IResourcesImplExt;
    .param p3, "supportInt"    # Z
    .param p4, "supportChar"    # Z
    .param p5, "supportFile"    # Z

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    .line 123
    iput-object v0, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    .line 124
    iput-object v0, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    .line 125
    iput-object v0, p0, Landroid/content/res/OplusBaseFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    .line 126
    iput-object v0, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/OplusBaseFile;->mSupportChar:Z

    .line 129
    iput-boolean v0, p0, Landroid/content/res/OplusBaseFile;->mSupportFile:Z

    .line 130
    iput-boolean v0, p0, Landroid/content/res/OplusBaseFile;->mSupportInt:Z

    .line 131
    iput-boolean v0, p0, Landroid/content/res/OplusBaseFile;->mHasParsed:Z

    .line 132
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/content/res/OplusBaseFile;->mThemeIndexMap:Ljava/util/HashMap;

    .line 147
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    .line 148
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    .line 149
    iput-object p1, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    .line 150
    iput-boolean p3, p0, Landroid/content/res/OplusBaseFile;->mSupportInt:Z

    .line 151
    iput-boolean p4, p0, Landroid/content/res/OplusBaseFile;->mSupportChar:Z

    .line 152
    iput-boolean p5, p0, Landroid/content/res/OplusBaseFile;->mSupportFile:Z

    .line 153
    iput-object p2, p0, Landroid/content/res/OplusBaseFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    .line 154
    invoke-interface {p2}, Landroid/content/res/IResourcesImplExt;->getResourcesImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    .line 155
    iput-boolean v0, p0, Landroid/content/res/OplusBaseFile;->mHasParsed:Z

    .line 156
    return-void
.end method

.method protected static blacklist getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 217
    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    const-string v0, "oplus-framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    return-object p0

    .line 219
    :cond_1
    :goto_0
    const-string p0, "oplus"

    goto :goto_1

    .line 225
    :cond_2
    const-string p0, "android"

    .line 227
    :goto_1
    return-object p0
.end method

.method public static blacklist isNightMode(Landroid/content/res/IResourcesImplExt;)Z
    .locals 5
    .param p0, "resourcesExt"    # Landroid/content/res/IResourcesImplExt;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "reject":Z
    invoke-interface {p0}, Landroid/content/res/IResourcesImplExt;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 171
    .local v2, "configuration":Landroid/content/res/Configuration;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "oplus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {p0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    goto :goto_1

    .line 172
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 176
    :goto_1
    if-nez v2, :cond_2

    .line 177
    return v0

    .line 180
    :cond_2
    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    if-nez v3, :cond_3

    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    const/16 v4, 0x30

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 182
    :cond_3
    const/4 v0, 0x1

    .line 184
    :cond_4
    return v0
.end method

.method private blacklist mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    .locals 12
    .param p1, "index"    # I
    .param p2, "xmlpullparser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 307
    const-string v0, "OplusBaseFile"

    const/4 v1, 0x0

    .line 308
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 309
    .local v2, "resourceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 310
    .local v3, "resourceType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 312
    .local v4, "resourceValue":Ljava/lang/String;
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 313
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_13

    .line 314
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 388
    :pswitch_1
    goto/16 :goto_8

    .line 318
    :pswitch_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 319
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    goto/16 :goto_8

    .line 323
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    .line 324
    .local v7, "count":I
    if-lez v7, :cond_12

    .line 325
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_3

    .line 326
    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, "attributeName":Ljava/lang/String;
    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 328
    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    goto :goto_2

    .line 329
    :cond_1
    const-string v10, "package"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 330
    invoke-interface {p2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 325
    .end local v9    # "attributeName":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 333
    .end local v8    # "i":I
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    goto/16 :goto_8

    .line 338
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 339
    if-eqz p1, :cond_7

    const/4 v8, 0x2

    if-le p1, v8, :cond_5

    goto :goto_3

    .line 341
    :cond_5
    if-ne p1, v6, :cond_6

    .line 342
    const-string v8, "android"

    move-object v1, v8

    goto :goto_4

    .line 343
    :cond_6
    if-ne p1, v8, :cond_8

    .line 344
    const-string v8, "oplus"

    move-object v1, v8

    goto :goto_4

    .line 340
    :cond_7
    :goto_3
    iget-object v8, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    move-object v1, v8

    .line 347
    :cond_8
    :goto_4
    iget-object v8, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v8, v2, v3, v1}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 348
    .local v8, "resourceId":I
    if-gtz v8, :cond_9

    .line 349
    goto/16 :goto_8

    .line 352
    :cond_9
    const-string v9, "bool"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_f

    .line 353
    const-string v6, "color"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "integer"

    .line 354
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "drawable"

    .line 355
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    .line 366
    :cond_a
    const-string v6, "string"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 367
    iget-boolean v6, p0, Landroid/content/res/OplusBaseFile;->mSupportChar:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_11

    .line 368
    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v6, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 370
    :cond_b
    const-string v6, "dimen"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-boolean v6, p0, Landroid/content/res/OplusBaseFile;->mSupportInt:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    .line 371
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_11

    .line 372
    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    .line 373
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    .line 372
    invoke-direct {p0, v6, v9}, Landroid/content/res/OplusBaseFile;->parseDimension(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 374
    .local v6, "integer":Ljava/lang/Integer;
    if-eqz v6, :cond_c

    .line 375
    iget-object v9, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    .end local v6    # "integer":Ljava/lang/Integer;
    :cond_c
    goto :goto_7

    .line 356
    :cond_d
    :goto_5
    iget-boolean v6, p0, Landroid/content/res/OplusBaseFile;->mSupportInt:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-gez v6, :cond_11

    .line 358
    :try_start_1
    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    .line 360
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 359
    invoke-static {v9, v10}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 358
    invoke-virtual {v6, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 361
    :catch_0
    move-exception v6

    .line 362
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    sget-boolean v9, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mergeThemeValues NumberFormatException happened when loadThemeValues, msg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 363
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 362
    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    :goto_6
    goto :goto_7

    .line 378
    :cond_f
    iget-boolean v9, p0, Landroid/content/res/OplusBaseFile;->mSupportInt:Z

    if-eqz v9, :cond_11

    iget-object v9, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_11

    .line 379
    const-string v9, "true"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 380
    iget-object v9, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 382
    :cond_10
    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    .end local v8    # "resourceId":I
    :cond_11
    :goto_7
    goto :goto_8

    .line 316
    .end local v7    # "count":I
    :pswitch_3
    nop

    .line 394
    :cond_12
    :goto_8
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v5, v6

    goto/16 :goto_0

    .line 313
    .end local v5    # "eventType":I
    :cond_13
    goto :goto_9

    .line 400
    :catch_1
    move-exception v5

    .line 401
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeThemeValues IOException happened when loadThemeValues, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 403
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 396
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 397
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-boolean v6, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeThemeValues XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 399
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_14
    :goto_9
    nop

    .line 405
    :cond_15
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist parseDimension(Landroid/content/res/ResourcesImpl;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 21
    .param p1, "res"    # Landroid/content/res/ResourcesImpl;
    .param p2, "value"    # Ljava/lang/String;

    .line 505
    move-object/from16 v1, p2

    const/4 v0, -0x4

    .line 506
    .local v0, "intPos":I
    const/4 v2, -0x3

    .line 507
    .local v2, "dotPos":I
    const/4 v3, -0x2

    .line 508
    .local v3, "fractionPos":I
    const/4 v4, -0x1

    .line 509
    .local v4, "unitPos":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 510
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 511
    .local v6, "c":C
    const/4 v7, -0x4

    const/16 v8, 0x39

    const/16 v9, 0x30

    if-ne v0, v7, :cond_0

    if-lt v6, v9, :cond_0

    if-gt v6, v8, :cond_0

    .line 512
    move v0, v5

    .line 514
    :cond_0
    const/4 v7, -0x3

    if-ne v2, v7, :cond_1

    const/16 v10, 0x2e

    if-ne v6, v10, :cond_1

    .line 515
    move v2, v5

    .line 517
    :cond_1
    if-eq v2, v7, :cond_2

    if-lt v6, v9, :cond_2

    if-gt v6, v8, :cond_2

    .line 518
    move v3, v5

    .line 520
    :cond_2
    const/16 v7, 0x61

    if-lt v6, v7, :cond_3

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_3

    .line 521
    move v4, v5

    .line 522
    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_1

    .line 509
    .end local v6    # "c":C
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .line 525
    .end local v0    # "intPos":I
    .local v2, "intPos":I
    .local v3, "dotPos":I
    .local v4, "fractionPos":I
    .local v5, "unitPos":I
    :goto_1
    const/4 v6, 0x0

    .line 526
    .local v6, "fraction":I
    const/4 v7, 0x0

    .line 527
    .local v7, "mantissaShift":I
    const/4 v0, -0x1

    const/4 v8, 0x0

    if-eq v5, v0, :cond_15

    if-lt v3, v4, :cond_5

    const/4 v0, -0x2

    if-ne v4, v0, :cond_15

    :cond_5
    if-lt v4, v5, :cond_6

    goto/16 :goto_5

    .line 532
    :cond_6
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 533
    .local v9, "f":F
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_7

    const/4 v0, 0x1

    .line 534
    .local v0, "neg":Z
    :cond_7
    if-eqz v0, :cond_8

    .line 535
    neg-float v9, v9

    .line 537
    :cond_8
    const/high16 v10, 0x4b000000    # 8388608.0f

    mul-float/2addr v10, v9

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-long v10, v10

    .line 540
    .local v10, "bits":J
    const-wide/32 v12, 0x7fffff

    and-long/2addr v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_9

    .line 543
    const/4 v12, 0x0

    .line 544
    .local v12, "radix":I
    const/16 v13, 0x17

    .local v13, "shift":I
    goto :goto_2

    .line 545
    .end local v12    # "radix":I
    .end local v13    # "shift":I
    :cond_9
    const-wide/32 v12, -0x800000

    and-long/2addr v12, v10

    cmp-long v12, v12, v14

    if-nez v12, :cond_a

    .line 547
    const/4 v12, 0x3

    .line 548
    .restart local v12    # "radix":I
    const/4 v13, 0x0

    .restart local v13    # "shift":I
    goto :goto_2

    .line 549
    .end local v12    # "radix":I
    .end local v13    # "shift":I
    :cond_a
    const-wide/32 v12, -0x80000000

    and-long/2addr v12, v10

    cmp-long v12, v12, v14

    if-nez v12, :cond_b

    .line 551
    const/4 v12, 0x2

    .line 552
    .restart local v12    # "radix":I
    const/16 v13, 0x8

    .restart local v13    # "shift":I
    goto :goto_2

    .line 553
    .end local v12    # "radix":I
    .end local v13    # "shift":I
    :cond_b
    const-wide v12, -0x8000000000L

    and-long/2addr v12, v10

    cmp-long v12, v12, v14

    if-nez v12, :cond_c

    .line 555
    const/4 v12, 0x1

    .line 556
    .restart local v12    # "radix":I
    const/16 v13, 0x10

    .restart local v13    # "shift":I
    goto :goto_2

    .line 559
    .end local v12    # "radix":I
    .end local v13    # "shift":I
    :cond_c
    const/4 v12, 0x0

    .line 560
    .restart local v12    # "radix":I
    const/16 v13, 0x17

    .line 562
    .restart local v13    # "shift":I
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 563
    .local v14, "unit":Ljava/lang/String;
    const-string v15, "px"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 564
    const/4 v15, 0x0

    .local v15, "unitType":I
    goto :goto_4

    .line 565
    .end local v15    # "unitType":I
    :cond_d
    const-string v15, "dp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    const-string v15, "dip"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    goto :goto_3

    .line 567
    :cond_e
    const-string v15, "sp"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 568
    const/4 v15, 0x2

    .restart local v15    # "unitType":I
    goto :goto_4

    .line 569
    .end local v15    # "unitType":I
    :cond_f
    const-string v15, "pt"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 570
    const/4 v15, 0x3

    .restart local v15    # "unitType":I
    goto :goto_4

    .line 571
    .end local v15    # "unitType":I
    :cond_10
    const-string v15, "in"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 572
    const/4 v15, 0x4

    .restart local v15    # "unitType":I
    goto :goto_4

    .line 573
    .end local v15    # "unitType":I
    :cond_11
    const-string v15, "mm"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 574
    const/4 v15, 0x5

    .restart local v15    # "unitType":I
    goto :goto_4

    .line 576
    .end local v15    # "unitType":I
    :cond_12
    return-object v8

    .line 566
    :cond_13
    :goto_3
    const/4 v15, 0x1

    .line 578
    .restart local v15    # "unitType":I
    :goto_4
    shr-long v16, v10, v13

    const-wide/32 v18, 0xffffff

    move/from16 v20, v9

    .end local v9    # "f":F
    .local v20, "f":F
    and-long v8, v16, v18

    long-to-int v8, v8

    .line 579
    .local v8, "mantissa":I
    if-eqz v0, :cond_14

    .line 580
    neg-int v9, v8

    const v16, 0xffffff

    and-int v8, v9, v16

    .line 582
    :cond_14
    shl-int/lit8 v9, v8, 0x8

    shl-int/lit8 v16, v12, 0x4

    or-int v9, v9, v16

    shl-int/lit8 v16, v15, 0x0

    or-int v9, v9, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 585
    .end local v0    # "neg":Z
    .end local v8    # "mantissa":I
    .end local v10    # "bits":J
    .end local v12    # "radix":I
    .end local v13    # "shift":I
    .end local v14    # "unit":Ljava/lang/String;
    .end local v15    # "unitType":I
    .end local v20    # "f":F
    :catch_0
    move-exception v0

    .line 586
    .local v0, "e2":Ljava/lang/NumberFormatException;
    const/4 v8, 0x0

    return-object v8

    .line 528
    .end local v0    # "e2":Ljava/lang/NumberFormatException;
    :cond_15
    :goto_5
    return-object v8
.end method

.method public static blacklist rejectTheme(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resourcesExt"    # Landroid/content/res/IResourcesImplExt;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 164
    invoke-static {p0}, Landroid/content/res/OplusBaseFile;->isNightMode(Landroid/content/res/IResourcesImplExt;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/res/OplusBaseFile;->sNightWhites:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected declared-synchronized blacklist clean(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p1, "file"    # Ljava/util/zip/ZipFile;

    monitor-enter p0

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/OplusBaseFile;->closeZipFile(Ljava/util/zip/ZipFile;)V

    .line 248
    iget-object v0, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 249
    iget-object v0, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 250
    sget-object v0, Landroid/content/res/OplusBaseFile;->sCacheFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 246
    .end local p0    # "this":Landroid/content/res/OplusBaseFile;
    .end local p1    # "file":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized blacklist closeZipFile(Ljava/util/zip/ZipFile;)V
    .locals 4
    .param p1, "file"    # Ljava/util/zip/ZipFile;

    monitor-enter p0

    .line 254
    if-eqz p1, :cond_1

    .line 256
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    goto :goto_0

    .line 253
    .end local p0    # "this":Landroid/content/res/OplusBaseFile;
    .end local p1    # "file":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 257
    .restart local p1    # "file":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 260
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_1
    sget-boolean v1, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v1, :cond_0

    const-string v1, "OplusBaseFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OplusThemeZipFile Exception exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    .end local v0    # "exception":Ljava/lang/Exception;
    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    .line 253
    .end local p1    # "file":Ljava/util/zip/ZipFile;
    :goto_1
    monitor-exit p0

    throw p1

    .line 265
    .restart local p0    # "this":Landroid/content/res/OplusBaseFile;
    .restart local p1    # "file":Ljava/util/zip/ZipFile;
    :cond_1
    :goto_2
    monitor-exit p0

    return-void
.end method

.method protected blacklist getCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "i"    # I

    .line 231
    iget-object v0, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getFileInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .line 408
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 413
    .local v0, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v1, "xmlFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 419
    .end local v1    # "xmlFile":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    .line 418
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaterilaStream e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusBaseFile"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v0
.end method

.method protected blacklist getInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .line 235
    iget-object v0, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getThemeIndexValue(I)I
    .locals 12
    .param p1, "userId"    # I

    .line 469
    const-string v0, "attr"

    iget-object v1, p0, Landroid/content/res/OplusBaseFile;->mThemeIndexMap:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 470
    .local v1, "cacheIndex":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 471
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 473
    :cond_0
    const/4 v2, 0x0

    .line 474
    .local v2, "themeIndex":I
    const/4 v3, 0x0

    .line 476
    .local v3, "array":Landroid/content/res/TypedArray;
    :try_start_0
    iget-object v4, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    const-string v5, "couiThemeIdentifier"

    iget-object v6, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 477
    .local v4, "themeId":I
    if-gtz v4, :cond_1

    .line 478
    iget-object v5, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    const-string v6, "nxColorThemeIdentifier"

    iget-object v7, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v0, v7}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 480
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v5, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-interface {v0, v5, v6, v7, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 481
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    if-lez v4, :cond_2

    .line 482
    const/4 v5, 0x1

    new-array v6, v5, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    .line 483
    .local v6, "attr":[I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    .line 484
    .local v8, "appCxt":Landroid/content/Context;
    new-instance v9, Landroid/view/ContextThemeWrapper;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v9, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 485
    .local v9, "themeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 486
    .local v10, "theme":Landroid/content/res/Resources$Theme;
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {v10, v11, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 487
    invoke-virtual {v9, v10}, Landroid/view/ContextThemeWrapper;->setTheme(Landroid/content/res/Resources$Theme;)V

    .line 488
    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v3, v5

    .line 489
    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v5

    .line 494
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "themeId":I
    .end local v6    # "attr":[I
    .end local v8    # "appCxt":Landroid/content/Context;
    .end local v9    # "themeWrapper":Landroid/view/ContextThemeWrapper;
    .end local v10    # "theme":Landroid/content/res/Resources$Theme;
    :cond_2
    if-eqz v3, :cond_3

    .line 495
    :goto_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 494
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "OplusBaseFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getThemeIndexValue exception, msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 495
    goto :goto_0

    .line 498
    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    .line 499
    iget-object v0, p0, Landroid/content/res/OplusBaseFile;->mThemeIndexMap:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_4
    return v2

    .line 494
    :goto_2
    if-eqz v3, :cond_5

    .line 495
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 497
    :cond_5
    throw v0
.end method

.method protected blacklist hasValues()Z
    .locals 2

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "flag":Z
    iget-object v1, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OplusBaseFile;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x1

    .line 243
    :cond_1
    return v0
.end method

.method protected blacklist isMaterialMetaEnable(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, "enable":Z
    const/4 v1, 0x0

    .line 202
    .local v1, "userId":I
    :try_start_0
    iget-object v2, p0, Landroid/content/res/OplusBaseFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v2}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v2

    .line 203
    .local v2, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-eqz v2, :cond_0

    .line 204
    const/4 v3, 0x0

    iget v4, v2, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    .line 206
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x80

    invoke-interface {v3, p1, v4, v5, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 207
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_1

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 208
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "color_material_enable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 212
    .end local v1    # "userId":I
    .end local v2    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    goto :goto_0

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isColorMetaEnable exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusBaseFile"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist isParsed()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Landroid/content/res/OplusBaseFile;->mHasParsed:Z

    return v0
.end method

.method protected blacklist parseXmlStream(ILandroid/content/res/OplusThemeZipFile$ThemeFileInfo;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "themeFileInfo"    # Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    .line 268
    const-string v0, "in IOException happened when loadThemeValues, msg = "

    const-string v1, "bufferedinputstream IOException happened when loadThemeValues, msg = "

    const-string v2, "OplusBaseFile"

    if-nez p2, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    const/4 v3, 0x0

    .line 272
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 274
    .local v4, "bufferedinputstream":Ljava/io/BufferedInputStream;
    :try_start_0
    iget-object v5, p2, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    move-object v3, v5

    .line 275
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 276
    .local v5, "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/BufferedInputStream;

    const/16 v7, 0x2000

    invoke-direct {v6, v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v6

    .line 277
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0, p1, v5}, Landroid/content/res/OplusBaseFile;->mergeThemeValues(ILorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v5    # "xmlpullparser":Lorg/xmlpull/v1/XmlPullParser;
    nop

    .line 286
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    goto :goto_0

    .line 288
    :catch_0
    move-exception v5

    .line 289
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 295
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 297
    :catch_1
    move-exception v1

    .line 298
    .local v1, "e":Ljava/io/IOException;
    sget-boolean v5, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    goto :goto_5

    .line 299
    :cond_3
    :goto_2
    goto :goto_5

    .line 284
    :catchall_0
    move-exception v5

    goto :goto_6

    .line 280
    :catch_2
    move-exception v5

    .line 281
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    sget-boolean v6, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "XmlPullParserException happened when loadThemeValues, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 282
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    if-eqz v4, :cond_5

    .line 286
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 288
    :catch_3
    move-exception v5

    .line 289
    .local v5, "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 291
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :goto_3
    nop

    .line 294
    :cond_6
    :goto_4
    if-eqz v3, :cond_3

    .line 295
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 297
    :catch_4
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v5, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 301
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    return-void

    .line 285
    :goto_6
    if-eqz v4, :cond_7

    .line 286
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    .line 288
    :catch_5
    move-exception v6

    .line 289
    .local v6, "e":Ljava/io/IOException;
    sget-boolean v7, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 290
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 291
    .end local v6    # "e":Ljava/io/IOException;
    :cond_7
    :goto_7
    nop

    .line 294
    :cond_8
    :goto_8
    if-eqz v3, :cond_9

    .line 295
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    .line 297
    :catch_6
    move-exception v1

    .line 298
    .restart local v1    # "e":Ljava/io/IOException;
    sget-boolean v6, Landroid/content/res/OplusBaseFile;->DEBUG_THEME:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 299
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9
    :goto_9
    nop

    .line 300
    :cond_a
    :goto_a
    throw v5
.end method

.method public blacklist readValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "child"    # Ljava/lang/String;
    .param p3, "filterTag"    # Ljava/lang/String;
    .param p4, "attr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 424
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    .line 426
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 427
    goto :goto_0

    .line 429
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 430
    goto :goto_0

    .line 432
    :cond_1
    invoke-interface {p1, v1, p4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, "resourceName":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    .line 434
    .local v3, "resourceValue":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    iget-object v4, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    iget-object v5, p0, Landroid/content/res/OplusBaseFile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2, p3, v5}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 438
    .local v4, "resourceId":I
    if-gtz v4, :cond_3

    .line 439
    goto :goto_0

    .line 442
    :cond_3
    :try_start_0
    iget-object v5, p0, Landroid/content/res/OplusBaseFile;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->convertValueToUnsignedInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    goto :goto_1

    .line 443
    :catch_0
    move-exception v5

    .line 444
    .local v5, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readValue exception, msg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OplusBaseFile"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v2    # "resourceName":Ljava/lang/String;
    .end local v3    # "resourceValue":Ljava/lang/String;
    .end local v4    # "resourceId":I
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    goto :goto_0

    .line 447
    :cond_4
    return-void
.end method

.method public blacklist setParsed(Z)V
    .locals 0
    .param p1, "hasParsed"    # Z

    .line 188
    iput-boolean p1, p0, Landroid/content/res/OplusBaseFile;->mHasParsed:Z

    .line 189
    return-void
.end method

.method public blacklist setResource(Landroid/content/res/IResourcesImplExt;)V
    .locals 1
    .param p1, "baseResources"    # Landroid/content/res/IResourcesImplExt;

    .line 159
    iput-object p1, p0, Landroid/content/res/OplusBaseFile;->mBaseResources:Landroid/content/res/IResourcesImplExt;

    .line 160
    invoke-interface {p1}, Landroid/content/res/IResourcesImplExt;->getResourcesImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/OplusBaseFile;->mResources:Landroid/content/res/ResourcesImpl;

    .line 161
    return-void
.end method

.method public blacklist skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 453
    const/4 v0, 0x1

    .line 454
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_0

    .line 455
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 463
    goto :goto_0

    .line 457
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 458
    goto :goto_0

    .line 460
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 461
    goto :goto_0

    .line 466
    :cond_0
    return-void

    .line 451
    .end local v0    # "depth":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
