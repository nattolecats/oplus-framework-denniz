.class public interface abstract Lcom/oplus/felica/IFelicadeviceService;
.super Ljava/lang/Object;
.source "IFelicadeviceService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/felica/IFelicadeviceService$Stub;,
        Lcom/oplus/felica/IFelicadeviceService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.felica.IFelicadeviceService"


# virtual methods
.method public abstract blacklist oplusPnscrGetCurrent()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist oplusPnscrGetFreq()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist oplusPnscrTestCardEmulation()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist oplusPnscrTestGpFelicaSpc()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
