.class public Lcom/oplus/network/heartbeat/IHeartbeat$Default;
.super Ljava/lang/Object;
.source "IHeartbeat.java"

# interfaces
.implements Lcom/oplus/network/heartbeat/IHeartbeat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/heartbeat/IHeartbeat;
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

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist establishHeartbeat(Lcom/oplus/network/heartbeat/HeartbeatSettings;Lcom/oplus/network/heartbeat/IHeartbeatListener;)Ljava/lang/String;
    .locals 1
    .param p1, "request"    # Lcom/oplus/network/heartbeat/HeartbeatSettings;
    .param p2, "callback"    # Lcom/oplus/network/heartbeat/IHeartbeatListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isHeartbeatAvailabel()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHeartbeatDynamicCycleEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist pauseHeartbeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist resumeHeartbeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist stopHeartbeat(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
