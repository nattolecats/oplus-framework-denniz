.class Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;
.super Ljava/lang/Object;
.source "OplusStatisticsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/util/OplusStatisticsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestFireWall"
.end annotation


# static fields
.field private static final blacklist CACHE_CAPACITY:I = 0x64

.field private static final blacklist TAG:Ljava/lang/String; = "RequestFireWall"


# instance fields
.field private final blacklist mLimit:I

.field private final blacklist mPeriod:J

.field private final blacklist mRequestQueueMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(IJ)V
    .locals 2
    .param p1, "limit"    # I
    .param p2, "period"    # J

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p1, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mLimit:I

    .line 361
    iput-wide p2, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mPeriod:J

    .line 362
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mRequestQueueMap:Landroid/util/LruCache;

    .line 363
    return-void
.end method

.method synthetic constructor blacklist <init>(IJLcom/oplus/util/OplusStatisticsImpl$RequestFireWall-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;-><init>(IJ)V

    return-void
.end method

.method private blacklist getRequestCountInWindowImpl(Ljava/util/Queue;J)J
    .locals 4
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;J)J"
        }
    .end annotation

    .line 386
    .local p1, "requestQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mPeriod:J

    sub-long v2, p2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 387
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 390
    :cond_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private blacklist getRequestQueue(Ljava/lang/String;)Ljava/util/Queue;
    .locals 2
    .param p1, "requestTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mRequestQueueMap:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 395
    .local v0, "eventQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 396
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 397
    iget-object v1, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mRequestQueueMap:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_0
    return-object v0
.end method


# virtual methods
.method public blacklist handleRequest(Ljava/lang/String;)Z
    .locals 7
    .param p1, "requestTag"    # Ljava/lang/String;

    .line 372
    invoke-direct {p0, p1}, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->getRequestQueue(Ljava/lang/String;)Ljava/util/Queue;

    move-result-object v0

    .line 374
    .local v0, "requestQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Long;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 375
    .local v1, "currentTimeMillis":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-direct {p0, v0, v1, v2}, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->getRequestCountInWindowImpl(Ljava/util/Queue;J)J

    move-result-wide v3

    iget v5, p0, Lcom/oplus/util/OplusStatisticsImpl$RequestFireWall;->mLimit:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
