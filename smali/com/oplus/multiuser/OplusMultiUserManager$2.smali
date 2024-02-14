.class Lcom/oplus/multiuser/OplusMultiUserManager$2;
.super Landroid/util/Singleton;
.source "OplusMultiUserManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/multiuser/OplusMultiUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oplus/multiuser/IOplusMultiUserManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Lcom/oplus/multiuser/IOplusMultiUserManager;
    .locals 2

    .line 85
    :try_start_0
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "b":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/multiuser/IOplusMultiUserManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/multiuser/IOplusMultiUserManager;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v1, "oplusMultiUserManager":Lcom/oplus/multiuser/IOplusMultiUserManager;
    return-object v1

    .line 88
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "oplusMultiUserManager":Lcom/oplus/multiuser/IOplusMultiUserManager;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/oplus/multiuser/OplusMultiUserManager$2;->create()Lcom/oplus/multiuser/IOplusMultiUserManager;

    move-result-object v0

    return-object v0
.end method
