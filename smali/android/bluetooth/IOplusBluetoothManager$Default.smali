.class public Landroid/bluetooth/IOplusBluetoothManager$Default;
.super Ljava/lang/Object;
.source "IOplusBluetoothManager.java"

# interfaces
.implements Landroid/bluetooth/IOplusBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IOplusBluetoothManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerBtMonitStateCallback(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/IOplusBluetoothManagerCallback;)Z
    .locals 1
    .param p1, "callAppName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/bluetooth/IOplusBluetoothManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/IOplusBluetoothManagerCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    .local p2, "monitorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterBtMonitStateCallback(Ljava/lang/String;Ljava/util/List;Landroid/bluetooth/IOplusBluetoothManagerCallback;)Z
    .locals 1
    .param p1, "callAppName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/bluetooth/IOplusBluetoothManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/bluetooth/IOplusBluetoothManagerCallback;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    .local p2, "monitorEvents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method
