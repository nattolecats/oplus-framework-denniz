.class public interface abstract Lcom/oplus/quicksettings/IOplusTileManagerService;
.super Ljava/lang/Object;
.source "IOplusTileManagerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;,
        Lcom/oplus/quicksettings/IOplusTileManagerService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.quicksettings.IOplusTileManagerService"


# virtual methods
.method public abstract whitelist getOplusTile(Landroid/content/ComponentName;)Lcom/oplus/quicksettings/OplusTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist registerOplusTileService(Lcom/oplus/quicksettings/IOplusTileService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist updateOplusTile(Lcom/oplus/quicksettings/OplusTile;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
