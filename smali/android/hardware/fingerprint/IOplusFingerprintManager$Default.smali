.class public Landroid/hardware/fingerprint/IOplusFingerprintManager$Default;
.super Ljava/lang/Object;
.source "IOplusFingerprintManager.java"

# interfaces
.implements Landroid/hardware/fingerprint/IOplusFingerprintManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/IOplusFingerprintManager;
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

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelFingerprintExtraInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPkgName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public blacklist cancelTouchEventListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPkgName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist continueEnroll(I)I
    .locals 1
    .param p1, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentIconStatus(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 1
    .param p1, "mToken"    # Landroid/os/IBinder;
    .param p2, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEnrolledFingerprints(II)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "sensorId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/hardware/fingerprint/OplusFingerprint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getEnrollmentTotalTimes(I)I
    .locals 1
    .param p1, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
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

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFingerprintExtraInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;II)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
    .param p6, "type"    # I
    .param p7, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getLockoutAttemptDeadline(I)J
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist hideFingerprintIcon(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Landroid/os/IBinder;
    .param p2, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public blacklist needForceUseFingerprintFirst(Ljava/lang/String;)Z
    .locals 1
    .param p1, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pauseEnroll(I)I
    .locals 1
    .param p1, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist regsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/IFingerprintCommandCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sendFingerprintCmd(II[B)I
    .locals 1
    .param p1, "sensorId"    # I
    .param p2, "cmdId"    # I
    .param p3, "inbuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFingerKeymode(II)V
    .locals 0
    .param p1, "enable"    # I
    .param p2, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist setFingerprintFlags(IIIII)I
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .param p5, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setTouchEventListener(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ILandroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;I)J
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IOplusFingerprintServiceReceiver;
    .param p6, "sensorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist showFingerprintIcon(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "mToken"    # Landroid/os/IBinder;
    .param p2, "opPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public blacklist unregsiterFingerprintCmdCallback(Landroid/hardware/fingerprint/IFingerprintCommandCallback;)I
    .locals 1
    .param p1, "callback"    # Landroid/hardware/fingerprint/IFingerprintCommandCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method
