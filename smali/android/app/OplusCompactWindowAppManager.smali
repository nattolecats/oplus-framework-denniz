.class public Landroid/app/OplusCompactWindowAppManager;
.super Ljava/lang/Object;
.source "OplusCompactWindowAppManager.java"

# interfaces
.implements Landroid/app/IOplusCompactWindowAppManager;


# static fields
.field private static final blacklist BLACK_PACKAGES_FOR_COMPACT_WINDOW_ADJUSTMENT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist BLACK_SENSOR_EVENT_PACKAGES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CUSTOM_UI_MODE_FOLLOW_SYSTEM:I = 0x2

.field private static final blacklist CUSTOM_UI_MODE_KEY:Ljava/lang/String; = "@int:customUIMode"

.field private static final blacklist DEBUG:Ljava/lang/Boolean;

.field private static final blacklist DEBUG_COMPACT_CONFIG:Z

.field private static final blacklist PADDING:I = 0x1

.field private static final blacklist SW_DP_THRESHOLD_FOR_COMPACT_WINDOW:I = 0x226

.field private static final blacklist TAG:Ljava/lang/String; = "CompactWindowAppManager"

.field private static final blacklist WE_CHAT_PKG:Ljava/lang/String; = "com.tencent.mm"

.field private static volatile blacklist sInstance:Landroid/app/OplusCompactWindowAppManager;

.field private static blacklist sIsTablet:Ljava/lang/Boolean;

.field private static blacklist sSupportCompactWindow:Ljava/lang/Boolean;


# instance fields
.field private blacklist mCompactModeFlag:I

.field private blacklist mIsBlockPackageForCompactWindow:Ljava/lang/Boolean;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 10

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Landroid/app/OplusCompactWindowAppManager;->DEBUG:Ljava/lang/Boolean;

    .line 54
    const-string v1, "persist.sys.debug.compactwindow.config"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/OplusCompactWindowAppManager;->DEBUG_COMPACT_CONFIG:Z

    .line 58
    const-string v0, "com.qiyi.video"

    const-string v1, "tv.danmaku.bili"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->BLACK_SENSOR_EVENT_PACKAGES:Ljava/util/Set;

    .line 63
    const-string v1, "com.android.launcher"

    const-string v2, "com.oplus.screenrecorder"

    const-string v3, "com.coloros.screenrecorder"

    const-string v4, "com.oplus.uxdesign"

    const-string v5, "android"

    const-string v6, "com.oplus.camera"

    const-string v7, "com.android.systemui"

    const-string v8, "com.dreamtee.apkfure"

    const-string v9, "com.android.permissioncontroller"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->BLACK_PACKAGES_FOR_COMPACT_WINDOW_ADJUSTMENT:Ljava/util/Set;

    .line 75
    const/4 v0, 0x0

    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->sIsTablet:Ljava/lang/Boolean;

    .line 76
    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->sSupportCompactWindow:Ljava/lang/Boolean;

    .line 78
    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->sInstance:Landroid/app/OplusCompactWindowAppManager;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/OplusCompactWindowAppManager;->mIsBlockPackageForCompactWindow:Ljava/lang/Boolean;

    .line 95
    return-void
.end method

.method private blacklist adjustBoundsWidth(Landroid/graphics/Rect;II)V
    .locals 1
    .param p1, "appbounds"    # Landroid/graphics/Rect;
    .param p2, "width"    # I
    .param p3, "maxBounds"    # I

    .line 327
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 328
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-le v0, p3, :cond_0

    .line 329
    iput p3, p1, Landroid/graphics/Rect;->right:I

    .line 331
    :cond_0
    return-void
.end method

