.class public interface abstract Lcom/oplus/screenshot/IOplusScreenshot;
.super Ljava/lang/Object;
.source "IOplusScreenshot.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScreenshot$Stub;,
        Lcom/oplus/screenshot/IOplusScreenshot$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screenshot.IOplusScreenshot"


# virtual methods
.method public abstract whitelist isEdit()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist start(Lcom/oplus/screenshot/IOplusScreenshotCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
