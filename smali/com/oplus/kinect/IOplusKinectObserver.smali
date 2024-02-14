.class public interface abstract Lcom/oplus/kinect/IOplusKinectObserver;
.super Ljava/lang/Object;
.source "IOplusKinectObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/kinect/IOplusKinectObserver$Stub;,
        Lcom/oplus/kinect/IOplusKinectObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.kinect.IOplusKinectObserver"


# virtual methods
.method public abstract blacklist onKinectDetected(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
