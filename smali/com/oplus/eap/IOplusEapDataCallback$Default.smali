.class public Lcom/oplus/eap/IOplusEapDataCallback$Default;
.super Ljava/lang/Object;
.source "IOplusEapDataCallback.java"

# interfaces
.implements Lcom/oplus/eap/IOplusEapDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eap/IOplusEapDataCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
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

.method public whitelist onAppCrashed(Landroid/os/SharedMemory;)V
    .locals 0
    .param p1, "data"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public whitelist onExitInfoRecordAdded(Landroid/app/ApplicationExitInfo;)V
    .locals 0
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
