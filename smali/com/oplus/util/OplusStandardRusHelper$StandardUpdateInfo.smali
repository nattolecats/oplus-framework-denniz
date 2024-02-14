.class public Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
.super Lcom/oplus/util/RomUpdateHelper$UpdateInfo;
.source "OplusStandardRusHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusStandardRusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardUpdateInfo"
.end annotation


# instance fields
.field private blacklist mBuildSdk:I

.field private blacklist mOsVersion:I

.field private final blacklist mWhiteList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/oplus/util/OplusStandardRusHelper;


# direct methods
.method public constructor blacklist <init>(Lcom/oplus/util/OplusStandardRusHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oplus/util/OplusStandardRusHelper;

    .line 110
    iput-object p1, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-direct {p0, p1}, Lcom/oplus/util/RomUpdateHelper$UpdateInfo;-><init>(Lcom/oplus/util/RomUpdateHelper;)V

    .line 106
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mOsVersion:I

    .line 108
    iput v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mBuildSdk:I

    .line 111
    return-void
.end method

.method private blacklist char2int([C)I
    .locals 11
    .param p1, "in"    # [C

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "out":I
    array-length v1, p1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 348
    const/4 v1, -0x1

    return v1

    .line 350
    :cond_0
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 351
    int-to-double v3, v0

    aget-char v5, p1, v1

    add-int/lit8 v5, v5, -0x61

    int-to-double v5, v5

    const-wide/high16 v7, 0x403a000000000000L    # 26.0

    array-length v9, p1

    sub-int/2addr v9, v1

    sub-int/2addr v9, v2

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    double-to-int v0, v3

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "n":I
    :cond_1
    return v0
.end method

.method private blacklist updateConfigVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 185
    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mVersion:J

    .line 188
    :cond_0
    return-void
.end method

.method private blacklist updateOsVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 192
    const-string v0, "os_version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mOsVersion:I

    .line 195
    :cond_0
    return-void
.end method

.method private blacklist updateSdkVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 199
    const-string v0, "build_sdk"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mBuildSdk:I

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist clear()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 340
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mVersion:J

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mOsVersion:I

    .line 342
    iput v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mBuildSdk:I

    .line 343
    return-void
.end method

.method public whitelist clone(Lcom/oplus/util/RomUpdateHelper$UpdateInfo;)Z
    .locals 7
    .param p1, "input"    # Lcom/oplus/util/RomUpdateHelper$UpdateInfo;

    .line 306
    move-object v0, p1

    check-cast v0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;

    .line 307
    .local v0, "tmp":Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;
    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getAllList()Landroid/util/SparseArray;

    move-result-object v1

    .line 308
    .local v1, "other":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 314
    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mVersion:J

    .line 315
    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v2

    iput v2, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mOsVersion:I

    .line 316
    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v2

    iput v2, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mBuildSdk:I

    .line 318
    const/4 v2, 0x0

    .line 319
    .local v2, "key":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 320
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 321
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 322
    .local v4, "source":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    .end local v4    # "source":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 309
    .end local v2    # "key":I
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    const-string v3, "Source object is empty"

    invoke-virtual {v2, v3}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist dumpToString()Ljava/lang/String;
    .locals 6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "strBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateInfo ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "key":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v3, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 366
    .local v3, "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .end local v3    # "obj":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 369
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getAllList()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBuildSdk()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mBuildSdk:I

    return v0
.end method

.method public blacklist getOneList(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 384
    .local v0, "oneList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public blacklist getOsVersion()I
    .locals 1

    .line 205
    iget v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mOsVersion:I

    return v0
.end method

.method public whitelist insert(ILjava/lang/String;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 329
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 330
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const/4 v1, 0x1

    return v1

    .line 334
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isInWhiteList(ILjava/lang/String;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "verifyStr"    # Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    return v0

    .line 378
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist parseContentFromXML(Ljava/lang/String;)V
    .locals 10
    .param p1, "content"    # Ljava/lang/String;

    .line 115
    const-string v0, "Got execption parsing permissions."

    const-string v1, "Got execption close permReader."

    if-nez p1, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    const/4 v2, 0x0

    .line 119
    .local v2, "xmlReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 120
    .local v3, "strReader":Ljava/io/StringReader;
    iget-object v4, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 121
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mVersion:J

    .line 122
    const/4 v4, 0x0

    iput v4, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mOsVersion:I

    .line 123
    iput v4, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mBuildSdk:I

    .line 125
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 126
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 127
    invoke-interface {v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 128
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 129
    .local v5, "eventType":I
    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 130
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 134
    :pswitch_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 135
    .local v6, "typeChar":[C
    array-length v7, v6

    const/4 v8, 0x3

    if-le v7, v8, :cond_1

    .line 136
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v5, v7

    .line 137
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->updateConfigVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->updateOsVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {v6}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->updateSdkVersion(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    goto :goto_1

    .line 142
    :cond_1
    invoke-direct {p0, v6}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->char2int([C)I

    move-result v7

    .line 143
    .local v7, "type":I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v5, v8

    .line 144
    if-gez v7, :cond_2

    .line 145
    goto :goto_1

    .line 147
    :cond_2
    iget-object v8, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 148
    .local v8, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v8, :cond_3

    .line 149
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    .line 150
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v9, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->mWhiteList:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 153
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    goto :goto_1

    .line 132
    .end local v6    # "typeChar":[C
    .end local v7    # "type":I
    .end local v8    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    nop

    .line 159
    :goto_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    goto :goto_0

    .line 169
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "eventType":I
    :cond_4
    if-eqz v2, :cond_5

    .line 170
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_2

    .line 175
    :catch_0
    move-exception v0

    goto :goto_3

    .line 172
    :cond_5
    :goto_2
    nop

    .line 173
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 177
    goto :goto_4

    .line 176
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    iget-object v4, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v4, v1, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 180
    :goto_4
    iget-object v0, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-static {v0}, Lcom/oplus/util/OplusStandardRusHelper;->-$$Nest$fgetmCallback(Lcom/oplus/util/OplusStandardRusHelper;)Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/util/OplusStandardRusHelper$OplusRusHelperCallback;->onUpdate()V

    .line 181
    return-void

    .line 168
    :catchall_0
    move-exception v0

    goto :goto_d

    .line 164
    :catch_1
    move-exception v4

    .line 165
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v5, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v5, v0, v4}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    if-eqz v2, :cond_6

    .line 170
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_5

    .line 175
    :catch_2
    move-exception v0

    goto :goto_6

    .line 172
    :cond_6
    :goto_5
    if-eqz v3, :cond_7

    .line 173
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_6
    iget-object v5, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v5, v1, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    :goto_7
    nop

    .line 166
    :goto_8
    return-void

    .line 161
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 162
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    iget-object v5, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v5, v0, v4}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 169
    if-eqz v2, :cond_8

    .line 170
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_9

    .line 175
    :catch_4
    move-exception v0

    goto :goto_a

    .line 172
    :cond_8
    :goto_9
    if-eqz v3, :cond_9

    .line 173
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    .line 176
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_a
    iget-object v5, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v5, v1, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_9
    :goto_b
    nop

    .line 163
    :goto_c
    return-void

    .line 169
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_d
    if-eqz v2, :cond_a

    .line 170
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_e

    .line 175
    :catch_5
    move-exception v4

    goto :goto_f

    .line 172
    :cond_a
    :goto_e
    if-eqz v3, :cond_b

    .line 173
    invoke-virtual {v3}, Ljava/io/StringReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_10

    .line 176
    .local v4, "e":Ljava/io/IOException;
    :goto_f
    iget-object v5, p0, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v5, v1, v4}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11

    .line 177
    .end local v4    # "e":Ljava/io/IOException;
    :cond_b
    :goto_10
    nop

    .line 178
    :goto_11
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public whitelist updateToLowerVersion(Ljava/lang/String;)Z
    .locals 19
    .param p1, "content"    # Ljava/lang/String;

    .line 214
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Got execption parsing permissions."

    const-string v4, "Got execption close permReader."

    const-wide/16 v5, -0x1

    .line 215
    .local v5, "version":J
    const/4 v7, 0x0

    .line 216
    .local v7, "osVersion":I
    const/4 v8, 0x0

    .line 217
    .local v8, "buildSdk":I
    const/4 v9, 0x1

    if-nez v2, :cond_0

    .line 218
    return v9

    .line 220
    :cond_0
    const/4 v10, 0x0

    .line 221
    .local v10, "xmlReader":Ljava/io/FileReader;
    const/4 v11, 0x0

    .line 223
    .local v11, "strReader":Ljava/io/StringReader;
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 224
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v11, v12

    .line 225
    invoke-interface {v0, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 226
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 227
    .local v12, "eventType":I
    const/4 v13, 0x0

    .line 228
    .local v13, "foundVersion":Z
    const/4 v14, 0x0

    .line 229
    .local v14, "foundOsVersion":Z
    const/4 v15, 0x0

    .line 230
    .local v15, "foundBuildSdk":Z
    :goto_0
    if-eq v12, v9, :cond_6

    .line 231
    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 259
    :pswitch_1
    goto/16 :goto_2

    .line 235
    :pswitch_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    .line 236
    .local v17, "tagName":Ljava/lang/String;
    if-nez v13, :cond_1

    const-string v9, "version"

    move-object/from16 v2, v17

    .end local v17    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 237
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v12, v9

    .line 238
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 240
    .local v9, "text":Ljava/lang/String;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v5, v17

    .line 241
    const/4 v13, 0x1

    goto :goto_1

    .line 236
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    .restart local v17    # "tagName":Ljava/lang/String;
    :cond_1
    move-object/from16 v2, v17

    .line 243
    .end local v17    # "tagName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v14, :cond_3

    const-string v9, "os_version"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 244
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 245
    .end local v12    # "eventType":I
    .local v9, "eventType":I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, "text":Ljava/lang/String;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v7, v17

    .line 248
    const/4 v14, 0x1

    move v12, v9

    .line 250
    .end local v9    # "eventType":I
    .local v12, "eventType":I
    :cond_3
    if-nez v15, :cond_4

    const-string v9, "build_sdk"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v12, v9

    .line 252
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 254
    .local v9, "text":Ljava/lang/String;
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v8, v17

    .line 255
    const/4 v9, 0x1

    .line 256
    .end local v15    # "foundBuildSdk":Z
    .local v9, "foundBuildSdk":Z
    move v15, v9

    goto :goto_2

    .line 233
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v9    # "foundBuildSdk":Z
    .restart local v15    # "foundBuildSdk":Z
    :pswitch_3
    nop

    .line 263
    :cond_4
    :goto_2
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    .line 264
    goto :goto_3

    .line 266
    :cond_5
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v2

    move-object/from16 v2, p1

    const/4 v9, 0x1

    goto/16 :goto_0

    .line 276
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "eventType":I
    .end local v13    # "foundVersion":Z
    .end local v14    # "foundOsVersion":Z
    .end local v15    # "foundBuildSdk":Z
    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    .line 277
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    goto :goto_4

    .line 282
    :catch_0
    move-exception v0

    goto :goto_5

    .line 279
    :cond_7
    :goto_4
    nop

    .line 280
    invoke-virtual {v11}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    goto :goto_6

    .line 283
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    iget-object v2, v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v2, v4, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 285
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 287
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v0

    const-string v2, " new:"

    const-string v3, "OplusStandardRusHelper"

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v0

    if-le v0, v7, :cond_8

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lower os version, data invalid, current:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getOsVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v2, 0x1

    return v2

    .line 292
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v0

    if-le v0, v8, :cond_9

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lower build sdk, data invalid, current:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getBuildSdk()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x1

    return v2

    .line 297
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v0, v12, v14

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v12

    cmp-long v0, v12, v5

    if-lez v0, :cond_a

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lower version, data invalid, current:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->getVersion()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v2, 0x1

    return v2

    .line 301
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 275
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_f

    .line 271
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 272
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v0, v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    nop

    .line 276
    if-eqz v10, :cond_b

    .line 277
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    goto :goto_7

    .line 282
    :catch_2
    move-exception v0

    goto :goto_8

    .line 279
    :cond_b
    :goto_7
    if-eqz v11, :cond_c

    .line 280
    invoke-virtual {v11}, Ljava/io/StringReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_9

    .line 283
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_8
    iget-object v3, v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v3, v4, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :cond_c
    :goto_9
    nop

    .line 273
    :goto_a
    const/4 v3, 0x1

    return v3

    .line 268
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    move-object v2, v0

    .line 269
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    iget-object v0, v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v0, v3, v2}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    nop

    .line 276
    if-eqz v10, :cond_d

    .line 277
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    goto :goto_b

    .line 282
    :catch_4
    move-exception v0

    goto :goto_c

    .line 279
    :cond_d
    :goto_b
    if-eqz v11, :cond_e

    .line 280
    invoke-virtual {v11}, Ljava/io/StringReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_d

    .line 283
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_c
    iget-object v3, v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v3, v4, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :cond_e
    :goto_d
    nop

    .line 270
    :goto_e
    const/4 v3, 0x1

    return v3

    .line 276
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_f
    if-eqz v10, :cond_f

    .line 277
    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V

    goto :goto_10

    .line 282
    :catch_5
    move-exception v0

    goto :goto_11

    .line 279
    :cond_f
    :goto_10
    if-eqz v11, :cond_10

    .line 280
    invoke-virtual {v11}, Ljava/io/StringReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_12

    .line 283
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_11
    iget-object v3, v1, Lcom/oplus/util/OplusStandardRusHelper$StandardUpdateInfo;->this$0:Lcom/oplus/util/OplusStandardRusHelper;

    invoke-virtual {v3, v4, v0}, Lcom/oplus/util/OplusStandardRusHelper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_13

    .line 284
    .end local v0    # "e":Ljava/io/IOException;
    :cond_10
    :goto_12
    nop

    .line 285
    :goto_13
    throw v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
