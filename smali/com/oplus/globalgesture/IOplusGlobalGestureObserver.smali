.class public interface abstract Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
.super Ljava/lang/Object;
.source "IOplusGlobalGestureObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Stub;,
        Lcom/oplus/globalgesture/IOplusGlobalGestureObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.globalgesture.IOplusGlobalGestureObserver"


# virtual methods
.method public abstract blacklist onGestureDetected(ILandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
