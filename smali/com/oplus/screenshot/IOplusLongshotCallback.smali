.class public interface abstract Lcom/oplus/screenshot/IOplusLongshotCallback;
.super Ljava/lang/Object;
.source "IOplusLongshotCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusLongshotCallback$Stub;,
        Lcom/oplus/screenshot/IOplusLongshotCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.screenshot.IOplusLongshotCallback"


# virtual methods
.method public abstract whitelist stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
