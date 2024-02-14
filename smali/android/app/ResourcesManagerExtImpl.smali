.class public Landroid/app/ResourcesManagerExtImpl;
.super Ljava/lang/Object;
.source "ResourcesManagerExtImpl.java"

# interfaces
.implements Landroid/app/IResourcesManagerExt;


# static fields
.field private static final blacklist CLOCK_RES_PATH:Ljava/lang/String; = "com.coloros.alarmclock"

.field private static final blacklist CONFIG_CHECK_APPS:Ljava/util/HashSet;

.field private static final blacklist NAVIGATION_OVERLAY:Ljava/lang/String; = "/product/overlay/NavigationBarMode3Button/NavigationBarMode3ButtonOverlay.apk"

.field private static final blacklist SYSTEM_RES_PATH:Ljava/lang/String; = "/system/framework/framework-res.apk"

.field private static final blacklist TAG:Ljava/lang/String; = "ResourcesManagerExtImpl"


# instance fields
.field private blacklist mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 55
    const-string v0, "com.coloros.alarmclock"

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.systemui"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Landroid/app/ResourcesManagerExtImpl;->CONFIG_CHECK_APPS:Ljava/util/HashSet;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v0, p1

    check-cast v0, Landroid/app/ResourcesManager;

    iput-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 67
    sget-object v0, Landroid/app/IOplusCompactWindowAppManager;->DEFAULT:Landroid/app/IOplusCompactWindowAppManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCompactWindowAppManager;

    iput-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    .line 68
    return-void
.end method

.method private blacklist getOplusAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;
    .locals 2

    .line 186
    sget-object v0, Landroid/view/autolayout/IOplusAutoLayoutManager;->mDefault:Landroid/view/autolayout/IOplusAutoLayoutManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/view/autolayout/IOplusAutoLayoutManager;

    return-object v0
.end method

