.class public Lcom/oplus/kinect/IOplusKinectService$Default;
.super Ljava/lang/Object;
.source "IOplusKinectService.java"

# interfaces
.implements Lcom/oplus/kinect/IOplusKinectService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/kinect/IOplusKinectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerKinectObserver(Lcom/oplus/kinect/IOplusKinectObserver;I)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/kinect/IOplusKinectObserver;
    .param p2, "config"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterKinectObserver(Lcom/oplus/kinect/IOplusKinectObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/kinect/IOplusKinectObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
