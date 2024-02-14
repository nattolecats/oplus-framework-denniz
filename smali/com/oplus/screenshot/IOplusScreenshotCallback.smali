.class public interface abstract Lcom/oplus/screenshot/IOplusScreenshotCallback;
.super Ljava/lang/Object;
.source "IOplusScreenshotCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScreenshotCallback$Stub;,
        Lcom/oplus/screenshot/IOplusScreenshotCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screenshot.IOplusScreenshotCallback"


# virtual methods
.method public abstract whitelist stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
