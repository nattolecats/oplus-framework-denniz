.class public Lcom/oplus/app/ISecurityPageController$Default;
.super Ljava/lang/Object;
.source "ISecurityPageController.java"

# interfaces
.implements Lcom/oplus/app/ISecurityPageController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/ISecurityPageController;
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

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onSecurityPageFlagChanged(Z)V
    .locals 0
    .param p1, "isSecurity"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist onSecurityPageFlagChangedForDisplay(ZI)V
    .locals 0
    .param p1, "isSecurity"    # Z
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
