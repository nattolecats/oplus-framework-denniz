.class public Landroid/app/ConfigurationControllerExtImpl;
.super Ljava/lang/Object;
.source "ConfigurationControllerExtImpl.java"

# interfaces
.implements Landroid/app/IConfigurationControllerExt;


# static fields
.field private static final blacklist CONFIG_CHECK_APPS:[Ljava/lang/String;

.field private static final blacklist EXSERVICEUI_PKG:Ljava/lang/String; = "com.oplus.exserviceui"

.field private static final blacklist TAG:Ljava/lang/String; = "ConfigurationControllerExtImpl"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 44
    const-string v0, "com.coloros.alarmclock"

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.systemui"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/ConfigurationControllerExtImpl;->CONFIG_CHECK_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist handleStateCheck(Ljava/lang/String;Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newConfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "oldConfig"    # Landroid/content/res/OplusBaseConfiguration;

    .line 63
    const-string v0, "com.oplus.exserviceui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    return v1

    .line 66
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 67
    return v0

    .line 69
    :cond_1
    invoke-virtual {p3, p2}, Landroid/content/res/OplusBaseConfiguration;->diff(Landroid/content/res/OplusBaseConfiguration;)I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 70
    return v1

    .line 72
    :cond_2
    return v0
.end method

.method public blacklist hookConfigChangeForLocale(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)V
    .locals 10
    .param p1, "appCxt"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "allow":Z
    sget-object v1, Landroid/app/ConfigurationControllerExtImpl;->CONFIG_CHECK_APPS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 82
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_1

    .line 81
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    .line 88
    .local v1, "appConfig":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v1, :cond_9

    if-nez v0, :cond_2

    goto/16 :goto_4

    .line 91
    :cond_2
    invoke-virtual {v1, p2}, Landroid/content/res/OplusBaseConfiguration;->diffPublicOnly(Landroid/content/res/OplusBaseConfiguration;)I

    move-result v2

    .line 92
    .local v2, "diff":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v3

    .line 93
    .local v3, "impl":Landroid/content/res/ResourcesImpl;
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ResourcesManager;->getWrapper()Landroid/app/IResourcesManagerWrapper;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IResourcesManagerWrapper;->getResourcesImplMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 94
    .local v4, "implMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 97
    :cond_3
    const/4 v5, 0x0

    .line 98
    .local v5, "findAppImpl":Z
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_2
    const/4 v7, 0x0

    if-ltz v6, :cond_6

    .line 99
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 100
    .local v8, "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/res/ResourcesImpl;

    .line 101
    .local v7, "r":Landroid/content/res/ResourcesImpl;
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 102
    const/4 v5, 0x1

    .line 98
    .end local v7    # "r":Landroid/content/res/ResourcesImpl;
    .end local v8    # "weakImplRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;"
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 105
    .end local v6    # "i":I
    :cond_6
    if-nez v5, :cond_7

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "app resources impl not found in map, need update this: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", package: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ConfigurationControllerExtImpl"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2, v7, v7}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/OplusBaseConfiguration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    .line 109
    :cond_7
    return-void

    .line 95
    .end local v5    # "findAppImpl":Z
    :cond_8
    :goto_3
    return-void

    .line 89
    .end local v2    # "diff":I
    .end local v3    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v4    # "implMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/ResourcesKey;Ljava/lang/ref/WeakReference<Landroid/content/res/ResourcesImpl;>;>;"
    :cond_9
    :goto_4
    return-void
.end method

.method public blacklist hookHandleConfigurationChanged(Landroid/app/Application;Landroid/content/res/OplusBaseConfiguration;ILandroid/content/res/OplusBaseConfiguration;)Z
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "diff"    # I
    .param p4, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 55
    sget-object v0, Landroid/app/IOplusCommonInjector;->DEFAULT:Landroid/app/IOplusCommonInjector;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusCommonInjector;

    invoke-interface {v0, p1, p2}, Landroid/app/IOplusCommonInjector;->onConfigurationChangedForApplication(Landroid/app/Application;Landroid/content/res/OplusBaseConfiguration;)V

    .line 56
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p3, p4}, Lcom/oplus/darkmode/IOplusDarkModeManager;->shouldInterceptConfigRelaunch(ILandroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    return v0
.end method
