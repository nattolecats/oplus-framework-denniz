.class Lcom/oplus/content/AppFeatureCache;
.super Ljava/lang/Object;
.source "AppFeatureCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/content/AppFeatureCache$AppFeatureData;,
        Lcom/oplus/content/AppFeatureCache$AppFeatureCacheHolder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppFeatureCache"

.field protected static final blacklist mAppFeatureCacheListMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/oplus/content/AppFeatureCache$AppFeatureData;",
            ">;>;"
        }
    .end annotation
.end field

.field public static blacklist mCachedEnabled:Z

.field static blacklist mCachedModeDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/content/AppFeatureCache;->mAppFeatureCacheListMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/content/AppFeatureCache;->mCachedEnabled:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/content/AppFeatureCache;->mCachedModeDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v1}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 51
    sget-object v1, Lcom/oplus/content/AppFeatureCache;->mCachedModeDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;->CACHE_AND_DB:Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/content/AppFeatureCache-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/content/AppFeatureCache;-><init>()V

    return-void
.end method

.method private blacklist clearCursorInCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/content/AppFeatureCache$AppFeatureData;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    const-class v0, Lcom/oplus/content/AppFeatureCache;

    monitor-enter v0

    .line 135
    :try_start_0
    const-string v1, "AppFeatureCache"

    const-string v2, "clearCursorInCache"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static blacklist getCachedMode(I)Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .locals 3
    .param p0, "featureID"    # I

    .line 34
    if-ltz p0, :cond_1

    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_1

    .line 37
    sget-object v0, Lcom/oplus/content/AppFeatureCache;->mCachedModeDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    .line 38
    .local v0, "cachedModeDefault":Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    if-eqz v0, :cond_0

    .line 39
    return-object v0

    .line 41
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "getCachedMode featureID is not support"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    .end local v0    # "cachedModeDefault":Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invlid feature id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist getFeatureCacheData(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p2, "featureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/content/AppFeatureCache$AppFeatureData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .line 93
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    invoke-direct {p0}, Lcom/oplus/content/AppFeatureCache;->getMatrixCursor()Landroid/database/MatrixCursor;

    move-result-object v0

    .line 94
    .local v0, "cursor":Landroid/database/MatrixCursor;
    const-class v1, Lcom/oplus/content/AppFeatureCache;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/content/AppFeatureCache$AppFeatureData;

    .line 96
    .local v3, "appFeatureData":Lcom/oplus/content/AppFeatureCache$AppFeatureData;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->getId()Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->getFeatureName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->getParameters()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;->getJasonStr()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 99
    .end local v3    # "appFeatureData":Lcom/oplus/content/AppFeatureCache$AppFeatureData;
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->close()V

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_2
    return-object v0

    .line 100
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static blacklist getInstance()Lcom/oplus/content/AppFeatureCache;
    .locals 1

    .line 46
    sget-object v0, Lcom/oplus/content/AppFeatureCache$AppFeatureCacheHolder;->INSTANCE:Lcom/oplus/content/AppFeatureCache;

    return-object v0
.end method

