.class Landroid/telephony/SignalMapManager$3;
.super Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack$Stub;
.source "SignalMapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalMapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSServiceInfoCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQoSServiceInfoChanged(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-static {}, Landroid/telephony/SignalMapManager;->-$$Nest$sfgetmInfoCallbacks()Landroid/telephony/IQoSServiceInfoCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Landroid/telephony/SignalMapManager;->-$$Nest$sfgetmInfoCallbacks()Landroid/telephony/IQoSServiceInfoCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/IQoSServiceInfoCallBack;->onQoSServiceInfoChanged(Landroid/os/Bundle;)V

    .line 104
    :cond_0
    return-void
.end method
