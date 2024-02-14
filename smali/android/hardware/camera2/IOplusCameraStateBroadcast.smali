.class public interface abstract Landroid/hardware/camera2/IOplusCameraStateBroadcast;
.super Ljava/lang/Object;
.source "IOplusCameraStateBroadcast.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/hardware/camera2/IOplusCameraStateBroadcast;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusCameraStateBroadcast"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Landroid/hardware/camera2/IOplusCameraStateBroadcast$1;

    invoke-direct {v0}, Landroid/hardware/camera2/IOplusCameraStateBroadcast$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/IOplusCameraStateBroadcast;->DEFAULT:Landroid/hardware/camera2/IOplusCameraStateBroadcast;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 25
    sget-object v0, Landroid/hardware/camera2/IOplusCameraStateBroadcast;->DEFAULT:Landroid/hardware/camera2/IOplusCameraStateBroadcast;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 20
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCameraStateBroadcast:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist notifyCameraState(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraState"    # I
    .param p3, "clientName"    # Ljava/lang/String;
    .param p4, "facing"    # I

    .line 29
    return-void
.end method
