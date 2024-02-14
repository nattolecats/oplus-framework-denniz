.class public Landroid/content/res/ResourcesImplExt;
.super Ljava/lang/Object;
.source "ResourcesImplExt.java"

# interfaces
.implements Landroid/content/res/IResourcesImplExt;


# static fields
.field public static final blacklist COOKIE_TYPE_FRAMEWORK:I = 0x1

.field public static final blacklist COOKIE_TYPE_OPLUS:I = 0x2

.field public static final blacklist COOKIE_TYPE_OTHERPACKAGE:I = 0x3

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist DEBUG_COMPACT_WINDOW:Z

.field private static final blacklist DEBUG_DEPTH:I = 0x1e

.field private static final blacklist DISABLE_COMPACT_WINDOW_DISPLAY_ADJUSTMENT:Z

.field private static final blacklist TAG:Ljava/lang/String; = "ResourcesImplExt"


# instance fields
.field protected blacklist mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

.field protected blacklist mCharSequences:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

.field private blacklist mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

.field protected blacklist mCookies:Landroid/util/SparseIntArray;

.field protected blacklist mIconThemeResources:Landroid/content/res/OplusThemeResourcesPackage;

.field protected blacklist mIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsAppConfig:Z

.field protected blacklist mIsHasAcessDrawables:Z

.field protected blacklist mIsHasAcessValues:Z

.field protected blacklist mIsHasDrawables:Z

.field protected blacklist mIsHasSystemDrawables:Z

.field protected blacklist mIsHasSystemValues:Z

.field protected blacklist mIsHasValues:Z

.field protected blacklist mLoadArrary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mResourcesImpl:Landroid/content/res/ResourcesImpl;

.field protected blacklist mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSkipIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

.field protected blacklist mThemeChanged:Z

.field protected blacklist mThemeIntegers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mThemeResources:Landroid/content/res/OplusThemeResources;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 62
    const-string v0, "persist.sys.debug.compactwindow.displayadjustment"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ResourcesImplExt;->DEBUG_COMPACT_WINDOW:Z

    .line 63
    const-string v0, "persist.sys.disable.compactwindow.displayadjustment"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/content/res/ResourcesImplExt;->DISABLE_COMPACT_WINDOW_DISPLAY_ADJUSTMENT:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "resImpl"    # Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    .line 66
    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    .line 67
    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    .line 68
    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    .line 69
    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    .line 70
    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    .line 71
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mCharSequences:Landroid/util/SparseArray;

    .line 72
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mCookies:Landroid/util/SparseIntArray;

    .line 73
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mIntegers:Landroid/util/SparseArray;

    .line 74
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mThemeIntegers:Landroid/util/SparseArray;

    .line 75
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mSkipFiles:Landroid/util/SparseArray;

    .line 76
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mSkipIcons:Landroid/util/SparseArray;

    .line 80
    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mThemeChanged:Z

    .line 81
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mLoadArrary:Landroid/util/SparseArray;

    .line 91
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 95
    move-object v2, p1

    check-cast v2, Landroid/content/res/ResourcesImpl;

    iput-object v2, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    .line 96
    invoke-virtual {p0, v1}, Landroid/content/res/ResourcesImplExt;->init(Ljava/lang/String;)V

    .line 97
    sget-object v1, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCompactWindowAppManager;

    iput-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    .line 98
    return-void
.end method

.method private blacklist clear(Z)V
    .locals 1
    .param p1, "theme"    # Z

    .line 525
    invoke-virtual {p0}, Landroid/content/res/ResourcesImplExt;->clearCache()V

    .line 526
    invoke-direct {p0}, Landroid/content/res/ResourcesImplExt;->clearSync()V

    .line 527
    if-eqz p1, :cond_0

    .line 528
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 532
    :goto_0
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 533
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mLoadArrary:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 534
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 535
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getWrapper()Landroid/content/res/IResourcesImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/res/IResourcesImplWrapper;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 536
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getWrapper()Landroid/content/res/IResourcesImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/res/IResourcesImplWrapper;->getPreloadedColorDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 537
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getWrapper()Landroid/content/res/IResourcesImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/res/IResourcesImplWrapper;->getPreloadedComplexColors()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 538
    return-void
