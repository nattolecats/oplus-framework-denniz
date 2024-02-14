.class public interface abstract Landroid/net/IAutoConCaptivePortalControlCallbacks;
.super Ljava/lang/Object;
.source "IAutoConCaptivePortalControlCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IAutoConCaptivePortalControlCallbacks$Stub;,
        Landroid/net/IAutoConCaptivePortalControlCallbacks$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.net.IAutoConCaptivePortalControlCallbacks"


# virtual methods
.method public abstract whitelist notifyNetworkTested(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
