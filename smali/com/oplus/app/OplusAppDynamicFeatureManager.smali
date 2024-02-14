.class public Lcom/oplus/app/OplusAppDynamicFeatureManager;
.super Ljava/lang/Object;
.source "OplusAppDynamicFeatureManager.java"

# interfaces
.implements Lcom/oplus/app/IOplusAppDynamicFeatureManager;


# static fields
.field private static final blacklist BACKSLASH_SYMBOL:Ljava/lang/String; = "/"

.field private static final blacklist BLANK_SPACE_SYMBOL:Ljava/lang/String; = " "

.field private static final blacklist COLON_SYMBOL:Ljava/lang/String; = ":"

.field private static final blacklist DEBUG:Z

.field private static final blacklist LEFT_BRACE_SYMBOL:Ljava/lang/String; = "{"

.field private static final blacklist MAX_SIZE:I = 0x64

.field private static final blacklist POINT_SYMBOL:Ljava/lang/String; = "."

.field private static final blacklist RESOURCE_ID_POSITION:I = 0x6

.field private static final blacklist RIGHT_BRACE_SYMBOL:Ljava/lang/String; = "}"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAppDynamicFeatureManager"

.field private static volatile blacklist sInstance:Lcom/oplus/app/OplusAppDynamicFeatureManager;


# instance fields
.field private blacklist mOplusPm:Landroid/content/pm/OplusPackageManager;

