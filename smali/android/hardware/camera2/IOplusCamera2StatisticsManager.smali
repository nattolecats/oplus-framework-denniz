.class public interface abstract Landroid/hardware/camera2/IOplusCamera2StatisticsManager;
.super Ljava/lang/Object;
.source "IOplusCamera2StatisticsManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/hardware/camera2/IOplusCamera2StatisticsManager;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusCamera2StatisticsManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Landroid/hardware/camera2/IOplusCamera2StatisticsManager$1;

    invoke-direct {v0}, Landroid/hardware/camera2/IOplusCamera2StatisticsManager$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/IOplusCamera2StatisticsManager;->DEFAULT:Landroid/hardware/camera2/IOplusCamera2StatisticsManager;

    return-void
.end method


# virtual methods
.method public blacklist addCaptureInfo(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "resultAsCapture"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 43
    return-void
.end method

.method public blacklist addInfo(Ljava/lang/String;J)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "disconnectTime"    # J

    .line 35
    return-void
.end method

.method public blacklist addPreviewInfo(Ljava/lang/String;J)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "disconnectTime"    # J

    .line 39
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 19
    sget-object v0, Landroid/hardware/camera2/IOplusCamera2StatisticsManager;->DEFAULT:Landroid/hardware/camera2/IOplusCamera2StatisticsManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 14
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCamera2StatisticsManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist setConnectTime(J)V
    .locals 0
    .param p1, "connectTime"    # J

    .line 27
    return-void
.end method

.method public blacklist setCurrentResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0
    .param p1, "currentResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 23
    return-void
.end method

.method public blacklist setDisconnectTime(J)V
    .locals 0
    .param p1, "disconnectTime"    # J

    .line 31
    return-void
.end method
