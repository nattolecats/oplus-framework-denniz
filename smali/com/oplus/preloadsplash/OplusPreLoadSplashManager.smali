.class public Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;
.super Ljava/lang/Object;
.source "OplusPreLoadSplashManager.java"

# interfaces
.implements Lcom/oplus/preloadsplash/IOplusPreLoadSplashManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;,
        Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    }
.end annotation


# static fields
.field private static final blacklist CACHE_INFO_NAME:Ljava/lang/String; = ".preloadCache_info.xml"

.field private static final blacklist MESSAGE_CACHE_INFO:I = 0x800003

.field private static final blacklist MESSAGE_INIT_ONLINECONFIG:I = 0x800005

.field private static final blacklist MESSAGE_LOAD_CACHE_INFO:I = 0x800000

.field private static final blacklist MESSAGE_PRELOAD_BITMAP:I = 0x800001

.field private static final blacklist MESSAGE_QUIT:I = 0x800004

.field private static final blacklist MESSAGE_SAVE_INFO:I = 0x800002

.field private static final blacklist SAVE_TIME_OUT:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String; = "OplusPreLoadSplashManager"

.field private static final blacklist XML_TAG_CACHEINFOS:Ljava/lang/String; = "cacheInfos"

.field private static final blacklist XML_TAG_ID:Ljava/lang/String; = "resourcesID"

.field private static final blacklist XML_TAG_ITEM:Ljava/lang/String; = "item"

.field private static final blacklist XML_TAG_MAX_FAILE_NUM:Ljava/lang/String; = "failenum"

.field private static final blacklist XML_TAG_NAME:Ljava/lang/String; = "resourceName"

.field private static blacklist mLock:Ljava/lang/Object;

.field public static blacklist sInstance:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;


# instance fields
.field private blacklist mApplicationContext:Landroid/content/Context;

.field private blacklist mCacheDrawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCacheInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDebug:Z

.field private blacklist mDecodingCount:I

.field private blacklist mEnable:Z

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mHasExit:Z

.field private blacklist mMaxFailNum:I

.field private blacklist mMaxSaveCount:I

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private blacklist mNeedSaveInfo:Z

.field private blacklist mPreloadDrawableFaileNum:I

.field private blacklist mPreloadDrawableIsUsed:Z

.field private blacklist mPreloadSplashSupport:Z

.field private blacklist mSaveCount:I

