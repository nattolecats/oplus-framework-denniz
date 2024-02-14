.class Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$1;
.super Landroid/util/Singleton;
.source "OplusMultiUserFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hardware/fingerprint/IOplusFingerprintManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/hardware/fingerprint/IOplusFingerprintManager;
    .locals 2

    .line 54
    :try_start_0
    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 55
    .local v0, "b":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IOplusFingerprintManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .local v1, "oplusFingerprintManager":Landroid/hardware/fingerprint/IOplusFingerprintManager;
    return-object v1

    .line 57
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "oplusFingerprintManager":Landroid/hardware/fingerprint/IOplusFingerprintManager;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Landroid/hardware/fingerprint/OplusMultiUserFingerprintManager$1;->create()Landroid/hardware/fingerprint/IOplusFingerprintManager;

    move-result-object v0

    return-object v0
.end method
