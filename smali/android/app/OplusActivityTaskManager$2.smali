.class Landroid/app/OplusActivityTaskManager$2;
.super Landroid/util/Singleton;
.source "OplusActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IOplusActivityTaskManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IOplusActivityTaskManager;
    .locals 2

    .line 170
    :try_start_0
    const-string v0, "activity_task"

    .line 172
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    .line 171
    invoke-static {v0}, Landroid/app/IOplusActivityTaskManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IOplusActivityTaskManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .local v0, "oplusActivityTaskManager":Landroid/app/IOplusActivityTaskManager;
    return-object v0

    .line 174
    .end local v0    # "oplusActivityTaskManager":Landroid/app/IOplusActivityTaskManager;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    .line 166
    invoke-virtual {p0}, Landroid/app/OplusActivityTaskManager$2;->create()Landroid/app/IOplusActivityTaskManager;

    move-result-object v0

    return-object v0
.end method
