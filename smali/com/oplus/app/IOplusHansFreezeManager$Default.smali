.class public Lcom/oplus/app/IOplusHansFreezeManager$Default;
.super Ljava/lang/Object;
.source "IOplusHansFreezeManager.java"

# interfaces
.implements Lcom/oplus/app/IOplusHansFreezeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/app/IOplusHansFreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFreezeInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/app/OplusFreezeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFrozenPackageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist registerFreezeInfoListener(Ljava/lang/String;Lcom/oplus/app/IOplusFreezeInfoListener;)Z
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/app/IOplusFreezeInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist report(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "pid"    # I
    .param p3, "installStage"    # Ljava/lang/String;
    .param p4, "installerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public blacklist unregisterFreezeInfoListener(Ljava/lang/String;Lcom/oplus/app/IOplusFreezeInfoListener;)Z
    .locals 1
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/app/IOplusFreezeInfoListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method
