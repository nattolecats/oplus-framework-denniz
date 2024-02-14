.class public Lcom/oplus/network/heartbeat/IHeartbeatListener$Default;
.super Ljava/lang/Object;
.source "IHeartbeatListener.java"

# interfaces
.implements Lcom/oplus/network/heartbeat/IHeartbeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/heartbeat/IHeartbeatListener;
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

    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onHeartbeatStateUpdate(III[I)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "err"    # I
    .param p3, "destroy"    # I
    .param p4, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
