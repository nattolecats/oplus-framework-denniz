.class Landroid/app/OplusStatusBarManager$1;
.super Landroid/util/Singleton;
.source "OplusStatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusStatusBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IOplusStatusBarManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IOplusStatusBarManager;
    .locals 2

    .line 73
    :try_start_0
    const-string v0, "statusbar"

    .line 74
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/app/IOplusStatusBarManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOplusStatusBarManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .local v0, "oplusStatusBarManager":Landroid/app/IOplusStatusBarManager;
    return-object v0

    .line 76
    .end local v0    # "oplusStatusBarManager":Landroid/app/IOplusStatusBarManager;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Landroid/app/OplusStatusBarManager$1;->create()Landroid/app/IOplusStatusBarManager;

    move-result-object v0

    return-object v0
.end method
