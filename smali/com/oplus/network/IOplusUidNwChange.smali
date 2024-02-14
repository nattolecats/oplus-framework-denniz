.class public interface abstract Lcom/oplus/network/IOplusUidNwChange;
.super Ljava/lang/Object;
.source "IOplusUidNwChange.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/IOplusUidNwChange$Stub;,
        Lcom/oplus/network/IOplusUidNwChange$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.network.IOplusUidNwChange"


# virtual methods
.method public abstract blacklist appFreezeDataNotify(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist uidNetworkChange(IZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
