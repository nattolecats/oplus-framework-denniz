.class public Lcom/android/internal/telephony/OplusFeatureHelper;
.super Ljava/lang/Object;
.source "OplusFeatureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/OplusFeatureHelper$FeatureObserver;
    }
.end annotation


# static fields
.field private static blacklist sInstance:Lcom/android/internal/telephony/OplusFeatureHelper;


# instance fields
.field blacklist mManager:Lcom/oplus/content/OplusFeatureConfigManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/OplusFeatureHelper;->sInstance:Lcom/android/internal/telephony/OplusFeatureHelper;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    .line 24
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    .line 25
    return-void
.end method

.method public static whitelist getInstance()Lcom/android/internal/telephony/OplusFeatureHelper;
    .locals 2

    .line 15
    const-class v0, Lcom/android/internal/telephony/OplusFeatureHelper;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/OplusFeatureHelper;->sInstance:Lcom/android/internal/telephony/OplusFeatureHelper;

    if-nez v1, :cond_0

    .line 17
    new-instance v1, Lcom/android/internal/telephony/OplusFeatureHelper;

    invoke-direct {v1}, Lcom/android/internal/telephony/OplusFeatureHelper;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/OplusFeatureHelper;->sInstance:Lcom/android/internal/telephony/OplusFeatureHelper;

    .line 19
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/OplusFeatureHelper;->sInstance:Lcom/android/internal/telephony/OplusFeatureHelper;

    monitor-exit v0

    return-object v1

    .line 20
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist disableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-virtual {v0, p1}, Lcom/oplus/content/OplusFeatureConfigManager;->disableFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist enableFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-virtual {v0, p1}, Lcom/oplus/content/OplusFeatureConfigManager;->enableFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 37
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "featureName"    # Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-virtual {v0, p1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "actionValue"    # Ljava/lang/String;

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/content/OplusFeatureConfigManager;->notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 55
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerFeatureObserver(Ljava/util/List;Lcom/android/internal/telephony/OplusFeatureHelper$FeatureObserver;)Z
    .locals 1
    .param p2, "observer"    # Lcom/android/internal/telephony/OplusFeatureHelper$FeatureObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/telephony/OplusFeatureHelper$FeatureObserver;",
            ")Z"
        }
    .end annotation

    .line 58
    .local p1, "features":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/content/OplusFeatureConfigManager;->registerFeatureObserver(Ljava/util/List;Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterFeatureObserver(Lcom/android/internal/telephony/OplusFeatureHelper$FeatureObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/android/internal/telephony/OplusFeatureHelper$FeatureObserver;

    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/OplusFeatureHelper;->mManager:Lcom/oplus/content/OplusFeatureConfigManager;

    invoke-virtual {v0, p1}, Lcom/oplus/content/OplusFeatureConfigManager;->unregisterFeatureObserver(Lcom/oplus/content/OplusFeatureConfigManager$OnFeatureObserver;)Z

    move-result v0

    return v0
.end method
