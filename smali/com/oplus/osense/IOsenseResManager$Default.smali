.class public Lcom/oplus/osense/IOsenseResManager$Default;
.super Ljava/lang/Object;
.source "IOsenseResManager.java"

# interfaces
.implements Lcom/oplus/osense/IOsenseResManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/osense/IOsenseResManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist athenaReqSceneAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "featureType"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public whitelist osenseClrCtrlData(Ljava/lang/String;)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public whitelist osenseClrSceneAction(Ljava/lang/String;J)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public whitelist osenseGetModeStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist osenseGetPerfLimit(Ljava/lang/String;)[J
    .locals 1
    .param p1, "identity"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist osenseSetCtrlData(Ljava/lang/String;Lcom/oplus/osense/info/OsenseCtrlDataRequest;)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/oplus/osense/info/OsenseCtrlDataRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public whitelist osenseSetNotification(Ljava/lang/String;Lcom/oplus/osense/info/OsenseNotifyRequest;)V
    .locals 0
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/oplus/osense/info/OsenseNotifyRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public whitelist osenseSetSceneAction(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public whitelist updateConfig(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method
