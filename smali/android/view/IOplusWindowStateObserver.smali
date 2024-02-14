.class public interface abstract Landroid/view/IOplusWindowStateObserver;
.super Ljava/lang/Object;
.source "IOplusWindowStateObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOplusWindowStateObserver$Stub;,
        Landroid/view/IOplusWindowStateObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.view.IOplusWindowStateObserver"


# virtual methods
.method public abstract whitelist onWindowStateChange(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
