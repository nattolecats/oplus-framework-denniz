.class Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;
.super Ljava/lang/Thread;
.source "OplusPreLoadSplashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbThread"
.end annotation


# instance fields
.field private blacklist mCache:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

.field final synthetic blacklist this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;


# direct methods
.method constructor blacklist <init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;)V
    .locals 0
    .param p2, "cache"    # Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 129
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 127
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->mCache:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 130
    iput-object p2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->mCache:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 131
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 134
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 135
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->mCache:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$sfgetmLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$fgetmDecodingCount(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$fputmDecodingCount(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;I)V

    .line 138
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->mCache:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    invoke-static {v0, v1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$mdecodeBitmapFromCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;)V

    .line 140
    invoke-static {}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$sfgetmLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 141
    :try_start_1
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->this$0:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-static {v0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$fgetmDecodingCount(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->-$$Nest$fputmDecodingCount(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;I)V

    .line 142
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 138
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 144
    :cond_0
    :goto_0
    return-void
.end method