.method private blacklist blackPackageForCompactWindowAdjustment()Z
    .locals 2

    .line 185
    iget-object v0, p0, Landroid/app/OplusCompactWindowAppManager;->mIsBlockPackageForCompactWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "appName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    sget-object v1, Landroid/app/OplusCompactWindowAppManager;->BLACK_PACKAGES_FOR_COMPACT_WINDOW_ADJUSTMENT:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/app/OplusCompactWindowAppManager;->mIsBlockPackageForCompactWindow:Ljava/lang/Boolean;

    .line 191
    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/app/OplusCompactWindowAppManager;->mIsBlockPackageForCompactWindow:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist checkProcess()Z
    .locals 4

    .line 334
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 335
    .local v0, "app":Landroid/app/Application;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 336
    return v1

    .line 339
    :cond_0
    sget-object v2, Landroid/app/OplusCompactWindowAppManager;->BLACK_PACKAGES_FOR_COMPACT_WINDOW_ADJUSTMENT:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    return v1

    .line 342
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static blacklist getInstance()Landroid/app/OplusCompactWindowAppManager;
    .locals 2

    .line 84
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->sInstance:Landroid/app/OplusCompactWindowAppManager;

    if-nez v0, :cond_1

    .line 85
    const-class v0, Landroid/app/OplusCompactWindowAppManager;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Landroid/app/OplusCompactWindowAppManager;->sInstance:Landroid/app/OplusCompactWindowAppManager;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Landroid/app/OplusCompactWindowAppManager;

    invoke-direct {v1}, Landroid/app/OplusCompactWindowAppManager;-><init>()V

    sput-object v1, Landroid/app/OplusCompactWindowAppManager;->sInstance:Landroid/app/OplusCompactWindowAppManager;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 91
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->sInstance:Landroid/app/OplusCompactWindowAppManager;

    return-object v0
.end method

