.class public Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack$Default;
.super Ljava/lang/Object;
.source "IQoSCollectCallBack.java"

# interfaces
.implements Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/signalMap/qosPrediction/IQoSCollectCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onQosDataChanged(Landroid/telephony/QoSInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/telephony/QoSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
