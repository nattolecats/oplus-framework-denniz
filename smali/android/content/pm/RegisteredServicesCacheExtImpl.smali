.class public Landroid/content/pm/RegisteredServicesCacheExtImpl;
.super Ljava/lang/Object;
.source "RegisteredServicesCacheExtImpl.java"

# interfaces
.implements Landroid/content/pm/IRegisteredServicesCacheExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "RegisteredServicesCacheExtImpl"


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "mServicesLock"    # Ljava/lang/Object;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCacheExtImpl;->mLock:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method static synthetic blacklist lambda$adjustGenerateServicesMap$0(Landroid/util/ArraySet;Landroid/content/pm/ResolveInfo;)V
    .locals 1
    .param p0, "resolvePackageSet"    # Landroid/util/ArraySet;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 28
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public whitelist adjustGenerateServicesMap(Ljava/lang/String;[ILjava/util/List;Ljava/util/function/Predicate;)Z
    .locals 8
    .param p1, "simpleName"    # Ljava/lang/String;
    .param p2, "changedUids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 19
    .local p3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    aget v1, p2, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 20
    .local v1, "changedUid":I
    :goto_0
    const/4 v2, 0x0

    .line 22
    .local v2, "componentNoInterestedDelete":Z
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCacheExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 23
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    move v2, v4

    .line 24
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v2, :cond_1

    .line 27
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .local v3, "resolvePackageSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    new-instance v4, Landroid/content/pm/RegisteredServicesCacheExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/content/pm/RegisteredServicesCacheExtImpl$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArraySet;)V

    invoke-interface {p3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 30
    .local v4, "componentNoInterestedAdd":Z
    if-eqz v4, :cond_1

    .line 32
    const-string v0, "RegisteredServicesCacheExtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return v5

    .line 36
    .end local v3    # "resolvePackageSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v4    # "componentNoInterestedAdd":Z
    :cond_1
    return v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