.method private blacklist isTablet()Z
    .locals 2

    .line 98
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->sIsTablet:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->sIsTablet:Ljava/lang/Boolean;

    .line 101
    :cond_0
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->sIsTablet:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private blacklist supportCompactWindow()Z
    .locals 2

    .line 252
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->sSupportCompactWindow:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 253
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.windowmode.compact"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/app/OplusCompactWindowAppManager;->sSupportCompactWindow:Ljava/lang/Boolean;

    .line 255
    :cond_0
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->sSupportCompactWindow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist blockOrientationSensorEventInCompactWindowMode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sensorType"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    const/16 v3, 0x78

    if-eq v2, v3, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    if-eq p2, v1, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    .line 112
    .local v2, "condition":Z
    :goto_0
    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->isTablet()Z

    move-result v3

    const-string v4, "; type = "

    const-string v5, "Block orientation sensor event in parallelwindow of package :"

    const-string v6, "CompactWindowAppManager"

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    sget-object v3, Landroid/app/OplusCompactWindowAppManager;->BLACK_SENSOR_EVENT_PACKAGES:Ljava/util/Set;

    invoke-interface {v3, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 113
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    return v1

    .line 118
    :cond_4
    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    iget v3, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    invoke-static {v3}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isBlockSensor(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    if-eq v3, v1, :cond_5

    iget v3, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    .line 120
    invoke-static {v3}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isForceBlock(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 121
    :cond_5
    sget-object v0, Landroid/app/OplusCompactWindowAppManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_6
    return v1

    .line 126
    :cond_7
    return v0
.end method

.method public blacklist canOverrideConfig(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;)Z
    .locals 3
    .param p1, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "mOverrideConfiguration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 260
    sget-boolean v0, Landroid/app/OplusCompactWindowAppManager;->DEBUG_COMPACT_CONFIG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 261
    return v1

    .line 263
    :cond_0
    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->checkProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    return v1

    .line 266
    :cond_1
    if-eqz p1, :cond_4

    if-nez p2, :cond_2

    goto :goto_0

    .line 270
    :cond_2
    iget-object v0, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_3

    iget-object v0, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 271
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 272
    const/4 v0, 0x1

    return v0

    .line 274
    :cond_3
    return v1

    .line 267
    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 178
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->blackPackageForCompactWindowAdjustment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getCompactWindowAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    return-object v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCompactWindowMetrics(Landroid/content/res/ResourcesImpl;Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 6
    .param p1, "resImpl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "originMetrics"    # Landroid/util/DisplayMetrics;

    .line 130
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 131
    iget-object v1, p1, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v1}, Landroid/content/res/IResourcesImplExt;->getCompactWindowAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    .line 132
    .local v1, "adjustments":Landroid/view/DisplayAdjustments;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->blackPackageForCompactWindowAdjustment()Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v2, "adjustMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, p2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 135
    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 136
    .local v3, "widthrect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 137
    .local v4, "heightrect":Landroid/graphics/Rect;
    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 141
    .local v0, "width":I
    iput v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 142
    iput v0, v2, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 143
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 144
    .local v5, "height":I
    iput v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 145
    iput v5, v2, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 146
    return-object v2

    .line 138
    .end local v0    # "width":I
    .end local v5    # "height":I
    :cond_1
    :goto_0
    return-object v0

    .line 149
    .end local v1    # "adjustments":Landroid/view/DisplayAdjustments;
    .end local v2    # "adjustMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "widthrect":Landroid/graphics/Rect;
    .end local v4    # "heightrect":Landroid/graphics/Rect;
    :cond_2
    return-object v0
.end method

.method public blacklist getCompactWindowRotation(Landroid/content/res/Resources;)I
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 195
    invoke-virtual {p0, p1}, Landroid/app/OplusCompactWindowAppManager;->getCompactWindowDisplayAdjustment(Landroid/content/res/Resources;)Landroid/view/DisplayAdjustments;

    move-result-object v0

    .line 196
    .local v0, "compactWindowAdjustment":Landroid/view/DisplayAdjustments;
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 200
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    invoke-static {v1}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isForceBlock(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    iget v1, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    invoke-static {v1}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getBlockDisplayRotation(I)I

    move-result v1

    return v1

    .line 205
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist initCompactApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 210
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    .line 211
    .local v0, "appInfoExt":Landroid/content/pm/IApplicationInfoExt;
    :goto_0
    const-string v1, "CompactWindowAppManager"

    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getCompatModeFlag()I

    move-result v2

    iput v2, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    .line 213
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;

    move-result-object v2

    iget v3, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->initmCompactModeFlag(ILjava/lang/String;)V

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCompactApplicationInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/app/OplusCompactWindowAppManager;->mCompactModeFlag:I

    invoke-static {v3}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->flagToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 216
    :cond_1
    const-string v2, "initCompactApplicationInfo error"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_1
    return-void
.end method

.method public blacklist setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;)V
    .locals 1
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "oldOverrideConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "newOverrideConfig"    # Landroid/content/res/OplusBaseConfiguration;

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object v0, p1, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0, p2, p3}, Landroid/content/res/IResourcesImplExt;->updateCompactWindowAdjustments(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;)V

    .line 175
    :cond_0
    return-void
.end method

.method public blacklist updateAppBoundsForComapctWindowIfNeed(Landroid/content/res/OplusBaseConfiguration;Landroid/util/DisplayMetrics;Z)V
    .locals 6
    .param p1, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "forceUpdateConfig"    # Z

    .line 279
    sget-boolean v0, Landroid/app/OplusCompactWindowAppManager;->DEBUG_COMPACT_CONFIG:Z

    if-eqz v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isModeBuying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->checkProcess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    return-void

    .line 288
    :cond_2
    if-eqz p1, :cond_f

    if-nez p2, :cond_3

    goto/16 :goto_3

    .line 291
    :cond_3
    const/16 v0, 0x78

    if-eqz p3, :cond_4

    .line 292
    iget-object v1, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 294
    :cond_4
    iget-object v1, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    if-eq v1, v0, :cond_5

    .line 295
    return-void

    .line 297
    :cond_5
    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_6

    .line 298
    return-void

    .line 300
    :cond_6
    iget-object v0, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 301
    .local v0, "maxBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-gtz v1, :cond_7

    goto :goto_2

    .line 304
    :cond_7
    iget v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    .line 305
    .local v1, "width":I
    add-int/lit8 v1, v1, -0x1

    .line 306
    iget-object v2, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 307
    .local v2, "appbounds":Landroid/graphics/Rect;
    iget-object v3, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 309
    .local v3, "bounds":Landroid/graphics/Rect;
    if-eqz v2, :cond_d

    if-nez v3, :cond_8

    goto :goto_1

    .line 312
    :cond_8
    if-lez v1, :cond_c

    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ge v4, v5, :cond_9

    goto :goto_0

    .line 315
    :cond_9
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget v5, p2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    const v5, 0x44098000    # 550.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_a

    .line 316
    return-void

    .line 318
    :cond_a
    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v2, v1, v4}, Landroid/app/OplusCompactWindowAppManager;->adjustBoundsWidth(Landroid/graphics/Rect;II)V

    .line 319
    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v3, v1, v4}, Landroid/app/OplusCompactWindowAppManager;->adjustBoundsWidth(Landroid/graphics/Rect;II)V

    .line 320
    iget v4, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v0, v1, v4}, Landroid/app/OplusCompactWindowAppManager;->adjustBoundsWidth(Landroid/graphics/Rect;II)V

    .line 321
    sget-object v4, Landroid/app/OplusCompactWindowAppManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAppBoundsForComapctWindowIfNeed adjusted width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CompactWindowAppManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_b
    return-void

    .line 313
    :cond_c
    :goto_0
    return-void

    .line 310
    :cond_d
    :goto_1
    return-void

    .line 302
    .end local v1    # "width":I
    .end local v2    # "appbounds":Landroid/graphics/Rect;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_e
    :goto_2
    return-void

    .line 289
    .end local v0    # "maxBounds":Landroid/graphics/Rect;
    :cond_f
    :goto_3
    return-void
