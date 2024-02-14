.class public Landroid/view/OplusSystemUINavigationGestureExtImpl;
.super Ljava/lang/Object;
.source "OplusSystemUINavigationGestureExtImpl.java"

# interfaces
.implements Landroid/view/IOplusSystemUINavigationGestureExt;


# static fields
.field private static final blacklist SIDEBAR_SCENE_REGION:Ljava/lang/String; = "sidebar_scene_region"

.field private static final blacklist SMART_SIDEBAR_REGION_STR_LENGTH:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "OplusSystemUINavigationGestureExtImpl"


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mContentObserver:Landroid/database/ContentObserver;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsRegisting:Z

.field private blacklist mSideBarSceneRegion:Landroid/graphics/Region;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mupdateSideBarSceneRegion(Landroid/view/OplusSystemUINavigationGestureExtImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/OplusSystemUINavigationGestureExtImpl;->updateSideBarSceneRegion()V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mSideBarSceneRegion:Landroid/graphics/Region;

    .line 31
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->DEBUG:Z

    .line 32
    iput-boolean v1, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mIsRegisting:Z

    return-void
.end method

.method private blacklist updateSideBarSceneRegion()V
    .locals 8

    .line 68
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    const-string v1, "sidebar_scene_region"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "regionString":Ljava/lang/String;
    const-string v1, "OplusSystemUINavigationGestureExtImpl"

    if-eqz v0, :cond_2

    .line 71
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "parts":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 73
    const-string v3, "parts length != 4"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 77
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mSideBarSceneRegion:Landroid/graphics/Region;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    .line 79
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v2, v6

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    aget-object v7, v2, v7

    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 77
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 82
    iget-boolean v3, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSideBarSceneRegion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mSideBarSceneRegion:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_1
    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse integers"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    goto :goto_1

    .line 89
    :cond_2
    const-string v2, "regionString = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist getSmartSideBarRegion()Landroid/graphics/Region;
    .locals 1

    .line 64
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mSideBarSceneRegion:Landroid/graphics/Region;

    return-object v0
.end method

.method public whitelist registerSmartSideBarRegion(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mIsRegisting:Z

    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    iput-object p1, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContext:Landroid/content/Context;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mIsRegisting:Z

    .line 42
    new-instance v0, Landroid/view/OplusSystemUINavigationGestureExtImpl$1;

    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/OplusSystemUINavigationGestureExtImpl$1;-><init>(Landroid/view/OplusSystemUINavigationGestureExtImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 48
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    const-string v1, "sidebar_scene_region"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContentObserver:Landroid/database/ContentObserver;

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 51
    invoke-direct {p0}, Landroid/view/OplusSystemUINavigationGestureExtImpl;->updateSideBarSceneRegion()V

    .line 52
    return-void
.end method

.method public whitelist unregisterSmartSideBarRegion()V
    .locals 2

    .line 56
    iget-boolean v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mIsRegisting:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mIsRegisting:Z

    .line 58
    iget-object v0, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/view/OplusSystemUINavigationGestureExtImpl;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 60
    :cond_0
    return-void
.end method
