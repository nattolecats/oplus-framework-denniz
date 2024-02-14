.class public interface abstract Lcom/oplus/dynamicvsync/IOplusDynamicVsync;
.super Ljava/lang/Object;
.source "IOplusDynamicVsync.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/dynamicvsync/IOplusDynamicVsync$Stub;,
        Lcom/oplus/dynamicvsync/IOplusDynamicVsync$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.dynamicvsync.IOplusDynamicVsync"


# virtual methods
.method public abstract whitelist doAnimation(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist flingEvent(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