.end method

.method public blacklist updateCompactWindowConfigToApplicationResourcesImpl(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/ResourcesImpl;)V
    .locals 4
    .param p1, "activityThreadConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz p2, :cond_0

    .line 156
    iget-object v1, p2, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v1}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    .line 157
    iget-object v1, p2, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/content/res/IResourcesImplExt;->setIsAppConfig(Z)V

    .line 159
    :cond_0
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 160
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_1

    .line 161
    invoke-static {p1}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    :cond_1
    new-instance v1, Landroid/content/res/OplusBaseConfiguration;

    invoke-direct {v1, v0}, Landroid/content/res/OplusBaseConfiguration;-><init>(Landroid/content/res/OplusBaseConfiguration;)V

    .line 163
    .local v1, "temp":Landroid/content/res/OplusBaseConfiguration;
    iget-object v2, v1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 164
    iget-object v2, v1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCompactWindowConfigToApplicationResourcesImpl temp ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompactWindowAppManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v2}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/OplusBaseConfiguration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 168
    .end local v1    # "temp":Landroid/content/res/OplusBaseConfiguration;
    :cond_2
    return-void
.end method

.method public blacklist updateCustomDarkModeForWechat(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/ResourcesImpl;Ljava/lang/String;)V
    .locals 6
    .param p1, "targetConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "threadConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "targetImpl"    # Landroid/content/res/ResourcesImpl;
    .param p4, "currentProcessName"    # Ljava/lang/String;

    .line 226
    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/app/OplusCompactWindowAppManager;->supportCompactWindow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    iget-object v0, p3, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    .line 228
    .local v0, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v0, :cond_3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 229
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 231
    .local v1, "currentUser":I
    iget v2, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x10

    const/16 v4, 0x20

    if-ne v2, v4, :cond_0

    iget v2, p2, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-ne v2, v3, :cond_0

    iget v2, p1, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v2, v3, :cond_1

    :cond_0
    iget v2, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-ne v2, v3, :cond_2

    iget v2, p2, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-ne v2, v4, :cond_2

    iget v2, p1, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-ne v2, v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 240
    .local v2, "shouldModifyConfig":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 241
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "@int:customUIMode"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 243
    .local v3, "uiModeSetting":I
    if-eq v3, v5, :cond_3

    const/4 v4, 0x2

    if-eq v4, v3, :cond_3

    .line 244
    iget v4, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    iput v4, p1, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    .line 249
    .end local v0    # "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    .end local v1    # "currentUser":I
    .end local v2    # "shouldModifyConfig":Z
    .end local v3    # "uiModeSetting":I
    :cond_3
    return-void
.end method
