.class public interface abstract Lcom/oplus/kinect/IOplusKinectService;
.super Ljava/lang/Object;
.source "IOplusKinectService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/kinect/IOplusKinectService$Stub;,
        Lcom/oplus/kinect/IOplusKinectService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.kinect.IOplusKinectService"


# virtual methods
.method public abstract blacklist registerKinectObserver(Lcom/oplus/kinect/IOplusKinectObserver;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist unregisterKinectObserver(Lcom/oplus/kinect/IOplusKinectObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
