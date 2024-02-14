.class public Lcom/android/internal/telephony/IOemLinkLatencyManager$Default;
.super Ljava/lang/Object;
.source "IOemLinkLatencyManager.java"

# interfaces
.implements Lcom/android/internal/telephony/IOemLinkLatencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IOemLinkLatencyManager;
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

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist gameOptimizeExit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist gameOptimizeSetLoad(ILjava/lang/String;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCurrentLevel()Lcom/android/internal/telephony/OplusLinkLatencyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist prioritizeDefaultDataSubscription(Z)J
    .locals 2
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist setLevel(JJJ)V
    .locals 0
    .param p1, "rat"    # J
    .param p3, "uplink"    # J
    .param p5, "downlink"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
