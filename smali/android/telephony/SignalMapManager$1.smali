.class Landroid/telephony/SignalMapManager$1;
.super Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;
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

    .line 70
    invoke-direct {p0}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSPredictionCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQosPredictionResultChanged(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    invoke-static {}, Landroid/telephony/SignalMapManager;->-$$Nest$sfgetmQosCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IQoSPredictionCallBack;

    .line 74
    .local v1, "callback":Landroid/telephony/IQoSPredictionCallBack;
    invoke-interface {v1, p1}, Landroid/telephony/IQoSPredictionCallBack;->onQosPredictionResultChanged(Landroid/os/Bundle;)V

    .line 75
    .end local v1    # "callback":Landroid/telephony/IQoSPredictionCallBack;
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method

.method public blacklist onQosPredictionStateChanged(I)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-static {}, Landroid/telephony/SignalMapManager;->-$$Nest$sfgetmQosCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IQoSPredictionCallBack;

    .line 81
    .local v1, "callback":Landroid/telephony/IQoSPredictionCallBack;
    invoke-interface {v1, p1}, Landroid/telephony/IQoSPredictionCallBack;->onQosPredictionStateChanged(I)V

    .line 82
    .end local v1    # "callback":Landroid/telephony/IQoSPredictionCallBack;
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
