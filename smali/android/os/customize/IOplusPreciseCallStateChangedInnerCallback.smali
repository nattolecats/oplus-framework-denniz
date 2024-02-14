.class public interface abstract Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
.super Ljava/lang/Object;
.source "IOplusPreciseCallStateChangedInnerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback$Stub;,
        Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.os.customize.IOplusPreciseCallStateChangedInnerCallback"


# virtual methods
.method public abstract whitelist OnCustPreciseCallStateChanged(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