.end method

.method private declared-synchronized blacklist clearSync()V
    .locals 1

    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 542
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mSkipIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 540
    .end local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist getColorValue(II)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I
    .param p2, "cookie"    # I

    .line 493
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/content/res/ResourcesImplExt;->getColorValue(III)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getColorValue(III)Ljava/lang/Integer;
    .locals 5
    .param p1, "id"    # I
    .param p2, "resourceId"    # I
    .param p3, "cookie"    # I

    .line 497
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 500
    :cond_0
    const/4 v0, 0x0

    .line 502
    .local v0, "color":Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImplExt;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 503
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 504
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    goto :goto_0

    .line 506
    :cond_1
    invoke-direct {p0, p3, p1}, Landroid/content/res/ResourcesImplExt;->getCookieType(II)I

    move-result v2

    .line 507
    .local v2, "cookieId":I
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 508
    invoke-virtual {v3, p1}, Landroid/content/res/OplusAccessibleResources;->getAccessibleInt(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .line 509
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    .line 510
    invoke-direct {p0, p3, p2}, Landroid/content/res/ResourcesImplExt;->getCookieType(II)I

    move-result v3

    .line 511
    .local v3, "vcookieId":I
    if-ne v3, v4, :cond_2

    .line 512
    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    invoke-virtual {v4, p2}, Landroid/content/res/OplusAccessibleResources;->getAccessibleInt(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .line 516
    .end local v3    # "vcookieId":I
    :cond_2
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mIntegers:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    .end local v1    # "index":I
    .end local v2    # "cookieId":I
    :goto_0
    goto :goto_1

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColorValue. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResourcesImplExt"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 498
    .end local v0    # "color":Ljava/lang/Integer;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getCookieType(II)I
    .locals 4
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .line 432
    if-nez p2, :cond_0

    .line 433
    return p2

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 437
    .local v0, "i":I
    if-nez v0, :cond_3

    .line 438
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/ResourcesImplExt;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 440
    const/4 v0, 0x1

    goto :goto_0

    .line 441
    :cond_1
    const-string v2, "oplus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    const/4 v0, 0x2

    goto :goto_0

    .line 444
    :cond_2
    const/4 v0, 0x3

    .line 446
    :goto_0
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mCookies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 448
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 449
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCookieType. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResourcesImplExt"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 450
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    :goto_1
    nop

    .line 451
    :goto_2
    return v0
.end method

.method private blacklist getOplusAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 2

    .line 631
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method private blacklist getThemeInt(II)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I
    .param p2, "cookie"    # I

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/content/res/ResourcesImplExt;->getThemeInt(III)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getThemeInt(III)Ljava/lang/Integer;
    .locals 5
    .param p1, "id"    # I
    .param p2, "resourceId"    # I
    .param p3, "cookie"    # I

    .line 459
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    return-object v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    .line 464
    .local v0, "res":Ljava/lang/Integer;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImplExt;->mThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 465
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 466
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move-object v0, v2

    goto :goto_0

    .line 468
    :cond_1
    iget-boolean v2, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-eqz v2, :cond_2

    .line 469
    invoke-virtual {v2, p1}, Landroid/content/res/OplusThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 470
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    if-eq p2, p1, :cond_2

    .line 471
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    invoke-virtual {v2, p2}, Landroid/content/res/OplusThemeResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    .line 474
    :cond_2
    iget-boolean v2, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    if-eqz v2, :cond_4

    .line 475
    invoke-direct {p0, p3, p1}, Landroid/content/res/ResourcesImplExt;->getCookieType(II)I

    move-result v2

    .line 476
    .local v2, "cookieId":I
    const/4 v3, 0x3

    if-ge v2, v3, :cond_3

    .line 477
    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    invoke-virtual {v4, p1, v2}, Landroid/content/res/OplusThemeResourcesSystem;->getThemeInt(II)Ljava/lang/Integer;

    move-result-object v4

    move-object v0, v4

    .line 479
    :cond_3
    invoke-direct {p0, p3, p2}, Landroid/content/res/ResourcesImplExt;->getCookieType(II)I

    move-result v4

    .line 480
    .local v4, "cookieResId":I
    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    if-eq p2, p1, :cond_4

    if-ge v4, v3, :cond_4

    .line 481
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    invoke-virtual {v3, p2, v4}, Landroid/content/res/OplusThemeResourcesSystem;->getThemeInt(II)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, v3

    .line 484
    .end local v2    # "cookieId":I
    .end local v4    # "cookieResId":I
    :cond_4
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mThemeIntegers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    .end local v1    # "index":I
    :goto_0
    goto :goto_1

    .line 486
    :catch_0
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeInt. e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResourcesImplExt"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public blacklist checkUpdate(IZ)V
    .locals 6
    .param p1, "changes"    # I
    .param p2, "languageChaged"    # Z

    .line 361
    invoke-static {p1}, Loplus/content/res/OplusExtraConfiguration;->needNewResources(I)Z

    move-result v0

    .line 362
    .local v0, "needNew":Z
    invoke-static {p1}, Loplus/content/res/OplusExtraConfiguration;->needAccessNewResources(I)Z

    move-result v1

    .line 363
    .local v1, "needAccessNew":Z
    and-int/lit16 v2, p1, 0x200

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 364
    .local v2, "nightChange":Z
    :goto_0
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mIconThemeResources:Landroid/content/res/OplusThemeResourcesPackage;

    if-eqz v5, :cond_4

    :cond_1
    if-eqz v0, :cond_4

    .line 365
    invoke-direct {p0, v3}, Landroid/content/res/ResourcesImplExt;->clear(Z)V

    .line 366
    iput-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    .line 367
    iput-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    .line 368
    iput-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    .line 369
    iput-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    .line 370
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->reset()V

    .line 371
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-eqz v5, :cond_2

    .line 372
    invoke-virtual {v5, p0}, Landroid/content/res/OplusThemeResources;->setResource(Landroid/content/res/IResourcesImplExt;)V

    .line 373
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    invoke-virtual {v5}, Landroid/content/res/OplusThemeResources;->checkUpdate()Z

    .line 374
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    invoke-virtual {v5}, Landroid/content/res/OplusThemeResources;->hasValues()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    .line 375
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    invoke-virtual {v5}, Landroid/content/res/OplusThemeResources;->hasDrawables()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    .line 377
    :cond_2
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    if-eqz v5, :cond_3

    .line 378
    invoke-virtual {v5}, Landroid/content/res/OplusThemeResourcesSystem;->checkUpdate()Z

    .line 379
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    invoke-virtual {v5}, Landroid/content/res/OplusThemeResourcesSystem;->hasValues()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    .line 380
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    invoke-virtual {v5}, Landroid/content/res/OplusThemeResourcesSystem;->hasDrawables()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    .line 382
    :cond_3
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mIconThemeResources:Landroid/content/res/OplusThemeResourcesPackage;

    if-eqz v5, :cond_4

    .line 383
    invoke-virtual {v5}, Landroid/content/res/OplusThemeResourcesPackage;->checkUpdate()Z

    .line 386
    :cond_4
    iget-object v5, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    if-eqz v5, :cond_6

    if-nez v1, :cond_5

    if-eqz v2, :cond_6

    .line 387
    :cond_5
    invoke-direct {p0, v4}, Landroid/content/res/ResourcesImplExt;->clear(Z)V

    .line 388
    iput-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    .line 389
    iput-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    .line 390
    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    invoke-virtual {v4, v3}, Landroid/content/res/OplusAccessibleResources;->checkUpdate(Z)V

    .line 391
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    invoke-virtual {v3}, Landroid/content/res/OplusAccessibleResources;->hasValues()Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    .line 392
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    invoke-virtual {v3}, Landroid/content/res/OplusAccessibleResources;->hasDrawables()Z

    move-result v3

    iput-boolean v3, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    .line 394
    :cond_6
    return-void
.end method

.method public blacklist clearCache()V
    .locals 1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mThemeChanged:Z

    .line 123
    return-void
.end method

.method public blacklist debuglogApkAssets()V
    .locals 6

    .line 614
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-nez v0, :cond_0

    .line 615
    return-void

    .line 617
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getApkAssets()[Landroid/content/res/ApkAssets;

    move-result-object v0

    .line 618
    .local v0, "apkAssets":[Landroid/content/res/ApkAssets;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 619
    .local v3, "apkAsset":Landroid/content/res/ApkAssets;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the AssetManager\'s apkAsset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ResourcesImplExt"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v3    # "apkAsset":Landroid/content/res/ApkAssets;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :cond_1
    return-void
.end method

.method public blacklist getCompactWindowAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    .line 568
    sget-boolean v0, Landroid/content/res/ResourcesImplExt;->DISABLE_COMPACT_WINDOW_DISPLAY_ADJUSTMENT:Z

    if-eqz v0, :cond_0

    .line 569
    const/4 v0, 0x0

    return-object v0

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    return-object v0
.end method

.method public blacklist getCompactWindowMetrics(Landroid/content/res/ResourcesImpl;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/ResourcesImpl;
    .param p2, "oldMetrics"    # Landroid/util/DisplayMetrics;

    .line 605
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 606
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusCompactWindowAppManager;->getCompactWindowMetrics(Landroid/content/res/ResourcesImpl;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/OplusBaseConfiguration;
    .locals 1

    .line 554
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExValue(ILandroid/util/TypedValue;Z)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 397
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    if-nez v0, :cond_0

    .line 398
    return-void

    .line 400
    :cond_0
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    const/16 v2, 0x1f

    if-lt v0, v1, :cond_1

    iget v0, p2, Landroid/util/TypedValue;->type:I

    if-le v0, v2, :cond_2

    :cond_1
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 402
    :cond_2
    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    iget v1, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, p1, v0, v1}, Landroid/content/res/ResourcesImplExt;->getThemeInt(III)Ljava/lang/Integer;

    move-result-object v0

    .line 403
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 404
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 405
    :cond_3
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_4

    iget v1, p2, Landroid/util/TypedValue;->type:I

    if-gt v1, v2, :cond_4

    .line 406
    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    iget v2, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, p1, v1, v2}, Landroid/content/res/ResourcesImplExt;->getColorValue(III)Ljava/lang/Integer;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_4

    .line 408
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    .line 412
    .end local v0    # "res":Ljava/lang/Integer;
    :cond_4
    :goto_0
    return-void
.end method

.method public blacklist getIsAppConfig()Z
    .locals 1

    .line 642
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsAppConfig:Z

    return v0
.end method

.method public blacklist getLoadArrary()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mLoadArrary:Landroid/util/SparseArray;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mName:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getResourceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I

    .line 109
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getResourcePackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I

    .line 101
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getResourcesImpl()Landroid/content/res/ResourcesImpl;
    .locals 1

    .line 550
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    return-object v0
.end method

.method public blacklist getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;
    .locals 1

    .line 558
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeChanged()Z
    .locals 1

    .line 231
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mThemeChanged:Z

    return v0
.end method

.method public blacklist getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I

    .line 307
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, "res":Ljava/lang/CharSequence;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/ResourcesImplExt;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 313
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 314
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object v0, v2

    goto :goto_0

    .line 316
    :cond_1
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-eqz v2, :cond_2

    .line 317
    invoke-virtual {v2, p1}, Landroid/content/res/OplusThemeResources;->getThemeCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .line 320
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 321
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mCharSequences:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "index":I
    :cond_3
    goto :goto_1

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ResourcesImplExt"

    const-string v3, "getThemeCharSequence exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 326
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method blacklist getValue(ILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z

    .line 116
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public blacklist hookGetDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "originalMetrics"    # Landroid/util/DisplayMetrics;

    .line 627
    invoke-direct {p0}, Landroid/content/res/ResourcesImplExt;->getOplusAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->getAutoLayoutDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Landroid/content/res/ResourcesImplExt;->mName:Ljava/lang/String;

    .line 127
    invoke-virtual {p0, p1}, Landroid/content/res/ResourcesImplExt;->initThemeResource(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/content/res/OplusThemeResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    .line 130
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    invoke-virtual {v0}, Landroid/content/res/OplusThemeResources;->hasDrawables()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Landroid/content/res/OplusThemeResourcesSystem;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    .line 134
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    invoke-virtual {v0}, Landroid/content/res/OplusThemeResourcesSystem;->hasDrawables()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    .line 136
    :cond_1
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/content/res/OplusAccessibleResources;->hasValues()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    .line 138
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    invoke-virtual {v0}, Landroid/content/res/OplusAccessibleResources;->hasDrawables()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    .line 140
    :cond_2
    return-void
.end method

.method public blacklist initThemeResource(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oplus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWritesMask()I

    move-result v0

    .line 420
    .local v0, "tempMask":I
    :try_start_0
    invoke-static {p0, p1}, Landroid/content/res/OplusThemeResourcesPackage;->getThemeResources(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Landroid/content/res/OplusThemeResourcesPackage;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    .line 421
    invoke-static {p0, p1}, Landroid/content/res/OplusAccessibleResources;->getAccessResources(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Landroid/content/res/OplusAccessibleResources;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 424
    goto :goto_1

    .line 423
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 424
    throw v1

    .line 416
    .end local v0    # "tempMask":I
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/content/res/OplusThemeResources;->getSystem(Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusThemeResourcesSystem;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    .line 426
    :goto_1
    return-void
.end method

.method public blacklist isHasDrawables()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public declared-synchronized blacklist loadIcon(Landroid/content/res/Resources;ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "useWrap"    # Z

    monitor-enter p0

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 237
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 238
    .local v2, "value":Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p2, v2, v3}, Landroid/content/res/ResourcesImplExt;->getValue(ILandroid/util/TypedValue;Z)V

    .line 239
    iget-object v4, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 240
    if-eqz p3, :cond_0

    .line 241
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "temp":Ljava/lang/String;
    invoke-virtual {v1, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 244
    .end local v3    # "temp":Ljava/lang/String;
    .end local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_0
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mSkipIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 245
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mIconThemeResources:Landroid/content/res/OplusThemeResourcesPackage;

    if-nez v3, :cond_1

    .line 246
    const-string v3, "icons"

    invoke-static {p0, v3}, Landroid/content/res/OplusThemeResourcesPackage;->getThemeResources(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Landroid/content/res/OplusThemeResourcesPackage;

    move-result-object v3

    iput-object v3, p0, Landroid/content/res/ResourcesImplExt;->mIconThemeResources:Landroid/content/res/OplusThemeResourcesPackage;

    .line 248
    :cond_1
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mIconThemeResources:Landroid/content/res/OplusThemeResourcesPackage;

    invoke-virtual {v3, v1, p4}, Landroid/content/res/OplusThemeResourcesPackage;->getIconFileStream(Ljava/lang/String;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v3

    .line 249
    .local v3, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    if-nez v3, :cond_2

    .line 250
    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mSkipIcons:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    const/4 v4, 0x0

    monitor-exit p0

    return-object v4

    .line 254
    :cond_2
    if-eqz v3, :cond_5

    .line 255
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 256
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iget v5, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mDensity:I

    if-nez v5, :cond_3

    .line 257
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    .line 259
    :cond_3
    iget v5, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 261
    :goto_0
    iget-object v5, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 262
    .local v5, "input":Ljava/io/InputStream;
    invoke-static {p1, v2, v5, v1, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_3

    .line 266
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    .line 267
    if-eqz v3, :cond_4

    .line 268
    :try_start_2
    iget-object v5, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 270
    :catch_0
    move-exception v5

    goto :goto_2

    .line 271
    :cond_4
    :goto_1
    nop

    .line 272
    :goto_2
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 264
    :catch_1
    move-exception v4

    .line 267
    if-eqz v3, :cond_6

    .line 268
    :try_start_4
    iget-object v4, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_4

    .line 267
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 268
    iget-object v4, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 270
    :catch_2
    move-exception v4

    .line 272
    nop

    .line 274
    .end local v3    # "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    :cond_6
    :goto_4
    monitor-exit p0

    return-object v0

    .line 234
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "value":Landroid/util/TypedValue;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "id":I
    .end local p3    # "str":Ljava/lang/String;
    .end local p4    # "useWrap":Z
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist loadOverlayDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "wrapper"    # Landroid/content/res/Resources;
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "id"    # I

    monitor-enter p0

    .line 148
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 149
    monitor-exit p0

    return-object v1

    .line 151
    .end local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_0
    :try_start_1
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_1

    .line 153
    monitor-exit p0

    return-object v1

    .line 155
    .restart local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_1
    const/4 v2, 0x0

    .line 156
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_2
    iget-object v3, p0, Landroid/content/res/ResourcesImplExt;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_9

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget v5, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v5, p3}, Landroid/content/res/ResourcesImplExt;->getCookieType(II)I

    move-result v5

    .line 160
    .local v5, "cookieId":I
    iget-boolean v6, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-eqz v6, :cond_2

    .line 161
    invoke-virtual {v6, v5, v0}, Landroid/content/res/OplusThemeResources;->getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v6

    move-object v3, v6

    .line 163
    .end local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_2
    iget-boolean v6, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    if-eqz v6, :cond_3

    if-nez v3, :cond_3

    iget-object v6, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    if-eqz v6, :cond_3

    const/4 v7, 0x3

    if-ge v5, v7, :cond_3

    .line 164
    invoke-virtual {v6, v5, v0}, Landroid/content/res/OplusThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v6

    move-object v3, v6

    .line 166
    :cond_3
    iget-boolean v6, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    if-eqz v6, :cond_4

    if-nez v3, :cond_4

    iget-object v6, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    if-eqz v6, :cond_4

    .line 167
    invoke-virtual {v6, v5, v0}, Landroid/content/res/OplusAccessibleResources;->getAccessibleStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v6

    move-object v3, v6

    .line 169
    :cond_4
    if-nez v3, :cond_5

    .line 170
    iget-object v6, p0, Landroid/content/res/ResourcesImplExt;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 171
    monitor-exit p0

    return-object v1

    .line 174
    :cond_5
    :try_start_3
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iget v6, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mDensity:I

    if-nez v6, :cond_6

    .line 176
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_0

    .line 178
    :cond_6
    iget v6, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mDensity:I

    iput v6, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 180
    :goto_0
    iget-object v6, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    .line 181
    .local v6, "input":Ljava/io/InputStream;
    invoke-static {p1, p2, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    .line 186
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "input":Ljava/io/InputStream;
    if-eqz v3, :cond_7

    .line 187
    :try_start_4
    iget-object v1, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    .line 191
    goto :goto_5

    .line 190
    :cond_7
    :goto_1
    goto :goto_5

    .line 185
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 182
    :catch_1
    move-exception v1

    .line 183
    .local v1, "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v6, "ResourcesImplExt"

    const-string v7, "out of memory !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    .end local v1    # "localOutOfMemoryError":Ljava/lang/OutOfMemoryError;
    if-eqz v3, :cond_7

    .line 187
    :try_start_6
    iget-object v1, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 186
    :goto_2
    if-eqz v3, :cond_8

    .line 187
    :try_start_7
    iget-object v4, v3, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 189
    :catch_2
    move-exception v4

    goto :goto_4

    .line 190
    :cond_8
    :goto_3
    nop

    .line 191
    :goto_4
    :try_start_8
    throw v1

    .line 194
    .end local v3    # "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .end local v5    # "cookieId":I
    :cond_9
    :goto_5
    if-eqz v2, :cond_a

    .line 195
    iget-object v1, p0, Landroid/content/res/ResourcesImplExt;->mLoadArrary:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p3, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 197
    :cond_a
    monitor-exit p0

    return-object v2

    .line 147
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p1    # "wrapper":Landroid/content/res/Resources;
    .end local p2    # "value":Landroid/util/TypedValue;
    .end local p3    # "id":I
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist openThemeRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 6
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    if-eqz v0, :cond_1

    .end local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_0
    iget-object v0, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 280
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 281
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 283
    .restart local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_2
    const/4 v0, 0x0

    .line 284
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    const/4 v1, 0x0

    .line 285
    .local v1, "input":Ljava/io/InputStream;
    :try_start_1
    iget-object v2, p0, Landroid/content/res/ResourcesImplExt;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 286
    iget-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "path":Ljava/lang/String;
    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {p0, v3, p1}, Landroid/content/res/ResourcesImplExt;->getCookieType(II)I

    move-result v3

    .line 288
    .local v3, "cookieId":I
    iget-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasDrawables:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mThemeResources:Landroid/content/res/OplusThemeResources;

    if-eqz v4, :cond_3

    .line 289
    invoke-virtual {v4, v3, v2}, Landroid/content/res/OplusThemeResources;->getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v4

    move-object v0, v4

    .line 291
    .end local p0    # "this":Landroid/content/res/ResourcesImplExt;
    :cond_3
    iget-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemDrawables:Z

    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mSystemThemeResources:Landroid/content/res/OplusThemeResourcesSystem;

    if-eqz v4, :cond_4

    const/4 v5, 0x3

    if-ge v3, v5, :cond_4

    .line 292
    invoke-virtual {v4, v3, v2}, Landroid/content/res/OplusThemeResourcesSystem;->getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v4

    move-object v0, v4

    .line 294
    :cond_4
    iget-boolean v4, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessDrawables:Z

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mAccessibleResources:Landroid/content/res/OplusAccessibleResources;

    if-eqz v4, :cond_5

    .line 295
    invoke-virtual {v4, v3, v2}, Landroid/content/res/OplusAccessibleResources;->getAccessibleStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v4

    move-object v0, v4

    .line 297
    :cond_5
    if-eqz v0, :cond_6

    .line 298
    iget-object v4, v0, Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;->mInput:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 299
    monitor-exit p0

    return-object v1

    .line 301
    :cond_6
    :try_start_2
    iget-object v4, p0, Landroid/content/res/ResourcesImplExt;->mSkipFiles:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 303
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "cookieId":I
    :cond_7
    monitor-exit p0

    return-object v1

    .line 278
    .end local v0    # "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .end local v1    # "input":Ljava/io/InputStream;
    .end local p1    # "id":I
    .end local p2    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist replaceTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 8
    .param p1, "typedarray"    # Landroid/content/res/TypedArray;

    .line 201
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasValues:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasAcessValues:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsHasSystemValues:Z

    if-eqz v0, :cond_5

    .line 202
    :cond_0
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .line 203
    .local v0, "ai":[I
    iget-object v1, p1, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->assetCookie:I

    .line 204
    .local v1, "cookie":I
    const/4 v2, 0x0

    .line 205
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 206
    add-int/lit8 v3, v2, 0x0

    aget v3, v0, v3

    .line 207
    .local v3, "type":I
    add-int/lit8 v4, v2, 0x3

    aget v4, v0, v4

    .line 208
    .local v4, "id":I
    const/16 v5, 0x10

    const/16 v6, 0x1f

    if-lt v3, v5, :cond_1

    if-le v3, v6, :cond_2

    :cond_1
    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    .line 210
    :cond_2
    invoke-direct {p0, v4, v1}, Landroid/content/res/ResourcesImplExt;->getThemeInt(II)Ljava/lang/Integer;

    move-result-object v5

    .line 211
    .local v5, "res":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 212
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v6

    goto :goto_1

    .line 213
    :cond_3
    const/16 v7, 0x1c

    if-lt v3, v7, :cond_4

    if-gt v3, v6, :cond_4

    .line 214
    invoke-direct {p0, v4, v1}, Landroid/content/res/ResourcesImplExt;->getColorValue(II)Ljava/lang/Integer;

    move-result-object v5

    .line 215
    if-eqz v5, :cond_4

    .line 216
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v0, v6

    .line 220
    .end local v5    # "res":Ljava/lang/Integer;
    :cond_4
    :goto_1
    nop

    .end local v3    # "type":I
    .end local v4    # "id":I
    add-int/lit8 v2, v2, 0x7

    .line 221
    goto :goto_0

    .line 223
    .end local v0    # "ai":[I
    .end local v1    # "cookie":I
    .end local v2    # "i":I
    :cond_5
    return-object p1
.end method

.method public blacklist setIsAppConfig(Z)V
    .locals 0
    .param p1, "isAppConfig"    # Z

    .line 638
    iput-boolean p1, p0, Landroid/content/res/ResourcesImplExt;->mIsAppConfig:Z

    .line 639
    return-void
.end method

.method public blacklist setIsThemeChanged(Z)V
    .locals 0
    .param p1, "changed"    # Z

    .line 227
    iput-boolean p1, p0, Landroid/content/res/ResourcesImplExt;->mThemeChanged:Z

    .line 228
    return-void
.end method

.method public blacklist updateCompactWindowAdjustments(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;)V
    .locals 2
    .param p1, "oldOverrideConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "newOverrideConfig"    # Landroid/content/res/OplusBaseConfiguration;

    .line 578
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    const/16 v1, 0x78

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 579
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 580
    :cond_0
    invoke-static {p2}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 581
    :cond_1
    new-instance v0, Landroid/view/DisplayAdjustments;

    invoke-direct {v0, p2}, Landroid/view/DisplayAdjustments;-><init>(Landroid/content/res/OplusBaseConfiguration;)V

    iput-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    goto :goto_0

    .line 585
    :cond_2
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    iget-object v0, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 587
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 588
    invoke-static {p2}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 592
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    goto :goto_0

    .line 593
    :cond_4
    iget-boolean v0, p0, Landroid/content/res/ResourcesImplExt;->mIsAppConfig:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    if-eqz v0, :cond_5

    iget-object v0, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 594
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_6

    .line 595
    :cond_5
    invoke-static {p2}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 596
    :cond_6
    iget-object v0, p0, Landroid/content/res/ResourcesImplExt;->mCompactWindowAdjustments:Landroid/view/DisplayAdjustments;

    invoke-virtual {v0, p2}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/OplusBaseConfiguration;)V

    .line 601
    :cond_7
    :goto_0
    return-void
.end method

.method public blacklist updateExConfiguration(Landroid/content/res/ResourcesImpl;Landroid/content/res/OplusBaseConfiguration;)I
    .locals 2
    .param p1, "resources"    # Landroid/content/res/ResourcesImpl;
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;

    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "diff":I
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    .line 353
    .local v1, "oldConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 354
    invoke-virtual {v1, p2}, Landroid/content/res/OplusBaseConfiguration;->diff(Landroid/content/res/OplusBaseConfiguration;)I

    move-result v0

    .line 357
    .end local v1    # "oldConfig":Landroid/content/res/OplusBaseConfiguration;
    :cond_0
    return v0
.end method
