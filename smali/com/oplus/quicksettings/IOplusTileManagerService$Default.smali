.class public Lcom/oplus/quicksettings/IOplusTileManagerService$Default;
.super Ljava/lang/Object;
.source "IOplusTileManagerService.java"

# interfaces
.implements Lcom/oplus/quicksettings/IOplusTileManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quicksettings/IOplusTileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOplusTile(Landroid/content/ComponentName;)Lcom/oplus/quicksettings/OplusTile;
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist registerOplusTileService(Lcom/oplus/quicksettings/IOplusTileService;)V
    .locals 0
    .param p1, "oplusTileService"    # Lcom/oplus/quicksettings/IOplusTileService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public whitelist updateOplusTile(Lcom/oplus/quicksettings/OplusTile;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "tile"    # Lcom/oplus/quicksettings/OplusTile;
    .param p2, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method
