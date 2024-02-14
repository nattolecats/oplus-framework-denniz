.class public interface abstract Landroid/app/IOplusClickTopCallback;
.super Ljava/lang/Object;
.source "IOplusClickTopCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOplusClickTopCallback$Stub;,
        Landroid/app/IOplusClickTopCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.app.IOplusClickTopCallback"


# virtual methods
.method public abstract whitelist onClickTopCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