.method public static blacklist inOplusCompatMode(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 130
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    .line 131
    .local v0, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    if-eqz v2, :cond_1

    .line 132
    iget-object v2, v0, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    invoke-virtual {v2}, Loplus/content/res/OplusExtraConfiguration;->getFlag()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 134
    :cond_1
    return v1
.end method

.method static synthetic blacklist lambda$canUseOverlayConfiguration$0(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 156
    const-string v0, "/product/overlay/NavigationBarMode3Button/NavigationBarMode3ButtonOverlay.apk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist applyConfigurationToResources(Landroid/content/res/Configuration;I)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "change"    # I

    .line 98
    sget-object v0, Landroid/app/IOplusCommonInjector;->DEFAULT:Landroid/app/IOplusCommonInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCommonInjector;

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusCommonInjector;->applyConfigurationToResourcesForResourcesManager(Landroid/content/res/Configuration;I)V

    .line 99
    return-void
.end method

.method public blacklist canOverrideConfig(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "mOverrideConfiguration"    # Landroid/content/res/Configuration;

    .line 193
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusCompactWindowAppManager;->canOverrideConfig(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist canUseOverlayConfiguration(Landroid/content/res/ResourcesKey;Landroid/content/res/Configuration;)Z
    .locals 9
    .param p1, "resourcesKey"    # Landroid/content/res/ResourcesKey;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .line 140
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    const-string v1, "com.coloros.alarmclock"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    :cond_1
    return v2

    .line 144
    :cond_2
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 145
    .local v0, "overlayConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    .line 146
    .local v3, "diff":I
    iget-object v4, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    const-string v5, "/system/framework/framework-res.apk"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    .line 147
    and-int/lit16 v4, v3, 0x1000

    if-nez v4, :cond_3

    .line 148
    return v2

    .line 150
    :cond_3
    iget-object v4, p1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-nez v4, :cond_4

    .line 151
    return v5

    .line 153
    :cond_4
    iput v5, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 154
    iget-object v4, p1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 155
    .local v4, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Landroid/app/ResourcesManagerExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroid/app/ResourcesManagerExtImpl$$ExternalSyntheticLambda0;-><init>()V

    .line 156
    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 157
    :cond_5
    return v5

    .line 162
    .end local v4    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    :cond_6
    iget-object v4, p1, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    and-int/lit8 v1, v3, 0x4

    if-eqz v1, :cond_7

    .line 163
    iget-object v1, p0, Landroid/app/ResourcesManagerExtImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 164
    .local v1, "appLocale":Landroid/os/LocaleList;
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 165
    .local v4, "configLocale":Landroid/os/LocaleList;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 166
    .local v6, "overrideLocale":Landroid/os/LocaleList;
    invoke-virtual {v6}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 167
    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 168
    invoke-virtual {v6}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 169
    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v4, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 170
    invoke-virtual {v6, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v1, v5}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 171
    return v5

    .line 175
    .end local v1    # "appLocale":Landroid/os/LocaleList;
    .end local v4    # "configLocale":Landroid/os/LocaleList;
    .end local v6    # "overrideLocale":Landroid/os/LocaleList;
    :cond_7
    return v2
.end method

.method public blacklist forceUpdateAppContextResource(Landroid/app/Application;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 9
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 216
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 217
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    sget-object v1, Landroid/app/ResourcesManagerExtImpl;->CONFIG_CHECK_APPS:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 221
    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 222
    .local v1, "oldWindowMode":I
    iget-object v2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    .line 223
    .local v2, "newWindowMode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-nez v1, :cond_5

    :cond_1
    if-eq v2, v3, :cond_2

    if-nez v2, :cond_5

    .line 225
    :cond_2
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v3

    .line 226
    .local v3, "diff":I
    if-nez v3, :cond_3

    .line 227
    return-void

    .line 229
    :cond_3
    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v4

    .line 230
    .local v4, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v4}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v5

    .line 231
    .local v5, "daj":Landroid/view/DisplayAdjustments;
    if-eqz p3, :cond_4

    .line 232
    new-instance v6, Landroid/view/DisplayAdjustments;

    invoke-direct {v6, v5}, Landroid/view/DisplayAdjustments;-><init>(Landroid/view/DisplayAdjustments;)V

    move-object v5, v6

    .line 233
    invoke-virtual {v5, p3}, Landroid/view/DisplayAdjustments;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 235
    :cond_4
    invoke-virtual {v5, p2}, Landroid/view/DisplayAdjustments;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 236
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Application;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/app/ResourcesManager;->getDisplayMetrics(ILandroid/view/DisplayAdjustments;)Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 237
    .local v6, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v4, p2, v6, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not found in map, forceUpdateAppContextResource appContexImp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 239
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", displayid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 240
    invoke-virtual {p1}, Landroid/app/Application;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 238
    const-string v8, "ResourcesManagerExtImpl"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v3    # "diff":I
    .end local v4    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v5    # "daj":Landroid/view/DisplayAdjustments;
    .end local v6    # "dm":Landroid/util/DisplayMetrics;
    :cond_5
    return-void

    .line 218
    .end local v1    # "oldWindowMode":I
    .end local v2    # "newWindowMode":I
    :cond_6
    :goto_0
    return-void
.end method

.method public blacklist getApplicationContextResImpl()Landroid/content/res/ResourcesImpl;
    .locals 3

    .line 208
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 209
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 210
    .local v1, "isVaildRes":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public blacklist hookGetDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 1
    .param p1, "originalDisplayMetrics"    # Landroid/util/DisplayMetrics;

    .line 182
    invoke-direct {p0}, Landroid/app/ResourcesManagerExtImpl;->getOplusAutoLayoutManager()Landroid/view/autolayout/IOplusAutoLayoutManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/autolayout/IOplusAutoLayoutManager;->getAutoLayoutDisplayMetrics(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isPackageInCompatMode()Z
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public blacklist redirectResourcesToNewImplLocked(Landroid/content/res/Resources;Landroid/content/res/ResourcesImpl;Z)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p3, "update"    # Z

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "resourcesImplExt":Landroid/content/res/IResourcesImplExt;
    const/4 v1, 0x0

    .line 85
    .local v1, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    move-object v0, v2

    if-eqz v2, :cond_0

    .line 86
    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p2, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v2, v1}, Landroid/content/res/IResourcesImplExt;->init(Ljava/lang/String;)V

    .line 91
    :cond_1
    return-void
.end method

.method public blacklist setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;
    .param p2, "oldOverrideConfig"    # Landroid/content/res/Configuration;
    .param p3, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .line 113
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusCompactWindowAppManager;->setCompactWindowDisplayAdjustment(Landroid/content/res/ResourcesImpl;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 116
    :cond_0
    return-void
.end method

.method public blacklist updateAppBoundsForComapctWindowIfNeed(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Z)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p3, "forceUpdateConfig"    # Z

    .line 201
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 202
    invoke-interface {v0, p1, p2, p3}, Landroid/app/IOplusCompactWindowAppManager;->updateAppBoundsForComapctWindowIfNeed(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public blacklist updateCompactWindowConfigToApplicationResourcesImpl(Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;)V
    .locals 1
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "resourcesImpl"    # Landroid/content/res/ResourcesImpl;

    .line 106
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 107
    invoke-interface {v0, p1, p2}, Landroid/app/IOplusCompactWindowAppManager;->updateCompactWindowConfigToApplicationResourcesImpl(Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;)V

    .line 109
    :cond_0
    return-void
.end method

.method public blacklist updateCustomDarkModeForWechat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetConfig"    # Landroid/content/res/Configuration;
    .param p2, "theadConfig"    # Landroid/content/res/Configuration;
    .param p3, "targetImpl"    # Landroid/content/res/ResourcesImpl;
    .param p4, "currentProcessName"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mCompactWindowAppManager:Landroid/app/IOplusCompactWindowAppManager;

    if-eqz v0, :cond_0

    .line 121
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IOplusCompactWindowAppManager;->updateCustomDarkModeForWechat(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/ResourcesImpl;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public blacklist updateResourcesForActivity(Ljava/lang/String;Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "overrideConfig"    # Landroid/content/res/Configuration;
    .param p4, "displayId"    # I

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iput-object p1, p0, Landroid/app/ResourcesManagerExtImpl;->mPackageName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Landroid/app/ResourcesManagerExtImpl;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v0, p2, p3, p4}, Landroid/app/ResourcesManager;->updateResourcesForActivity(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V

    .line 78
    monitor-exit p0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
