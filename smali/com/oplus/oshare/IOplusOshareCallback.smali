.class public interface abstract Lcom/oplus/oshare/IOplusOshareCallback;
.super Ljava/lang/Object;
.source "IOplusOshareCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/oshare/IOplusOshareCallback$Stub;,
        Lcom/oplus/oshare/IOplusOshareCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.oshare.IOplusOshareCallback"


# virtual methods
.method public abstract whitelist onDeviceChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/oshare/OplusOshareDevice;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onSendSwitchChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
