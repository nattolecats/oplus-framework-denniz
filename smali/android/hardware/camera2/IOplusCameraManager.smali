.class public interface abstract Landroid/hardware/camera2/IOplusCameraManager;
.super Ljava/lang/Object;
.source "IOplusCameraManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/hardware/camera2/IOplusCameraManager;

.field public static final whitelist NAME:Ljava/lang/String; = "IOplusCameraManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/hardware/camera2/IOplusCameraManager$1;

    invoke-direct {v0}, Landroid/hardware/camera2/IOplusCameraManager$1;-><init>()V

    sput-object v0, Landroid/hardware/camera2/IOplusCameraManager;->DEFAULT:Landroid/hardware/camera2/IOplusCameraManager;

    return-void
.end method


# virtual methods
.method public whitelist addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "permBits"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 32
    sget-object v0, Landroid/hardware/camera2/IOplusCameraManager;->DEFAULT:Landroid/hardware/camera2/IOplusCameraManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 27
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCameraManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist isAuthedClient(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isCameraUnitSession()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isPrivilegedApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist parseSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0
    .param p1, "sessionParams"    # Landroid/hardware/camera2/CaptureRequest;

    .line 73
    return-void
.end method

.method public whitelist preOpenCamera(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    return-void
.end method

.method public whitelist saveOpPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 57
    return-void
.end method

.method public whitelist setCallInfo()V
    .locals 0

    .line 53
    return-void
.end method

.method public whitelist setDeathRecipient(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "client"    # Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method public whitelist setPackageName()V
    .locals 0

    .line 61
    return-void
.end method
