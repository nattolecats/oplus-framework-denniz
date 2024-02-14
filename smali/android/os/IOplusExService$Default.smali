.class public Landroid/os/IOplusExService$Default;
.super Ljava/lang/Object;
.source "IOplusExService.java"

# interfaces
.implements Landroid/os/IOplusExService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IOplusExService;
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

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist dealScreenoffGesture(I)V
    .locals 0
    .param p1, "nGesture"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public whitelist getGestureState(I)Z
    .locals 1
    .param p1, "nGesture"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist pauseExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public whitelist pilferPointers()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public whitelist registerGlobalGestureObserver(Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;Ljava/lang/String;ILjava/util/List;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "config"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    .local p4, "validRegion":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerInputEvent(Landroid/os/IOplusExInputCallBack;)Z
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOplusExInputCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerRawInputEvent(Landroid/os/IOplusExInputCallBack;)Z
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOplusExInputCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerScreenoffGesture(Landroid/os/IOplusGestureCallBack;)Z
    .locals 1
    .param p1, "callBack"    # Landroid/os/IOplusGestureCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist resumeExInputEvent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public whitelist setGestureState(IZ)V
    .locals 0
    .param p1, "nGesture"    # I
    .param p2, "isOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public whitelist unregisterGlobalGestureObserver(Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;)Z
    .locals 1
    .param p1, "observer"    # Lcom/oplus/globalgesture/IOplusGlobalGestureObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V
    .locals 0
    .param p1, "callBack"    # Landroid/os/IOplusExInputCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public whitelist unregisterScreenoffGesture(Landroid/os/IOplusGestureCallBack;)V
    .locals 0
    .param p1, "callBack"    # Landroid/os/IOplusGestureCallBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method
