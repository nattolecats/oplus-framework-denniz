.class public interface abstract Landroid/hardware/IOplusCameraStatisticsManager;
.super Ljava/lang/Object;
.source "IOplusCameraStatisticsManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/hardware/IOplusCameraStatisticsManager;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusCameraStatisticsManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Landroid/hardware/IOplusCameraStatisticsManager$1;

    invoke-direct {v0}, Landroid/hardware/IOplusCameraStatisticsManager$1;-><init>()V

    sput-object v0, Landroid/hardware/IOplusCameraStatisticsManager;->DEFAULT:Landroid/hardware/IOplusCameraStatisticsManager;

    return-void
.end method


# virtual methods
.method public blacklist addCaptureInfo(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 52
    return-void
.end method

.method public blacklist addInfo(IJ)V
    .locals 0
    .param p1, "cameraId"    # I
    .param p2, "disconnectTime"    # J

    .line 44
    return-void
.end method

.method public blacklist addPreviewInfo(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 48
    return-void
.end method

.method public blacklist getCameraId()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 20
    sget-object v0, Landroid/hardware/IOplusCameraStatisticsManager;->DEFAULT:Landroid/hardware/IOplusCameraStatisticsManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 15
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCameraStatisticsManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist setConnectTime(J)V
    .locals 0
    .param p1, "connectTime"    # J

    .line 24
    return-void
.end method

.method public blacklist setCurFaceCount(I)V
    .locals 0
    .param p1, "curFaceCount"    # I

    .line 40
    return-void
.end method

.method public blacklist setDisconnectTime(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .line 32
    return-void
.end method

.method public blacklist setDisconnectTime(J)V
    .locals 0
    .param p1, "disconnectTime"    # J

    .line 28
    return-void
.end method
