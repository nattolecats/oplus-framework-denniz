.class public Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener$Default;
.super Ljava/lang/Object;
.source "IOplusScrollCaptureResponseListener.java"

# interfaces
.implements Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/IOplusScrollCaptureResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onScrollCaptureResponse(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/screenshot/OplusScrollCaptureResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/screenshot/OplusScrollCaptureResponse;>;"
    return-void
.end method
