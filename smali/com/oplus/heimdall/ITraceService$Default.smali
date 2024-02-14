.class public Lcom/oplus/heimdall/ITraceService$Default;
.super Ljava/lang/Object;
.source "ITraceService.java"

# interfaces
.implements Lcom/oplus/heimdall/ITraceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/heimdall/ITraceService;
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
.method public whitelist addListener(Ljava/lang/String;Lcom/oplus/heimdall/ITraceListener;)Z
    .locals 1
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/oplus/heimdall/ITraceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isTraceOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeListener(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callerPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    return v0
.end method
