.class Landroid/app/OplusNotificationManager$1;
.super Landroid/util/Singleton;
.source "OplusNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IOplusNotificationManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IOplusNotificationManager;
    .locals 2

    .line 42
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/INotificationManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/app/IOplusNotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOplusNotificationManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "oplusNotificationManager":Landroid/app/IOplusNotificationManager;
    return-object v0

    .line 44
    .end local v0    # "oplusNotificationManager":Landroid/app/IOplusNotificationManager;
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

    .line 36
    invoke-virtual {p0}, Landroid/app/OplusNotificationManager$1;->create()Landroid/app/IOplusNotificationManager;

    move-result-object v0

    return-object v0
.end method
