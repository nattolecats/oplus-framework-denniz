.class public interface abstract Lcom/oplus/os/IOplusScreenStatusListener;
.super Ljava/lang/Object;
.source "IOplusScreenStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/os/IOplusScreenStatusListener$Stub;,
        Lcom/oplus/os/IOplusScreenStatusListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.os.IOplusScreenStatusListener"


# virtual methods
.method public abstract whitelist onScreenOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onScreenOn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
