.class public Landroid/hardware/face/IOplusFaceManager$Default;
.super Ljava/lang/Object;
.source "IOplusFaceManager.java"

# interfaces
.implements Landroid/hardware/face/IOplusFaceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IOplusFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFaceProcessMemory()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFailedAttempts()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist regsiterFaceCmdCallback(Landroid/hardware/face/IFaceCommandCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/face/IFaceCommandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist resetFaceDaemon()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist sendFaceCmd(II[B)I
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "cmdId"    # I
    .param p3, "inbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregsiterFaceCmdCallback(Landroid/hardware/face/IFaceCommandCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/face/IFaceCommandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const/4 v0, 0x0

    return v0
.end method
