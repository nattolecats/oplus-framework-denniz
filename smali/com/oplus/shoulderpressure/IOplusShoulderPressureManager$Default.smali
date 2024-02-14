.class public Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager$Default;
.super Ljava/lang/Object;
.source "IOplusShoulderPressureManager.java"

# interfaces
.implements Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isShoulderPressureNodeSupport(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readShoulderPressureNodeFile(I)Ljava/lang/String;
    .locals 1
    .param p1, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist readShoulderPressureNodeFileByDevice(II)Ljava/lang/String;
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist writeShoulderPressureNodeFile(ILjava/lang/String;)Z
    .locals 1
    .param p1, "nodeFlag"    # I
    .param p2, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist writeShoulderPressureNodeFileByDevice(IILjava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .param p3, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method
