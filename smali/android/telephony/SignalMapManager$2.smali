.class Landroid/telephony/SignalMapManager$2;
.super Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Stub;
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

    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onQosDataChanged(Landroid/telephony/QoSInfo;)V
    .locals 1
    .param p1, "qosInfo"    # Landroid/telephony/QoSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/telephony/SignalMapManager;->-$$Nest$sfgetmQosCollectCallback()Landroid/telephony/IQoSCollectCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Landroid/telephony/SignalMapManager;->-$$Nest$sfgetmQosCollectCallback()Landroid/telephony/IQoSCollectCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/telephony/IQoSCollectCallBack;->onQosDataChanged(Landroid/telephony/QoSInfo;)V

    .line 94
    :cond_0
    return-void
.end method
