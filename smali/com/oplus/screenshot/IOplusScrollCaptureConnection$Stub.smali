.class public Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureConnection.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollCaptureConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusScrollCaptureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IOplusScrollCaptureConnection"


# instance fields
.field private final blacklist mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;


# direct methods
.method private constructor blacklist <init>(Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;)V
    .locals 0
    .param p1, "connection"    # Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    .line 101
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScrollCaptureConnection;
    .locals 2
    .param p0, "binder"    # Landroid/os/IBinder;

    .line 152
    invoke-static {p0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    move-result-object v0

    .line 153
    .local v0, "connection":Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;
    if-nez v0, :cond_0

    .line 154
    const/4 v1, 0x0

    return-object v1

    .line 156
    :cond_0
    new-instance v1, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;

    invoke-direct {v1, v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;-><init>(Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->close()V

    .line 138
    return-void
.end method

.method public whitelist endCapture()Landroid/os/CancellationSignal;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->endCapture()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 130
    .local v0, "remote":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 131
    .local v1, "signal":Landroid/os/CancellationSignal;
    invoke-virtual {v1, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 132
    return-object v1
.end method

.method public whitelist requestImage(Landroid/graphics/Rect;)Landroid/os/CancellationSignal;
    .locals 2
    .param p1, "captureArea"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    invoke-interface {v0, p1}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 122
    .local v0, "remote":Landroid/os/ICancellationSignal;
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    .line 123
    .local v1, "signal":Landroid/os/CancellationSignal;
    invoke-virtual {v1, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 124
    return-object v1
.end method

.method public whitelist startCapture(Landroid/view/Surface;Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;)Landroid/os/CancellationSignal;
    .locals 4
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "callbacks"    # Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 106
    .local v0, "signal":Landroid/os/CancellationSignal;
    const-string v1, "IOplusScrollCaptureConnection"

    if-nez p1, :cond_0

    .line 107
    const-string v2, "surface is null."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-object v0

    .line 110
    :cond_0
    if-nez p2, :cond_1

    .line 111
    const-string v2, "callbacks is null."

    invoke-static {v1, v2}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub;->mConnection:Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;

    new-instance v2, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks;-><init>(Lcom/oplus/screenshot/IOplusScrollCaptureCallbacks;Lcom/oplus/screenshot/IOplusScrollCaptureConnection$Stub$ScrollCaptureCallbacks-IA;)V

    invoke-interface {v1, p1, v2}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner;->startCapture(Landroid/view/Surface;Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;)Landroid/os/ICancellationSignal;

    move-result-object v1

    .line 115
    .local v1, "remote":Landroid/os/ICancellationSignal;
    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 116
    return-object v0
.end method
