.class public Lcom/android/internal/telephony/ITelephonyRegistryExt$Default;
.super Ljava/lang/Object;
.source "ITelephonyRegistryExt.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephonyRegistryExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephonyRegistryExt;
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

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist listenWithEventList(ZZILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListenerExt;[IZ)Z
    .locals 1
    .param p1, "renounceFineLocationAccess"    # Z
    .param p2, "renounceCoarseLocationAccess"    # Z
    .param p3, "slotId"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "featureId"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/android/internal/telephony/IPhoneStateListenerExt;
    .param p7, "events"    # [I
    .param p8, "notifyNow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist notifyForRemainTimeReported(ILjava/lang/String;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "remainTimeData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist notifyPlmnCarrierConfigChanged(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "result"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
