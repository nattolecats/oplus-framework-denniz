.class public Lcom/oplus/eap/IExceptionMonitorService$Default;
.super Ljava/lang/Object;
.source "IExceptionMonitorService.java"

# interfaces
.implements Lcom/oplus/eap/IExceptionMonitorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/eap/IExceptionMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initExceptionIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/eap/ExceptionIdentification;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/eap/ExceptionIdentification;>;"
    return-void
.end method

.method public blacklist initExceptionIdMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public blacklist initExitInfoIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/eap/ExceptionIdentification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initExitInfoIdMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public blacklist onAppException(Landroid/os/SharedMemory;)Lcom/oplus/eap/ExceptionIdentification;
    .locals 1
    .param p1, "data"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAppExceptionBundle(Landroid/os/Bundle;)Lcom/oplus/eap/ExceptionIdentification;
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAppExit(Landroid/app/ApplicationExitInfo;)Lcom/oplus/eap/ExceptionIdentification;
    .locals 1
    .param p1, "data"    # Landroid/app/ApplicationExitInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onExceptionIdAdjust(Lcom/oplus/eap/ExceptionIdentification;)V
    .locals 0
    .param p1, "exceptionId"    # Lcom/oplus/eap/ExceptionIdentification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist onUploadExitInfoList()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method
