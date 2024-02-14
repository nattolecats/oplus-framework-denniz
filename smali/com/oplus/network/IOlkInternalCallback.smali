.class public interface abstract Lcom/oplus/network/IOlkInternalCallback;
.super Ljava/lang/Object;
.source "IOlkInternalCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOlkInternalCallback$Stub;,
        Lcom/oplus/network/IOlkInternalCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOlkInternalCallback"


# virtual methods
.method public abstract blacklist olkClearSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist olkSetApBandwithCallback(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist olkSetApStateCallback(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist olkSetRealTimeEventCallback(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist olkSetSocketPriorityCallback(Ljava/lang/String;Lcom/oplus/network/OlkStreamParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist olkUpdateCellularEnable(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
