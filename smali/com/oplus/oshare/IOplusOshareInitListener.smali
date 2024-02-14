.class public interface abstract Lcom/oplus/oshare/IOplusOshareInitListener;
.super Ljava/lang/Object;
.source "IOplusOshareInitListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/oshare/IOplusOshareInitListener$Stub;,
        Lcom/oplus/oshare/IOplusOshareInitListener$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.oshare.IOplusOshareInitListener"


# virtual methods
.method public abstract whitelist onShareInit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onShareUninit()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
