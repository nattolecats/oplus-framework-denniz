.class public Lcom/oplus/filter/DynamicFilterValueItemsHelper;
.super Ljava/lang/Object;
.source "DynamicFilterValueItemsHelper.java"


# static fields
.field private static final blacklist LRU_DEFAULT_MAX_SIZE:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sDynamicFilterValueItemsHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

.field private static final blacklist sEmptySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDynamicFilterManager:Lcom/oplus/filter/DynamicFilterManager;

.field private blacklist mFilterName:Ljava/lang/String;

.field private blacklist mTagItemsMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sDynamicFilterValueItemsHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    .line 30
    const-class v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sEmptySet:Ljava/util/Set;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "dynamic_filter"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/filter/DynamicFilterManager;

    iput-object v0, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mDynamicFilterManager:Lcom/oplus/filter/DynamicFilterManager;

    .line 53
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mTagItemsMap:Landroid/util/LruCache;

    .line 54
    iput-object p2, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mFilterName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/filter/DynamicFilterValueItemsHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sDynamicFilterValueItemsHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sDynamicFilterValueItemsHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    invoke-direct {v1, p0, p1}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sDynamicFilterValueItemsHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 48
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sDynamicFilterValueItemsHelper:Lcom/oplus/filter/DynamicFilterValueItemsHelper;

    return-object v0
.end method

.method private blacklist getValueItems(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
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

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 82
    .local v0, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mDynamicFilterManager:Lcom/oplus/filter/DynamicFilterManager;

    iget-object v2, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/oplus/filter/DynamicFilterManager;->getFilterTagValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 89
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 91
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "s":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 93
    goto :goto_1

    .line 95
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v4    # "s":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 97
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValueItems: parse value of tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with JSONException!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized blacklist containsItem(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "valueItem"    # Ljava/lang/String;

    monitor-enter p0

    .line 64
    if-nez p1, :cond_0

    .line 65
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 67
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mTagItemsMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 68
    .local v0, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 70
    invoke-direct {p0, p1}, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->getValueItems(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    .line 71
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-object v1, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->sEmptySet:Ljava/util/Set;

    move-object v0, v1

    .line 75
    .end local p0    # "this":Lcom/oplus/filter/DynamicFilterValueItemsHelper;
    :cond_1
    iget-object v1, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mTagItemsMap:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 63
    .end local v0    # "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "valueItem":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist inFilter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mDynamicFilterManager:Lcom/oplus/filter/DynamicFilterManager;

    iget-object v1, p0, Lcom/oplus/filter/DynamicFilterValueItemsHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/filter/DynamicFilterManager;->inFilter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
