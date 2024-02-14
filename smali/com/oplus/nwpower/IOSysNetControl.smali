.class public interface abstract Lcom/oplus/nwpower/IOSysNetControl;
.super Ljava/lang/Object;
.source "IOSysNetControl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/nwpower/IOSysNetControl$Stub;,
        Lcom/oplus/nwpower/IOSysNetControl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.nwpower.IOSysNetControl"


# virtual methods
.method public abstract blacklist setDataEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setWifiEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
