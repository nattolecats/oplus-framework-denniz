.class public interface abstract Landroid/os/customize/IOplusCustomizeInputMethodManagerService;
.super Ljava/lang/Object;
.source "IOplusCustomizeInputMethodManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Stub;,
        Landroid/os/customize/IOplusCustomizeInputMethodManagerService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.os.customize.IOplusCustomizeInputMethodManagerService"


# virtual methods
.method public abstract whitelist clearDefaultInputMethod()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getDefaultInputMethod()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist setDefaultInputMethod(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
