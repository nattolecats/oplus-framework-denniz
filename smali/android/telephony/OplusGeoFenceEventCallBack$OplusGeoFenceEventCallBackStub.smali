.class final Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;
.super Landroid/telephony/IOplusGeoFenceEventCallBack$Stub;
.source "OplusGeoFenceEventCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/OplusGeoFenceEventCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OplusGeoFenceEventCallBackStub"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/OplusGeoFenceEventCallBack;


# direct methods
.method private constructor blacklist <init>(Landroid/telephony/OplusGeoFenceEventCallBack;)V
    .locals 0

    .line 39
    iput-object p1, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-direct {p0}, Landroid/telephony/IOplusGeoFenceEventCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/OplusGeoFenceEventCallBack;Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;-><init>(Landroid/telephony/OplusGeoFenceEventCallBack;)V

    return-void
.end method


# virtual methods
.method public blacklist getCause()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0}, Landroid/telephony/OplusGeoFenceEventCallBack;->getCause()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCustomerName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0}, Landroid/telephony/OplusGeoFenceEventCallBack;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSlot()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0}, Landroid/telephony/OplusGeoFenceEventCallBack;->getSlot()I

    move-result v0

    return v0
.end method

.method public blacklist onLteGameDelayFenceEvent(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusGeoFenceEventCallBack;->onLteGameDelayFenceEvent(II)V

    .line 82
    return-void
.end method

.method public blacklist onNrDumpFenceEvent(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusGeoFenceEventCallBack;->onNrDumpFenceEvent(II)V

    .line 63
    return-void
.end method

.method public blacklist onNrSaDataSlowFenceEvent(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusGeoFenceEventCallBack;->onNrSaDataSlowFenceEvent(II)V

    .line 68
    return-void
.end method

.method public blacklist onNrSaWeakFenceEvent(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusGeoFenceEventCallBack;->onNrSaWeakFenceEvent(II)V

    .line 73
    return-void
.end method

.method public blacklist onSaGameDelayFenceEvent(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusGeoFenceEventCallBack;->onSaGameDelayFenceEvent(II)V

    .line 77
    return-void
.end method

.method public blacklist onSaLteChangeGameDelayFenceEvent(II)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/OplusGeoFenceEventCallBack;->onSaLteChangeGameDelayFenceEvent(II)V

    .line 87
    return-void
.end method

.method public blacklist setCustomerName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;->this$0:Landroid/telephony/OplusGeoFenceEventCallBack;

    invoke-virtual {v0, p1}, Landroid/telephony/OplusGeoFenceEventCallBack;->setCustomerName(Ljava/lang/String;)V

    .line 58
    return-void
.end method
