.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImplExtImpl;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImplExtImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/ICameraCaptureSessionImplExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraCaptureSessionImplExtImpl"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist modifySkipUnconfigFlag(Z)Z
    .locals 3
    .param p1, "inSkipUnconfigure"    # Z

    .line 15
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "ro.oplus.system.camera.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "sysCamName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Build;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    const/4 v2, 0x1

    return v2

    .line 21
    :cond_0
    return p1
.end method
