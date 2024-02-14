.class Landroid/hardware/face/OplusFaceManager$1;
.super Landroid/util/Singleton;
.source "OplusFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/OplusFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/hardware/face/IOplusFaceManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/hardware/face/IOplusFaceManager;
    .locals 2

    .line 58
    :try_start_0
    const-string v0, "face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    .local v0, "b":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/face/IOplusFaceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IOplusFaceManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v1, "oplusFaceManager":Landroid/hardware/face/IOplusFaceManager;
    return-object v1

    .line 61
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "oplusFaceManager":Landroid/hardware/face/IOplusFaceManager;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroid/hardware/face/OplusFaceManager$1;->create()Landroid/hardware/face/IOplusFaceManager;

    move-result-object v0

    return-object v0
.end method
