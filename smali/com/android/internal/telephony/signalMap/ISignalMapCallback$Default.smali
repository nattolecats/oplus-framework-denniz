.class public Lcom/android/internal/telephony/signalMap/ISignalMapCallback$Default;
.super Ljava/lang/Object;
.source "ISignalMapCallback.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/ISignalMapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/ISignalMapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onGeoFenceStateChanged(ZII)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "cause"    # I
    .param p3, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist onGeoFenceStateChangedSecondly(ZII)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "cause"    # I
    .param p3, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist onQoSPredictResultChanged(II)V
    .locals 0
    .param p1, "beforeEnter"    # I
    .param p2, "beforeExit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
