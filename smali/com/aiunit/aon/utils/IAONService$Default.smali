.class public Lcom/aiunit/aon/utils/IAONService$Default;
.super Ljava/lang/Object;
.source "IAONService.java"

# interfaces
.implements Lcom/aiunit/aon/utils/IAONService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aiunit/aon/utils/IAONService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist enroll(ILjava/lang/String;Landroid/view/Surface;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "previewSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getEnrolledFaceCount(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getServerState()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVersionInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist notifyAON(ILandroid/os/Bundle;)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist process(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aiunit/aon/utils/core/SensorBmp;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    .local p1, "sensorBmps":Ljava/util/List;, "Ljava/util/List<Lcom/aiunit/aon/utils/core/SensorBmp;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerListener(Lcom/aiunit/aon/utils/IAONEventListener;I)I
    .locals 1
    .param p1, "listener"    # Lcom/aiunit/aon/utils/IAONEventListener;
    .param p2, "AonCmdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist remove(ILjava/lang/String;)I
    .locals 1
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setGestureCourseState(I)I
    .locals 1
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist start(I)I
    .locals 1
    .param p1, "AonCmdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist stop(I)I
    .locals 1
    .param p1, "AonCmdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unRegisterListener(Lcom/aiunit/aon/utils/IAONEventListener;I)I
    .locals 1
    .param p1, "listener"    # Lcom/aiunit/aon/utils/IAONEventListener;
    .param p2, "AonCmdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method
