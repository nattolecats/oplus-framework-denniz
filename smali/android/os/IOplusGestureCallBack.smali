.class public interface abstract Landroid/os/IOplusGestureCallBack;
.super Ljava/lang/Object;
.source "IOplusGestureCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOplusGestureCallBack$Stub;,
        Landroid/os/IOplusGestureCallBack$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.os.IOplusGestureCallBack"


# virtual methods
.method public abstract whitelist onDealGesture(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
