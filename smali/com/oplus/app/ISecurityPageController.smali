.class public interface abstract Lcom/oplus/app/ISecurityPageController;
.super Ljava/lang/Object;
.source "ISecurityPageController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/ISecurityPageController$Stub;,
        Lcom/oplus/app/ISecurityPageController$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.ISecurityPageController"


# virtual methods
.method public abstract whitelist onSecurityPageFlagChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onSecurityPageFlagChangedForDisplay(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