.method private blacklist getMatrixCursor()Landroid/database/MatrixCursor;
    .locals 4

    .line 124
    const-string v0, "_id"

    const-string v1, "featurename"

    const-string v2, "parameters"

    const-string v3, "lists"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "columnNames":[Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 130
    .local v1, "cursor":Landroid/database/MatrixCursor;
    return-object v1
.end method

.method private blacklist insertCursorToCache(Ljava/util/List;Landroid/database/Cursor;)V
    .locals 6
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/content/AppFeatureCache$AppFeatureData;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 110
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 113
    .local v0, "id":Ljava/lang/Integer;
    const-string v1, "featurename"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "featureName":Ljava/lang/String;
    const-string v2, "parameters"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "parameters":Ljava/lang/String;
    const-string v3, "lists"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "lists":Ljava/lang/String;
    const-class v4, Lcom/oplus/content/AppFeatureCache;

    monitor-enter v4

    .line 117
    :try_start_0
    new-instance v5, Lcom/oplus/content/AppFeatureCache$AppFeatureData;

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/oplus/content/AppFeatureCache$AppFeatureData;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "featureName":Ljava/lang/String;
    .end local v2    # "parameters":Ljava/lang/String;
    .end local v3    # "lists":Ljava/lang/String;
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 118
    .restart local v0    # "id":Ljava/lang/Integer;
    .restart local v1    # "featureName":Ljava/lang/String;
    .restart local v2    # "parameters":Ljava/lang/String;
    .restart local v3    # "lists":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 121
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v1    # "featureName":Ljava/lang/String;
    .end local v2    # "parameters":Ljava/lang/String;
    .end local v3    # "lists":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist invalidateAppFeatureCache(Landroid/content/ContentResolver;ILjava/util/List;Ljava/util/List;)V
    .locals 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "featureID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/List<",
            "Lcom/oplus/content/AppFeatureCache$AppFeatureData;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p3, "cacheList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    .local p4, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "AppFeatureCache"

    const-string v1, "invalidateAppFeatureCache run in"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {p2}, Lcom/oplus/content/AppfeatureHelper;->getUriFromFeatureMap(I)Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, p4}, Lcom/oplus/content/AppFeatureCache;->isEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .local v2, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 147
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_0
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "featurename in(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',\'"

    invoke-static {v3, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 150
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, p3, v2}, Lcom/oplus/content/AppFeatureCache;->insertCursorToCache(Ljava/util/List;Landroid/database/Cursor;)V

    .line 151
    if-eqz v2, :cond_1

    .line 152
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalidateAppFeatureCache size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method private blacklist isEmpty(Ljava/util/List;)Z
    .locals 1
    .param p1, "list"    # Ljava/util/List;

    .line 56
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist enableAppFeatureCache(Landroid/content/ContentResolver;ILjava/util/List;Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;)V
    .locals 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "featureID"    # I
    .param p4, "cacheMode"    # Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;",
            ")V"
        }
    .end annotation

    .line 75
    .local p3, "featureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-ltz p2, :cond_2

    sget-object v0, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->INVALID:Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;

    invoke-virtual {v0}, Lcom/oplus/content/IOplusFeatureConfigManager$FeatureID;->ordinal()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAppFeatureCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppFeatureCache"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/oplus/content/AppFeatureCache;->mCachedModeDefaultMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;

    .line 80
    .local v0, "cachedModeDefault":Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    if-eqz v0, :cond_0

    .line 81
    move-object v0, p4

    .line 83
    :cond_0
    sget-object v1, Lcom/oplus/content/AppFeatureCache;->mAppFeatureCacheListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 84
    .local v2, "featureCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    if-nez v2, :cond_1

    .line 85
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1
    invoke-direct {p0, v2}, Lcom/oplus/content/AppFeatureCache;->clearCursorInCache(Ljava/util/List;)V

    .line 89
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/oplus/content/AppFeatureCache;->invalidateAppFeatureCache(Landroid/content/ContentResolver;ILjava/util/List;Ljava/util/List;)V

    .line 90
    return-void

    .line 76
    .end local v0    # "cachedModeDefault":Lcom/oplus/content/AppfeatureHelper$CACHE_MODE;
    .end local v2    # "featureCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invlid feature id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCursorFromCache(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "featureID"    # I
    .param p2, "featureName"    # Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/oplus/content/AppFeatureCache;->mAppFeatureCacheListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 64
    .local v1, "featureCacheList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/AppFeatureCache$AppFeatureData;>;"
    if-nez v1, :cond_0

    .line 65
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 66
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_0
    invoke-direct {p0, v1}, Lcom/oplus/content/AppFeatureCache;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/oplus/content/AppFeatureCache;->getFeatureCacheData(Ljava/util/List;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
