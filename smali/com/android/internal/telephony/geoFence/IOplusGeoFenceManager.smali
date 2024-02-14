.class public interface abstract Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;
.super Ljava/lang/Object;
.source "IOplusGeoFenceManager.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;

.field public static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;->TAG:Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;->DEFAULT:Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;

    return-void
.end method


# virtual methods
.method public blacklist addOplusGeoFenceToLs(Ljava/lang/String;ILandroid/location/Location;Landroid/os/Message;)V
    .locals 0
    .param p1, "gfname"    # Ljava/lang/String;
    .param p2, "radius"    # I
    .param p3, "location"    # Landroid/location/Location;
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 19
    return-void
.end method

.method public blacklist initialOnce(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    sget-object v0, Lcom/android/internal/telephony/geoFence/IOplusGeoFenceManager;->TAG:Ljava/lang/String;

    const-string v1, "OplusGeoFenceManager Not Support"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method public blacklist registerGfEventCallBack(Lcom/android/internal/telephony/geoFence/IOplusGeoFenceCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/telephony/geoFence/IOplusGeoFenceCallback;

    .line 25
    return-void
.end method

.method public blacklist removeOplusGeoFenceFromLs(Ljava/lang/String;)V
    .locals 0
    .param p1, "gfname"    # Ljava/lang/String;

    .line 22
    return-void
.end method

.method public blacklist unregisterGfEventCallBack(Lcom/android/internal/telephony/geoFence/IOplusGeoFenceCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/internal/telephony/geoFence/IOplusGeoFenceCallback;

    .line 28
    return-void
.end method
