.class public Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;
.super Ljava/lang/Object;
.source "OplusResolverPagerAdapterHelper.java"

# interfaces
.implements Lcom/oplus/resolver/IOplusResolverGridItemClickListener;
.implements Lcom/oplus/resolver/IOplusGalleryPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverPagerAdapterHelper"


# instance fields
.field private blacklist executor:Ljava/util/concurrent/ExecutorService;

.field private blacklist mAdapterCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/resolver/OplusResolverGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAlertDialog:Landroid/app/Dialog;

.field private blacklist mColumnSize:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCustomIconHelper:Lcom/oplus/resolver/OplusResolverCustomIconHelper;

.field private blacklist mDefaultOplusItem:Lcom/oplus/widget/OplusItem;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

.field private blacklist mMemoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/oplus/widget/OplusItem;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMoreIconTotalPosition:I

.field private blacklist mMoreItem:Lcom/oplus/widget/OplusItem;

.field private blacklist mNeedAnimation:Z

.field private blacklist mNeedMoreIcon:Z

.field private blacklist mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

.field private blacklist mTaskHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAdapterCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mAdapterCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmColumnSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)I
    .locals 0

    iget p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCustomIconHelper(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Lcom/oplus/resolver/OplusResolverCustomIconHelper;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mCustomIconHelper:Lcom/oplus/resolver/OplusResolverCustomIconHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolveInfoHelper(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Lcom/oplus/resolver/OplusResolverInfoHelper;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTaskHashMap(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mTaskHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddBitmapToMemoryCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Ljava/lang/String;Lcom/oplus/widget/OplusItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->addBitmapToMemoryCache(Ljava/lang/String;Lcom/oplus/widget/OplusItem;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBitmapFromMemCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Ljava/lang/String;)Lcom/oplus/widget/OplusItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getBitmapFromMemCache(Ljava/lang/String;)Lcom/oplus/widget/OplusItem;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMemCacheKey(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getMemCacheKey(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misMultiAppResolveInfo(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->isMultiAppResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmodifyMultiUserHandle(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 0

    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->modifyMultiUserHandle(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateAdapterItems(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Lcom/oplus/resolver/OplusResolverGridAdapter;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->updateAdapterItems(Lcom/oplus/resolver/OplusResolverGridAdapter;Ljava/util/List;II)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMemoryCache:Landroid/util/LruCache;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    .line 72
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedAnimation:Z

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mDefaultOplusItem:Lcom/oplus/widget/OplusItem;

    .line 74
    new-instance v0, Lcom/oplus/widget/OplusItem;

    invoke-direct {v0}, Lcom/oplus/widget/OplusItem;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreItem:Lcom/oplus/widget/OplusItem;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->executor:Ljava/util/concurrent/ExecutorService;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mTaskHashMap:Ljava/util/HashMap;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mAdapterCache:Ljava/util/HashMap;

    .line 85
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mAlertDialog:Landroid/app/Dialog;

    .line 87
    invoke-static {p1}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/resolver/OplusResolverInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    .line 88
    new-instance v0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;

    invoke-direct {v0, p1}, Lcom/oplus/resolver/OplusResolverCustomIconHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mCustomIconHelper:Lcom/oplus/resolver/OplusResolverCustomIconHelper;

    .line 89
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreItem:Lcom/oplus/widget/OplusItem;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    const v2, 0xc04009f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreItem:Lcom/oplus/widget/OplusItem;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mCustomIconHelper:Lcom/oplus/resolver/OplusResolverCustomIconHelper;

    const v2, 0xc080043

    invoke-virtual {v1, v2}, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->getAdaptiveIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 92
    return-void
.end method

.method private declared-synchronized blacklist addBitmapToMemoryCache(Ljava/lang/String;Lcom/oplus/widget/OplusItem;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "appinfo"    # Lcom/oplus/widget/OplusItem;

    monitor-enter p0

    .line 332
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getBitmapFromMemCache(Ljava/lang/String;)Lcom/oplus/widget/OplusItem;

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    .end local p0    # "this":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;
    :cond_0
    monitor-exit p0

    return-void

    .line 331
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "appinfo":Lcom/oplus/widget/OplusItem;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist getBitmapFromMemCache(Ljava/lang/String;)Lcom/oplus/widget/OplusItem;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/widget/OplusItem;

    return-object v0
.end method

.method private blacklist getMemCacheKey(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "originIntent"    # Landroid/content/Intent;

    .line 322
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->isMultiAppResolveInfo(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    .line 323
    .local v0, "isMulti":Z
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 324
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 328
    :cond_0
    return-object v2
.end method

.method private blacklist initAppInfoTop(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .param p2, "iconPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;"
        }
    .end annotation

    .line 306
    .local p1, "appinfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "appInfoTop":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 308
    if-ne v1, p2, :cond_0

    .line 309
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreItem:Lcom/oplus/widget/OplusItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    goto :goto_1

    .line 312
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/widget/OplusItem;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method private blacklist isMultiAppResolveInfo(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    .line 469
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiAppUserId(I)Z

    move-result v0

    .line 468
    return v0

    .line 471
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist modifyMultiUserHandle(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 2
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 458
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_0

    .line 459
    return-object p1

    .line 461
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized blacklist updateAdapterItems(Lcom/oplus/resolver/OplusResolverGridAdapter;Ljava/util/List;II)V
    .locals 6
    .param p1, "adapter"    # Lcom/oplus/resolver/OplusResolverGridAdapter;
    .param p3, "pagerNumber"    # I
    .param p4, "pagerSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/resolver/OplusResolverGridAdapter;",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;II)V"
        }
    .end annotation

    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    monitor-enter p0

    .line 440
    if-eqz p2, :cond_1

    .line 441
    :try_start_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreIconTotalPosition:I

    rem-int v1, v0, p4

    .line 442
    .local v1, "moreIconPosition":I
    add-int/lit8 v0, v0, 0x1

    int-to-double v2, v0

    int-to-double v4, p4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 444
    .local v0, "moreIconPageCount":I
    iget-boolean v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    if-eqz v2, :cond_0

    add-int/lit8 v2, p3, 0x1

    if-ne v0, v2, :cond_0

    .line 445
    invoke-direct {p0, p2, v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->initAppInfoTop(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/oplus/resolver/OplusResolverGridAdapter;->setOplusItems(Ljava/util/List;)V

    goto :goto_0

    .line 447
    .end local p0    # "this":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;
    :cond_0
    invoke-virtual {p1, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter;->setOplusItems(Ljava/util/List;)V

    .line 448
    iget-boolean v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedAnimation:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    if-ne v0, v2, :cond_1

    .line 449
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedAnimation:Z

    .line 450
    invoke-virtual {p1, v1}, Lcom/oplus/resolver/OplusResolverGridAdapter;->startMoreAnimation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 439
    .end local v0    # "moreIconPageCount":I
    .end local v1    # "moreIconPosition":I
    .end local p1    # "adapter":Lcom/oplus/resolver/OplusResolverGridAdapter;
    .end local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    .end local p3    # "pagerNumber":I
    .end local p4    # "pagerSize":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 454
    .restart local p0    # "this":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;
    .restart local p1    # "adapter":Lcom/oplus/resolver/OplusResolverGridAdapter;
    .restart local p2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    .restart local p3    # "pagerNumber":I
    .restart local p4    # "pagerSize":I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public blacklist clearDrawableCache()V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMemoryCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 479
    :cond_0
    return-void
.end method

.method public blacklist clickMoreIcon()V
    .locals 1

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedAnimation:Z

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    .line 193
    return-void
.end method

.method public whitelist createPagerView(Ljava/util/List;II)Landroid/view/View;
    .locals 10
    .param p2, "pagerNumber"    # I
    .param p3, "pagerSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 96
    .local p1, "appinfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "COLUMN_SIZE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pagerNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverPagerAdapterHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/android/internal/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "gridView":Lcom/android/internal/widget/RecyclerView;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView;->setOverScrollMode(I)V

    .line 99
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc050098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 100
    .local v1, "padding":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Lcom/android/internal/widget/RecyclerView;->setPaddingRelative(IIII)V

    .line 101
    new-instance v3, Lcom/android/internal/widget/DefaultItemAnimator;

    invoke-direct {v3}, Lcom/android/internal/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->setItemAnimator(Lcom/android/internal/widget/RecyclerView$ItemAnimator;)V

    .line 102
    new-instance v3, Lcom/android/internal/widget/GridLayoutManager;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    invoke-direct {v3, v4, v5}, Lcom/android/internal/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->setLayoutManager(Lcom/android/internal/widget/RecyclerView$LayoutManager;)V

    .line 103
    iget v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 104
    new-instance v3, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;

    invoke-direct {v3, p0, v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$1;-><init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;I)V

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->addItemDecoration(Lcom/android/internal/widget/RecyclerView$ItemDecoration;)V

    .line 131
    :cond_0
    new-instance v3, Lcom/oplus/resolver/OplusResolverGridAdapter;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oplus/resolver/OplusResolverGridAdapter;-><init>(Landroid/content/Context;)V

    .line 133
    .local v3, "adapter":Lcom/oplus/resolver/OplusResolverGridAdapter;
    if-eqz p1, :cond_3

    .line 134
    iget v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreIconTotalPosition:I

    rem-int v5, v4, p3

    .line 135
    .local v5, "moreIconPosition":I
    add-int/lit8 v4, v4, 0x1

    int-to-double v6, v4

    int-to-double v8, p3

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    .line 137
    .local v4, "moreIconPageCount":I
    iget-boolean v6, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    if-eqz v6, :cond_1

    add-int/lit8 v6, p2, 0x1

    if-ne v4, v6, :cond_1

    .line 138
    invoke-direct {p0, p1, v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->initAppInfoTop(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oplus/resolver/OplusResolverGridAdapter;->setOplusItems(Ljava/util/List;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v3, p1}, Lcom/oplus/resolver/OplusResolverGridAdapter;->setOplusItems(Ljava/util/List;)V

    .line 141
    iget-boolean v6, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedAnimation:Z

    if-eqz v6, :cond_2

    add-int/lit8 v6, p2, 0x1

    if-ne v4, v6, :cond_2

    .line 142
    iput-boolean v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedAnimation:Z

    .line 143
    invoke-virtual {v3, v5}, Lcom/oplus/resolver/OplusResolverGridAdapter;->startMoreAnimation(I)V

    .line 146
    :cond_2
    :goto_0
    invoke-virtual {v3, p2}, Lcom/oplus/resolver/OplusResolverGridAdapter;->setPagerNumber(I)V

    .line 147
    invoke-virtual {v3, p0}, Lcom/oplus/resolver/OplusResolverGridAdapter;->setOnItemClickListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V

    .line 150
    .end local v4    # "moreIconPageCount":I
    .end local v5    # "moreIconPosition":I
    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/RecyclerView;->setAdapter(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    .line 151
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mAdapterCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mAlertDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mAlertDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 230
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist getMoreIconTotalPosition()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreIconTotalPosition:I

    return v0
.end method

.method public blacklist isMoreIconPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 204
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreIconTotalPosition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isNeedMoreIcon()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    return v0
.end method

.method public whitelist listToArray(Ljava/util/List;)[[Lcom/oplus/widget/OplusItem;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;)[[",
            "Lcom/oplus/widget/OplusItem;"
        }
    .end annotation

    .line 157
    .local p1, "oplusItems":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 158
    .local v0, "rowCounts":I
    iget v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v3, Lcom/oplus/widget/OplusItem;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/oplus/widget/OplusItem;

    .line 159
    .local v2, "array":[[Lcom/oplus/widget/OplusItem;
    const/4 v3, 0x0

    .line 160
    .local v3, "start":I
    iget v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    add-int/2addr v4, v3

    .line 161
    .local v4, "end":I
    const/4 v5, 0x0

    .line 162
    .local v5, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    if-ge v5, v0, :cond_1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    move v6, v4

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 164
    .local v6, "lend":I
    :goto_1
    invoke-interface {p1, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 165
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v8

    aget-object v9, v2, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v8, v1, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move v3, v4

    .line 167
    iget v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    add-int v4, v3, v8

    .line 168
    nop

    .end local v6    # "lend":I
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    add-int/lit8 v5, v5, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_1
    return-object v2
.end method

.method public whitelist loadBitmap(Landroid/content/Intent;Ljava/util/List;III)Ljava/util/List;
    .locals 17
    .param p1, "originIntent"    # Landroid/content/Intent;
    .param p3, "pagerNumber"    # I
    .param p4, "pagerSize"    # I
    .param p5, "placeholderCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;III)",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;"
        }
    .end annotation

    .line 234
    .local p2, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 235
    .local v10, "defaultAppInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 236
    .local v11, "appInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    const/4 v0, 0x0

    .line 238
    .local v0, "defaultSize":I
    if-eqz v8, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    add-int/lit8 v1, p3, 0x1

    mul-int v1, v1, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    mul-int v2, p3, p4

    sub-int/2addr v1, v2

    goto :goto_0

    .line 243
    :cond_1
    move/from16 v1, p4

    :goto_0
    move v0, v1

    move v12, v0

    goto :goto_3

    .line 239
    :cond_2
    :goto_1
    add-int/lit8 v1, p3, 0x1

    mul-int v1, v1, p4

    if-le v1, v9, :cond_3

    mul-int v1, p3, p4

    sub-int v1, v9, v1

    goto :goto_2

    .line 240
    :cond_3
    move/from16 v1, p4

    :goto_2
    move v0, v1

    move v12, v0

    .line 245
    .end local v0    # "defaultSize":I
    .local v12, "defaultSize":I
    :goto_3
    if-eqz v8, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 246
    mul-int v0, p3, p4

    .line 247
    add-int/lit8 v1, p3, 0x1

    mul-int v1, v1, p4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    .line 248
    :cond_4
    add-int/lit8 v1, p3, 0x1

    mul-int v1, v1, p4

    .line 246
    :goto_4
    invoke-interface {v8, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 252
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {v6, v2, v7}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getMemCacheKey(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "key":Ljava/lang/String;
    invoke-direct {v6, v3}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getBitmapFromMemCache(Ljava/lang/String;)Lcom/oplus/widget/OplusItem;

    move-result-object v4

    .line 254
    .local v4, "item":Lcom/oplus/widget/OplusItem;
    if-eqz v4, :cond_7

    .line 255
    invoke-virtual {v4}, Lcom/oplus/widget/OplusItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 256
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    .line 257
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v13

    .line 258
    .local v13, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 259
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v14}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 261
    .end local v13    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget-object v13, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    invoke-virtual {v13}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getPinnedList()Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_6

    iget-object v13, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    invoke-virtual {v13}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getPinnedList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 262
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/oplus/widget/OplusItem;->setPinned(Ljava/lang/Boolean;)V

    goto :goto_6

    .line 264
    :cond_6
    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/oplus/widget/OplusItem;->setPinned(Ljava/lang/Boolean;)V

    .line 266
    :goto_6
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "item":Lcom/oplus/widget/OplusItem;
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_7
    goto :goto_5

    .line 272
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_8
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v12, :cond_e

    .line 273
    iget-object v0, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mDefaultOplusItem:Lcom/oplus/widget/OplusItem;

    if-nez v0, :cond_9

    .line 274
    iget-object v0, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mCustomIconHelper:Lcom/oplus/resolver/OplusResolverCustomIconHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->getDefaultAppInfo()Lcom/oplus/widget/OplusItem;

    move-result-object v0

    iput-object v0, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mDefaultOplusItem:Lcom/oplus/widget/OplusItem;

    .line 276
    :cond_9
    iget v13, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    .line 277
    .local v13, "columnCounts":I
    int-to-double v0, v12

    int-to-double v2, v13

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v14, v0

    .line 278
    .local v14, "rowCounts":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v14, :cond_b

    .line 279
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_8
    mul-int v2, v0, v13

    sub-int v2, v12, v2

    if-ge v1, v2, :cond_a

    if-ge v1, v13, :cond_a

    .line 280
    new-instance v2, Lcom/oplus/widget/OplusItem;

    invoke-direct {v2}, Lcom/oplus/widget/OplusItem;-><init>()V

    .line 281
    .local v2, "item":Lcom/oplus/widget/OplusItem;
    iget-object v3, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mDefaultOplusItem:Lcom/oplus/widget/OplusItem;

    invoke-virtual {v3}, Lcom/oplus/widget/OplusItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v3, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mDefaultOplusItem:Lcom/oplus/widget/OplusItem;

    invoke-virtual {v3}, Lcom/oplus/widget/OplusItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 283
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    .end local v2    # "item":Lcom/oplus/widget/OplusItem;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 278
    .end local v1    # "j":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 286
    .end local v0    # "i":I
    :cond_b
    if-eqz v8, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 287
    iget-object v0, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mTaskHashMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    .line 288
    new-instance v15, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;-><init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/Intent;Ljava/util/List;II)V

    .line 289
    .local v0, "bTask":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;
    iget-object v1, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mTaskHashMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 291
    .end local v0    # "bTask":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;
    goto :goto_9

    .line 292
    :cond_c
    iget-object v0, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mTaskHashMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/lang/Thread;

    .line 293
    .local v15, "oldThread":Ljava/lang/Thread;
    invoke-virtual {v15}, Ljava/lang/Thread;->interrupt()V

    .line 294
    new-instance v16, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;-><init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/Intent;Ljava/util/List;II)V

    .line 295
    .local v0, "newTask":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;
    iget-object v1, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mTaskHashMap:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, v6, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 299
    .end local v0    # "newTask":Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;
    .end local v15    # "oldThread":Ljava/lang/Thread;
    :cond_d
    :goto_9
    return-object v10

    .line 301
    .end local v13    # "columnCounts":I
    .end local v14    # "rowCounts":I
    :cond_e
    return-object v11
.end method

.method public whitelist onItemClick(II)V
    .locals 1
    .param p1, "pagerNumber"    # I
    .param p2, "position"    # I

    .line 339
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    if-eqz v0, :cond_0

    .line 340
    invoke-interface {v0, p1, p2}, Lcom/oplus/resolver/IOplusResolverGridItemClickListener;->onItemClick(II)V

    .line 342
    :cond_0
    return-void
.end method

.method public whitelist onItemLongClick(II)V
    .locals 1
    .param p1, "pagerNumber"    # I
    .param p2, "position"    # I

    .line 346
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0, p1, p2}, Lcom/oplus/resolver/IOplusResolverGridItemClickListener;->onItemLongClick(II)V

    .line 349
    :cond_0
    return-void
.end method

.method public whitelist setColumnSize(I)V
    .locals 0
    .param p1, "columnSize"    # I

    .line 187
    iput p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mColumnSize:I

    .line 188
    return-void
.end method

.method public whitelist setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    .line 175
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mItemClickListener:Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    .line 176
    return-void
.end method

.method public blacklist updateNeedMoreIcon(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "allRiListSize"    # I

    .line 208
    invoke-static {p1}, Lcom/oplus/util/OplusResolverIntentUtil;->isChooserAction(Landroid/content/Intent;)Z

    move-result v0

    .line 209
    .local v0, "isChooser":Z
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    invoke-virtual {v1, p1}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getResolveTopSize(Landroid/content/Intent;)I

    move-result v1

    .line 210
    .local v1, "resolveTopSize":I
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    if-ge v1, p2, :cond_0

    .line 211
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    .line 212
    iput v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreIconTotalPosition:I

    goto :goto_0

    .line 214
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    .line 215
    iput v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mMoreIconTotalPosition:I

    .line 218
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init:resolveTopSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mRiList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mNeedMoreIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mNeedMoreIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusResolverPagerAdapterHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public whitelist updateUserHandle(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 183
    :cond_0
    return-void
.end method
