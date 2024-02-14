.class public interface abstract Landroid/os/IOplusKeyEventObserver;
.super Ljava/lang/Object;
.source "IOplusKeyEventObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IOplusKeyEventObserver$Stub;,
        Landroid/os/IOplusKeyEventObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IOplusKeyEventObserver"


# virtual methods
.method public abstract blacklist onKeyEvent(Landroid/view/KeyEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
