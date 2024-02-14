.class public interface abstract Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService;
.super Ljava/lang/Object;
.source "IOplusCoreAppService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService$Stub;,
        Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.customize.coreapp.aidl.IOplusCoreAppService"


# virtual methods
.method public abstract blacklist getManager(Ljava/lang/String;)Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isPackageContainsOplusCertificates(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBootPhase(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
