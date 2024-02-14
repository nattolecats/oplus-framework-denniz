.class public Lcom/android/internal/telephony/IPhoneStateListenerExt$Default;
.super Ljava/lang/Object;
.source "IPhoneStateListenerExt.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListenerExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListenerExt;
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

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onImsRemainTimeReported(Ljava/lang/String;)V
    .locals 0
    .param p1, "remainTimeData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist onPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "result"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
