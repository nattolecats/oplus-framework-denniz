.class public interface abstract Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;
.super Ljava/lang/Object;
.source "IOplusShoulderPressureManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager$Stub;,
        Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.shoulderpressure.IOplusShoulderPressureManager"


# virtual methods
.method public abstract blacklist isShoulderPressureNodeSupport(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist readShoulderPressureNodeFile(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist readShoulderPressureNodeFileByDevice(II)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist writeShoulderPressureNodeFile(ILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist writeShoulderPressureNodeFileByDevice(IILjava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
