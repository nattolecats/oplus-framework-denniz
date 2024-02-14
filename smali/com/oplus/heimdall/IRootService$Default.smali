.class public Lcom/oplus/heimdall/IRootService$Default;
.super Ljava/lang/Object;
.source "IRootService.java"

# interfaces
.implements Lcom/oplus/heimdall/IRootService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/heimdall/IRootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isRoot(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isRootForceUpdate(Ljava/lang/String;Lcom/oplus/heimdall/IRootCallback;)V
    .locals 0
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "callBack"    # Lcom/oplus/heimdall/IRootCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
