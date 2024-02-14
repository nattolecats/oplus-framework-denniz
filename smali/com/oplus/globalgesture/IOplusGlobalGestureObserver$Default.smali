.class public Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Default;
.super Ljava/lang/Object;
.source "IOplusGlobalGestureObserver.java"

# interfaces
.implements Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
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

.method public blacklist onGestureDetected(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
