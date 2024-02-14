.class public Landroid/location/LocationManagerExtImpl;
.super Ljava/lang/Object;
.source "LocationManagerExtImpl.java"

# interfaces
.implements Landroid/location/ILocationManagerExt;


# instance fields
.field private blacklist mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v0, p1

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/location/LocationManagerExtImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist checkPermission(IILjava/lang/String;)Z
    .locals 2
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "access"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 38
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 37
    return v0
.end method
