.class public Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;
.super Ljava/lang/Object;
.source "OplusPermissionCheckInjectorExtImpl.java"

# interfaces
.implements Lcom/oplus/permission/IOplusPermissionCheckInjectorExt;


# static fields
.field private static volatile blacklist sInstance:Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    if-nez v0, :cond_1

    .line 36
    const-class v0, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    monitor-enter v0

    .line 37
    :try_start_0
    sget-object v1, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    invoke-direct {v1, p0}, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    .line 40
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;->sInstance:Lcom/oplus/permission/OplusPermissionCheckInjectorExtImpl;

    return-object v0
.end method


# virtual methods
.method public blacklist checkApplyBatchPermission(Ljava/util/ArrayList;IILjava/lang/String;)Z
    .locals 2
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;II",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 65
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 66
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkApplyBatchPermission(Ljava/util/ArrayList;IILjava/lang/String;)Z

    move-result v0

    .line 65
    return v0
.end method

.method public blacklist checkPermission(Landroid/content/Intent;IILjava/lang/String;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 54
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Landroid/content/Intent;IILjava/lang/String;)Z

    move-result v0

    .line 53
    return v0
.end method

.method public blacklist checkPermission(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 48
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 47
    return v0
.end method

.method public blacklist checkUriPermission(Landroid/net/Uri;IILjava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "access"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 60
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkUriPermission(Landroid/net/Uri;IILjava/lang/String;)Z

    move-result v0

    .line 59
    return v0
.end method
