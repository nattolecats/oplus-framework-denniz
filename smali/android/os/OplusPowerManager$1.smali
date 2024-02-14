.class Landroid/os/OplusPowerManager$1;
.super Landroid/util/Singleton;
.source "OplusPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/os/IOplusPowerManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/os/IOplusPowerManager;
    .locals 3

    .line 39
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 40
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 41
    .local v1, "pm":Landroid/os/IPowerManager;
    nop

    .line 42
    invoke-interface {v1}, Landroid/os/IPowerManager;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v2

    .line 41
    invoke-static {v2}, Landroid/os/IOplusPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IOplusPowerManager;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v2, "oplusPowerManager":Landroid/os/IOplusPowerManager;
    return-object v2

    .line 44
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "pm":Landroid/os/IPowerManager;
    .end local v2    # "oplusPowerManager":Landroid/os/IOplusPowerManager;
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Landroid/os/OplusPowerManager$1;->create()Landroid/os/IOplusPowerManager;

    move-result-object v0

    return-object v0
.end method