.field private blacklist mSaveIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSaveInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsedDrawableIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsingCacheDrawableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mWorkHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDecodingCount(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)I
    .locals 0

    iget p0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDecodingCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDecodingCount(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDecodingCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdecodeBitmapFromCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->decodeBitmapFromCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleCacheDrawableInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->handleCacheDrawableInfo(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleLoadCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->handleLoadCacheInfo()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePreLoadDrawable(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->handlePreLoadDrawable()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleQuitWorkHandler(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->handleQuitWorkHandler()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSaveCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->handleSaveCacheInfo()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadSplashSupport:Z

    .line 74
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDecodingCount:I

    .line 75
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveCount:I

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mNeedSaveInfo:Z

    .line 78
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHasExit:Z

    .line 80
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mEnable:Z

    .line 81
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    .line 82
    const/16 v1, 0x384

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMinWidth:I

    .line 83
    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMinHeight:I

    .line 84
    const/4 v1, 0x3

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxSaveCount:I

    .line 85
    const/4 v1, 0x5

    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxFailNum:I

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveIDList:Ljava/util/ArrayList;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsedDrawableIDList:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsingCacheDrawableMap:Ljava/util/HashMap;

    .line 94
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableIsUsed:Z

    .line 95
    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    .line 156
    return-void
.end method

.method private blacklist clearNoUsedDrawableCache()V
    .locals 7

    .line 438
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;>;"
    :goto_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 442
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 443
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 444
    .local v3, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsedDrawableIDList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 445
    iget-object v4, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsingCacheDrawableMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 447
    goto :goto_0

    .line 450
    :cond_0
    iget-object v4, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    .line 451
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_2

    .line 452
    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 453
    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 454
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 455
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 459
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 460
    const/4 v4, 0x0

    .line 461
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 463
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;"
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_1
    goto :goto_0

    .line 468
    :cond_3
    goto :goto_2

    .line 466
    :catch_0
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;>;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v0

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private blacklist decodeBitmapFromCacheInfo(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;)V
    .locals 9
    .param p1, "cacheInfo"    # Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 234
    const-string v0, "decoeBitmapFromCacheInfo"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 235
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    if-eqz p1, :cond_4

    :try_start_0
    iget-boolean v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHasExit:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 240
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 242
    invoke-virtual {p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->getResourceID()I

    move-result v0

    .line 243
    .local v0, "resourceID":I
    invoke-virtual {p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->getResourceName()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "resourceName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 246
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v5, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v5

    .line 251
    nop

    .line 253
    if-eqz v4, :cond_3

    .line 254
    const/4 v5, 0x0

    .line 255
    .local v5, "hasExit":Z
    sget-object v6, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 256
    :try_start_2
    iget-boolean v7, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHasExit:Z

    move v5, v7

    .line 257
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    if-eqz v5, :cond_2

    .line 259
    instance-of v6, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    .line 260
    move-object v6, v4

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 261
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1

    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 262
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 266
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 267
    const/4 v4, 0x0

    .line 268
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 269
    return-void

    .line 271
    :cond_2
    iget-object v7, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 272
    :try_start_3
    iget-object v6, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    iget-boolean v6, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v6, :cond_3

    .line 275
    const-string v6, "OplusPreLoadSplashManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decoeBitmapFromCacheInfo success resourceName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\uff0c resourceID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 257
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 279
    .end local v5    # "hasExit":Z
    :cond_3
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 280
    return-void

    .line 247
    :catch_0
    move-exception v5

    .line 248
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 250
    return-void

    .line 237
    .end local v0    # "resourceID":I
    .end local v3    # "resourceName":Ljava/lang/String;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 238
    monitor-exit v0

    return-void

    .line 240
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private blacklist getDrawableCacheInner(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resourceID"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "wrapper"    # Landroid/content/res/Resources;

    .line 707
    invoke-direct {p0, p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->getDrawableFromPreLoadCacheInner(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 709
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 710
    const/4 v1, 0x0

    return-object v1

    .line 713
    :cond_0
    iget-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v1, :cond_1

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrawableCache -- resourceID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; theme = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; wrapper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; dr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusPreLoadSplashManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_1
    if-eqz p2, :cond_2

    .line 719
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 720
    .local v1, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v1, :cond_2

    .line 721
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 724
    .end local v1    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    return-object v0
.end method

.method private blacklist getDrawableFromPreLoadCacheInner(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resourceID"    # I

    .line 628
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isPreLoadCacheEffect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isDecodingDrawable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 634
    :try_start_0
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheDrawableMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 635
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    if-eqz v2, :cond_2

    .line 638
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v0, :cond_1

    .line 639
    const-string v0, "OplusPreLoadSplashManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreLoadBitmap success\uff0cresourceID = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsedDrawableIDList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-direct {p0, p1, v2}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->saveDrawableCacheInfoInner(ILandroid/graphics/drawable/Drawable;)Z

    .line 643
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableIsUsed:Z

    .line 644
    return-object v2

    .line 646
    :cond_2
    return-object v1

    .line 635
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 629
    :cond_3
    :goto_0
    return-object v1
.end method

.method private blacklist getInfoFromRUS()Z
    .locals 6

    .line 196
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->getRUSinfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 197
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 202
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mEnable:Z

    .line 203
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    .line 204
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMinWidth:I

    .line 205
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMinHeight:I

    .line 206
    const/4 v2, 0x5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxSaveCount:I

    .line 207
    const/4 v2, 0x6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxFailNum:I

    .line 208
    const-string v2, "OplusPreLoadSplashManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is in the whiteList, paramList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return v3

    .line 198
    :cond_3
    :goto_2
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mEnable:Z

    .line 199
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return v0

    .line 212
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mEnable:Z

    .line 215
    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    .line 216
    return v0
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;
    .locals 2

    const-class v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    monitor-enter v0

    .line 148
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    :try_start_1
    sget-object v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->sInstance:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    invoke-direct {v1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;-><init>()V

    sput-object v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->sInstance:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    .line 152
    :cond_0
    sget-object v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->sInstance:Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 153
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getRUSinfo(Ljava/lang/String;)Ljava/util/List;
    .locals 8
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

    .line 221
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 222
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 224
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPreLoadSplashRUSInfo"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 225
    .local v2, "getPreLoadSplashRUSInfo":Ljava/lang/reflect/Method;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 226
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 229
    .end local v2    # "getPreLoadSplashRUSInfo":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreLoadSplashRUSInfo name is not exit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusPreLoadSplashManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method private blacklist handleCacheDrawableInfo(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 311
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isPreLoadCacheEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    return-void

    .line 314
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 315
    .local v0, "bitmapCacheInfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    iget v2, v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->mBitmapResourceID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxSaveCount:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 317
    const v2, 0x800002

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 320
    :cond_1
    return-void
.end method

.method private blacklist handleLoadCacheInfo()V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isPreLoadCacheEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->readCacheInfoFromXml()Z

    .line 287
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLoadCacheInfo,  mPreloadDrawableFaileNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusPreLoadSplashManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    return-void
.end method

.method private blacklist handlePreLoadDrawable()V
    .locals 7

    .line 294
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isPreLoadCacheEffect()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    const-string v1, "OplusPreLoadSplashManager"

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreLoadDrawable  - mCacheInfoMap.size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 301
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 302
    .local v3, "key":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 303
    .local v4, "cacheInfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    iget-boolean v5, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v5, :cond_2

    .line 304
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handlePreLoadDrawable  - mCacheInfoMap.key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_2
    new-instance v5, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;

    invoke-direct {v5, p0, v4}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;-><init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;)V

    invoke-virtual {v5}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$ThumbThread;->start()V

    .line 307
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "cacheInfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    goto :goto_0

    .line 308
    :cond_3
    return-void

    .line 295
    .end local v0    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    :goto_1
    return-void
.end method

.method private blacklist handleQuitWorkHandler()V
    .locals 2

    .line 407
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHasExit:Z

    .line 409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "OplusPreLoadSplashManager"

    const-string v1, "handleQuitWorkHandler"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 416
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    const v1, 0x800002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    const v1, 0x800001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 421
    :cond_1
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->clearNoUsedDrawableCache()V

    .line 422
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    .line 424
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 425
    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    .line 426
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 427
    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveIDList:Ljava/util/ArrayList;

    .line 428
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsedDrawableIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 429
    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mUsedDrawableIDList:Ljava/util/ArrayList;

    .line 431
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 433
    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 435
    :cond_2
    return-void

    .line 409
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist handleSaveCacheInfo()V
    .locals 4

    .line 353
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isPreLoadCacheEffect()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mNeedSaveInfo:Z

    if-nez v1, :cond_0

    goto :goto_2

    .line 357
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mNeedSaveInfo:Z

    .line 358
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->needWriteCacheInfoToXml()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 361
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableIsUsed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 364
    :cond_1
    iget v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    goto :goto_1

    .line 362
    :cond_2
    :goto_0
    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    .line 367
    :goto_1
    const/4 v0, 0x0

    .line 368
    .local v0, "isNeedClose":Z
    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxFailNum:I

    if-lt v2, v3, :cond_3

    .line 369
    iput v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    .line 370
    const/4 v0, 0x1

    .line 372
    :cond_3
    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->writeCacheInfoToXml(Ljava/util/HashMap;)Z

    .line 374
    .end local v0    # "isNeedClose":Z
    :cond_4
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 375
    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    const v1, 0x800002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_5
    return-void

    .line 355
    :cond_6
    :goto_2
    :try_start_1
    monitor-exit v0

    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist initInner(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 159
    iput-object p1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    .line 161
    const-wide/16 v0, 0x40

    const-string v2, "initRUSParam"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->getInfoFromRUS()Z

    .line 163
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 165
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mEnable:Z

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadSplashSupport:Z

    .line 170
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "OpPreLoadThread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 171
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 172
    const-string v0, "OplusPreLoadSplashManager"

    const-string v1, "mHandlerThread -- start"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;

    iget-object v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$1;-><init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    .line 189
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 190
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    const v1, 0x800002

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 191
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    const v1, 0x800004

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 192
    return-void
.end method

.method private blacklist isDecodingDrawable()Z
    .locals 2

    .line 697
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 698
    :try_start_0
    iget v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDecodingCount:I

    if-lez v1, :cond_0

    .line 699
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 701
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isPreLoadCacheEffect()Z
    .locals 2

    .line 688
    sget-object v0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 689
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mEnable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mHasExit:Z

    if-nez v1, :cond_0

    .line 690
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 692
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 693
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isRunBackground()Z
    .locals 8

    .line 323
    const/4 v0, 0x1

    .line 324
    .local v0, "isBackground":Z
    const-string v1, "empty"

    .line 326
    .local v1, "processName":Ljava/lang/String;
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 327
    return v0

    .line 330
    :cond_0
    nop

    .line 331
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 332
    .local v2, "activityManager":Landroid/app/ActivityManager;
    nop

    .line 333
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 335
    .local v3, "appProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 336
    .local v5, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 337
    iget-object v1, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 338
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x190

    if-ne v6, v7, :cond_1

    .line 339
    const/4 v0, 0x1

    goto :goto_2

    .line 340
    :cond_1
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_3

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    .line 343
    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 348
    .end local v5    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    :goto_2
    goto :goto_0

    .line 349
    :cond_5
    return v0
.end method

.method private blacklist needWriteCacheInfoToXml()Z
    .locals 7

    .line 381
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isRunBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 383
    const-string v0, "OplusPreLoadSplashManager"

    const-string v2, "the app start in background"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    return v1

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    .line 389
    return v3

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 393
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 394
    .local v2, "count":Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 395
    .local v5, "key":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 396
    return v3

    .line 398
    .end local v5    # "key":Ljava/lang/Integer;
    :cond_3
    goto :goto_0

    .line 400
    :cond_4
    iget-boolean v4, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableIsUsed:Z

    if-eqz v4, :cond_6

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    if-eqz v4, :cond_5

    goto :goto_1

    .line 403
    :cond_5
    return v1

    .line 401
    :cond_6
    :goto_1
    return v3
.end method

.method private blacklist preloadDrawableInner()V
    .locals 2

    .line 622
    iget-object v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 623
    const v1, 0x800001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 625
    :cond_0
    return-void
.end method

.method private blacklist readCacheInfoFromXml()Z
    .locals 12

    .line 473
    const-wide/16 v0, 0x40

    const-string v2, "readCacheInfoFromXml"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 474
    iget-boolean v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    const-string v3, "OplusPreLoadSplashManager"

    if-eqz v2, :cond_0

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readCacheInfoFromXml;  PackageName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 479
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 480
    return v4

    .line 483
    :cond_1
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    .line 484
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    .line 487
    :cond_2
    const/4 v2, 0x0

    .line 489
    .local v2, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".preloadCache_info.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 493
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 494
    iget-boolean v7, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v7, :cond_3

    .line 495
    const-string v7, "CacheInfofile is not exists"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :cond_3
    nop

    .line 549
    :try_start_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    if-eqz v2, :cond_4

    .line 551
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    :cond_4
    goto :goto_0

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v4

    .line 500
    :cond_5
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 501
    new-instance v3, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    invoke-direct {v3, p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;-><init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V

    .line 502
    .local v3, "cacheinfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 503
    .local v7, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 504
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 505
    .local v8, "eventType":I
    :goto_1
    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    .line 506
    const-string v9, "item"

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_2

    .line 532
    :pswitch_0
    :try_start_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 533
    if-eqz v3, :cond_a

    .line 534
    iget-object v9, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->getResourceID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 508
    :pswitch_1
    const-string v10, "cacheInfos"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 509
    iget-object v10, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 511
    :cond_6
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 512
    new-instance v9, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    invoke-direct {v9, p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;-><init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;)V

    move-object v3, v9

    .line 514
    :cond_7
    const-string v9, "resourcesID"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 515
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 516
    .local v9, "value":I
    if-eqz v3, :cond_8

    .line 517
    invoke-virtual {v3, v9}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->setResourcesID(I)V

    .line 520
    .end local v9    # "value":I
    :cond_8
    const-string v9, "resourceName"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 521
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    .line 522
    .local v9, "value":Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 523
    invoke-virtual {v3, v9}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->setResourceName(Ljava/lang/String;)V

    .line 526
    .end local v9    # "value":Ljava/lang/String;
    :cond_9
    const-string v9, "failenum"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 527
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 528
    .local v9, "value":I
    iput v9, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    .line 541
    .end local v9    # "value":I
    :cond_a
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v8, v9

    goto/16 :goto_1

    .line 543
    :cond_b
    nop

    .line 549
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    nop

    .line 551
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 555
    goto :goto_3

    .line 553
    :catch_1
    move-exception v0

    .line 554
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 543
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    return v9

    .line 548
    .end local v3    # "cacheinfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "eventType":I
    :catchall_0
    move-exception v3

    goto :goto_5

    .line 544
    :catch_2
    move-exception v3

    .line 545
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 546
    nop

    .line 549
    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    if-eqz v2, :cond_c

    .line 551
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 555
    :cond_c
    goto :goto_4

    .line 553
    :catch_3
    move-exception v0

    .line 554
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 546
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return v4

    .line 549
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    if-eqz v2, :cond_d

    .line 551
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 555
    :cond_d
    goto :goto_6

    .line 553
    :catch_4
    move-exception v0

    .line 554
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 556
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6
    throw v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist saveDrawableCacheInfoInner(ILandroid/graphics/drawable/Drawable;)Z
    .locals 8
    .param p1, "resourceID"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "drawableHeight":I
    const/4 v1, 0x0

    .line 653
    .local v1, "drawableWidth":I
    sget-object v2, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 654
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isPreLoadCacheEffect()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->isDecodingDrawable()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mNeedSaveInfo:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveCount:I

    iget v5, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMaxSaveCount:I

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveIDList:Ljava/util/ArrayList;

    .line 655
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_4

    iget-object v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 660
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move v0, v3

    .line 661
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    move v1, v3

    .line 663
    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMinWidth:I

    if-lt v1, v3, :cond_3

    iget v3, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mMinHeight:I

    if-ge v0, v3, :cond_1

    goto :goto_0

    .line 666
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 668
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveIDList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, "resourceName":Ljava/lang/String;
    new-instance v2, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    invoke-direct {v2, p0, v3, p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;-><init>(Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;Ljava/lang/String;I)V

    move-object v4, v2

    .line 672
    .local v4, "saveInfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 673
    .local v5, "message":Landroid/os/Message;
    const v2, 0x800003

    iput v2, v5, Landroid/os/Message;->what:I

    .line 674
    iput-object v4, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 675
    iget-object v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    iget-boolean v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v2, :cond_2

    .line 677
    const-string v2, "OplusPreLoadSplashManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveDrawableCacheInfo success,  resourceID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; resourceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; drawableWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; drawableHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_2
    sget-object v6, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 682
    :try_start_1
    iget v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveCount:I

    const/4 v7, 0x1

    add-int/2addr v2, v7

    iput v2, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mSaveCount:I

    .line 683
    monitor-exit v6

    .line 684
    return v7

    .line 683
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 664
    .end local v3    # "resourceName":Ljava/lang/String;
    .end local v4    # "saveInfo":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    .end local v5    # "message":Landroid/os/Message;
    :cond_3
    :goto_0
    :try_start_2
    monitor-exit v2

    return v4

    .line 657
    :cond_4
    :goto_1
    monitor-exit v2

    return v4

    .line 666
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method private blacklist writeCacheInfoToXml(Ljava/util/HashMap;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;",
            ">;)Z"
        }
    .end annotation

    .line 560
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "resourceName"

    const-string v3, "resourcesID"

    const-string v4, "item"

    const-string v5, "failenum"

    const-string v6, "cacheInfos"

    const-string v7, "UTF-8"

    const-wide/16 v8, 0x40

    const-string v10, "writeCacheInfoToXml"

    invoke-static {v8, v9, v10}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 561
    iget-boolean v11, v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mDebug:Z

    if-eqz v11, :cond_0

    .line 562
    const-string v11, "OplusPreLoadSplashManager"

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    if-eqz v2, :cond_6

    iget-object v11, v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    if-nez v11, :cond_1

    goto/16 :goto_5

    .line 569
    :cond_1
    const/4 v11, 0x0

    .line 571
    .local v11, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".preloadCache_info.xml"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 572
    .local v12, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-direct {v13, v14, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    .local v13, "file":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    .line 574
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 575
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 577
    :cond_2
    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v11, v14

    .line 578
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v14

    .line 579
    .local v14, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v14, v11, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 580
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v14, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 582
    const/4 v7, 0x0

    invoke-interface {v14, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 583
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 584
    .local v10, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 585
    .local v16, "count":Ljava/lang/Integer;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v19, v18

    .line 586
    .local v19, "key":Ljava/lang/Integer;
    move-object/from16 v8, v19

    .end local v19    # "key":Ljava/lang/Integer;
    .local v8, "key":Ljava/lang/Integer;
    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;

    .line 587
    .local v9, "value":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    invoke-interface {v14, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    const-string v15, "id"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    invoke-interface {v14, v2, v15, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 589
    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 591
    invoke-interface {v14, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    invoke-interface {v14, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 593
    invoke-virtual {v9}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;->getResourceName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 594
    invoke-interface {v14, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    invoke-interface {v14, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v16, v2

    .line 597
    .end local v8    # "key":Ljava/lang/Integer;
    .end local v9    # "value":Lcom/oplus/preloadsplash/OplusPreLoadSplashManager$BitmapCacheInfo;
    move-object/from16 v2, p1

    const/4 v7, 0x0

    const-wide/16 v8, 0x40

    const/4 v15, 0x1

    goto :goto_0

    .line 598
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v14, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 599
    iget v0, v1, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadDrawableFaileNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 600
    const/4 v0, 0x0

    invoke-interface {v14, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    invoke-interface {v14, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 603
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 604
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    nop

    .line 611
    const-wide/16 v2, 0x40

    :try_start_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 612
    nop

    .line 613
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    goto :goto_1

    .line 615
    :catch_0
    move-exception v0

    .line 616
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 605
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 610
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v12    # "fileName":Ljava/lang/String;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "count":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_3

    .line 606
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 607
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    nop

    .line 611
    const-wide/16 v3, 0x40

    :try_start_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 612
    if-eqz v11, :cond_4

    .line 613
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 617
    :cond_4
    goto :goto_2

    .line 615
    :catch_2
    move-exception v0

    .line 616
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 608
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    return v3

    .line 611
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const-wide/16 v3, 0x40

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 612
    if-eqz v11, :cond_5

    .line 613
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 617
    :cond_5
    goto :goto_4

    .line 615
    :catch_3
    move-exception v0

    .line 616
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 618
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    throw v2

    .line 565
    .end local v11    # "out":Ljava/io/FileOutputStream;
    :cond_6
    :goto_5
    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 566
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public blacklist getDrawableCache(IILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "resourceID"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p4, "wrapper"    # Landroid/content/res/Resources;

    .line 745
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadSplashSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 746
    return-object v1

    .line 749
    :cond_0
    if-eqz p2, :cond_1

    .line 750
    return-object v1

    .line 752
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->getDrawableCacheInner(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 729
    if-nez p1, :cond_0

    .line 730
    return-void

    .line 732
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->initInner(Landroid/content/Context;)V

    .line 733
    return-void
.end method

.method public blacklist preloadCacheDrawable()V
    .locals 1

    .line 737
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadSplashSupport:Z

    if-nez v0, :cond_0

    .line 738
    return-void

    .line 740
    :cond_0
    invoke-direct {p0}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->preloadDrawableInner()V

    .line 741
    return-void
.end method

.method public blacklist saveDrawableCache(ILandroid/graphics/drawable/Drawable;I)Z
    .locals 2
    .param p1, "resourceID"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "density"    # I

    .line 757
    iget-boolean v0, p0, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->mPreloadSplashSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 758
    return v1

    .line 761
    :cond_0
    if-eqz p3, :cond_1

    .line 762
    return v1

    .line 764
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/oplus/preloadsplash/OplusPreLoadSplashManager;->saveDrawableCacheInfoInner(ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
