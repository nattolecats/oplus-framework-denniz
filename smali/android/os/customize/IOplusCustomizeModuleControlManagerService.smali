.class public interface abstract Landroid/os/customize/IOplusCustomizeModuleControlManagerService;
.super Ljava/lang/Object;
.source "IOplusCustomizeModuleControlManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/customize/IOplusCustomizeModuleControlManagerService$Stub;,
        Landroid/os/customize/IOplusCustomizeModuleControlManagerService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "android.os.customize.IOplusCustomizeModuleControlManagerService"


# virtual methods
.method public abstract whitelist getModuleControlStateByType(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getModuleControlStateByTypeAdmin(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist getModuleControlStateByTypeBundle(ILandroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