.field private blacklist mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mstartToParseAppDynamicInfo(Lcom/oplus/app/OplusAppDynamicFeatureManager;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->startToParseAppDynamicInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 41
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->DEBUG:Z

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->sInstance:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    .line 57
    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 74
    return-void
.end method

.method private blacklist checkOplusPackageManager()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    .line 290
    :cond_0
    return-void
.end method

.method private blacklist checkThreadPool()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 294
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 296
    :cond_0
    return-void
.end method

.method private blacklist getDatabaseInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
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

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 255
    .local v0, "startTime":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, "database":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v3

    .line 257
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    if-eqz v3, :cond_1

    .line 258
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 259
    iget-object v5, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 260
    .local v5, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    if-eqz v5, :cond_0

    .line 261
    iget-object v6, v5, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    .end local v5    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 266
    .end local v4    # "i":I
    :cond_1
    sget-boolean v4, Lcom/oplus/app/OplusAppDynamicFeatureManager;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 268
    .local v4, "endTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get database info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cost: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v4, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OplusAppDynamicFeatureManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v4    # "endTime":J
    :cond_2
    return-object v2
.end method

.method public static whitelist getInstance()Lcom/oplus/app/OplusAppDynamicFeatureManager;
    .locals 2

    .line 60
    sget-object v0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->sInstance:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    if-nez v0, :cond_1

    .line 61
    const-class v0, Lcom/oplus/app/OplusAppDynamicFeatureManager;

    monitor-enter v0

    .line 62
    :try_start_0
    sget-object v1, Lcom/oplus/app/OplusAppDynamicFeatureManager;->sInstance:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcom/oplus/app/OplusAppDynamicFeatureManager;

    invoke-direct {v1}, Lcom/oplus/app/OplusAppDynamicFeatureManager;-><init>()V

    sput-object v1, Lcom/oplus/app/OplusAppDynamicFeatureManager;->sInstance:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    .line 65
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->sInstance:Lcom/oplus/app/OplusAppDynamicFeatureManager;

    return-object v0
.end method

.method private blacklist onGetAppDynamicFeatureFinished(Lcom/oplus/app/OplusAppDynamicFeatureData;)V
    .locals 3
    .param p1, "featureData"    # Lcom/oplus/app/OplusAppDynamicFeatureData;

    .line 276
    invoke-direct {p0}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->checkOplusPackageManager()V

    .line 277
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mOplusPm:Landroid/content/pm/OplusPackageManager;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/pm/OplusPackageManager;->dynamicDetectApp(Lcom/oplus/app/OplusAppDynamicFeatureData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAppDynamicFeatureManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist parseComponentName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 213
    return-object v1

    .line 216
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 217
    .local v0, "beginIndex":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 218
    return-object v1

    .line 221
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseResourceIdName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 225
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 226
    return-object v1

    .line 229
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "splitName":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    .line 231
    const/4 v1, 0x5

    aget-object v1, v0, v1

    return-object v1

    .line 234
    :cond_1
    return-object v1
.end method

.method private blacklist parseTextFromView(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p2, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 239
    return-void

    .line 242
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 244
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 245
    .local v1, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 246
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, "content":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "text":Ljava/lang/CharSequence;
    .end local v2    # "content":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private blacklist parseViewHierarchyInfo(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 129
    .local p2, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "resourceIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 134
    .local v0, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/view/View;>;"
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 136
    .local v2, "N":I
    if-gtz v2, :cond_1

    .line 137
    return-void

    .line 140
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 141
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 142
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v4    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v3    # "i":I
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 148
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 149
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->parseViewString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 152
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-nez v4, :cond_4

    .line 153
    goto :goto_1

    .line 155
    :cond_4
    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    .line 156
    .local v4, "g":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 157
    .local v5, "n":I
    if-gtz v5, :cond_5

    .line 158
    goto :goto_1

    .line 160
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v5, :cond_7

    .line 161
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 162
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 165
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "g":Landroid/view/ViewGroup;
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_7
    goto :goto_1

    .line 166
    :cond_8
    return-void
.end method

.method private blacklist parseViewString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "viewString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 170
    .local p2, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, "resourceIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    return-void

    .line 174
    :cond_0
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 175
    .local v0, "leftBraceIndex":I
    const-string v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "rightBraceIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    if-eq v1, v2, :cond_8

    if-le v0, v1, :cond_1

    goto :goto_4

    .line 181
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->parseComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "componentName":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v2, :cond_4

    .line 183
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 184
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 185
    .local v4, "value":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v4    # "value":Ljava/lang/Integer;
    :goto_0
    goto :goto_1

    .line 191
    :cond_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_4
    :goto_1
    add-int/lit8 v4, v0, 0x1

    .line 196
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->parseResourceIdName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "resourceIdName":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 198
    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 199
    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 200
    .local v5, "value":Ljava/lang/Integer;
    if-eqz v5, :cond_5

    .line 201
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 203
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .end local v5    # "value":Ljava/lang/Integer;
    :goto_2
    goto :goto_3

    .line 206
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p3, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_7
    :goto_3
    return-void

    .line 178
    .end local v2    # "componentName":Ljava/lang/String;
    .end local v4    # "resourceIdName":Ljava/lang/String;
    :cond_8
    :goto_4
    return-void
.end method

.method private blacklist startToParseAppDynamicInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;

    .line 92
    const-string v0, "OplusAppDynamicFeatureManager"

    if-nez p3, :cond_0

    .line 93
    const-string v1, "view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 97
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusAppDynamicFeatureManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse view hierarchy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 102
    .local v2, "startTime":J
    new-instance v4, Lcom/oplus/app/OplusAppDynamicFeatureData;

    invoke-direct {v4}, Lcom/oplus/app/OplusAppDynamicFeatureData;-><init>()V

    .line 103
    .local v4, "featureData":Lcom/oplus/app/OplusAppDynamicFeatureData;
    invoke-virtual {v4, p1}, Lcom/oplus/app/OplusAppDynamicFeatureData;->setPackageName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4, p2}, Lcom/oplus/app/OplusAppDynamicFeatureData;->setActivityName(Ljava/lang/String;)V

    .line 106
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 107
    .local v5, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 109
    .local v6, "resourceIds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {p0, p3, v5, v6}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->parseViewHierarchyInfo(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    .line 110
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    const/16 v8, 0x64

    if-ge v7, v8, :cond_4

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lt v7, v8, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v4, v5}, Lcom/oplus/app/OplusAppDynamicFeatureData;->setComponentNames(Ljava/util/Map;)V

    .line 118
    invoke-virtual {v4, v6}, Lcom/oplus/app/OplusAppDynamicFeatureData;->setIdNames(Ljava/util/Map;)V

    .line 120
    invoke-direct {p0, v4}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->onGetAppDynamicFeatureFinished(Lcom/oplus/app/OplusAppDynamicFeatureData;)V

    .line 121
    if-eqz v1, :cond_3

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get app dynamic feature cost: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ms"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    return-void

    .line 111
    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    .line 112
    const-string v1, "parse view size is too big!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_5
    return-void
.end method


# virtual methods
.method public whitelist parseAppDynamicInfo(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/view/View;

    .line 78
    invoke-direct {p0}, Lcom/oplus/app/OplusAppDynamicFeatureManager;->checkThreadPool()V

    .line 79
    iget-object v0, p0, Lcom/oplus/app/OplusAppDynamicFeatureManager;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/app/OplusAppDynamicFeatureManager$1;-><init>(Lcom/oplus/app/OplusAppDynamicFeatureManager;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
