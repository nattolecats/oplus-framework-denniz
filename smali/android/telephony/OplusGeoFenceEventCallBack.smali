.class public Landroid/telephony/OplusGeoFenceEventCallBack;
.super Ljava/lang/Object;
.source "OplusGeoFenceEventCallBack.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;
    }
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/telephony/IOplusGeoFenceEventCallBack;

.field private blacklist mCause:Ljava/lang/String;

.field private blacklist mCauseMask:I

.field public blacklist mCustomerName:Ljava/lang/String;

.field private blacklist mLinkBinder:Landroid/os/IBinder;

.field public blacklist mSlot:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "causeMask"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCauseMask:I

    .line 24
    const-string v0, "NrDump"

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    .line 30
    const-string v0, "FenceCustomer"

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCustomerName:Ljava/lang/String;

    .line 91
    iput p1, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mSlot:I

    .line 92
    iput p2, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCauseMask:I

    .line 93
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "cause"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCauseMask:I

    .line 24
    const-string v0, "NrDump"

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    .line 30
    const-string v0, "FenceCustomer"

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCustomerName:Ljava/lang/String;

    .line 96
    iput p1, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mSlot:I

    .line 97
    iput-object p2, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "slot"    # I
    .param p2, "cause"    # Ljava/lang/String;
    .param p3, "customerName"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCauseMask:I

    .line 24
    const-string v0, "NrDump"

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    .line 30
    const-string v0, "FenceCustomer"

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCustomerName:Ljava/lang/String;

    .line 101
    iput p1, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mSlot:I

    .line 102
    iput-object p2, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCustomerName:Ljava/lang/String;

    .line 104
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 171
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mLinkBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mLinkBinder:Landroid/os/IBinder;

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/OplusGeoFenceEventCallBack;->onRemoteBinderDied()V

    .line 176
    return-void
.end method

.method public blacklist getCause()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCustomerName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCustomerName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGeoFenceEventCbBinder()Landroid/telephony/IOplusGeoFenceEventCallBack;
    .locals 2

    .line 33
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mBinder:Landroid/telephony/IOplusGeoFenceEventCallBack;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub;-><init>(Landroid/telephony/OplusGeoFenceEventCallBack;Landroid/telephony/OplusGeoFenceEventCallBack$OplusGeoFenceEventCallBackStub-IA;)V

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mBinder:Landroid/telephony/IOplusGeoFenceEventCallBack;

    .line 36
    :cond_0
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mBinder:Landroid/telephony/IOplusGeoFenceEventCallBack;

    return-object v0
.end method

.method public blacklist getSlot()I
    .locals 1

    .line 107
    iget v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mSlot:I

    return v0
.end method

.method public blacklist linkToDeath(Lcom/android/internal/telephony/IOplusTelephonyExt;)V
    .locals 2
    .param p1, "telephonyExt"    # Lcom/android/internal/telephony/IOplusTelephonyExt;

    .line 147
    if-eqz p1, :cond_0

    .line 149
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mLinkBinder:Landroid/os/IBinder;

    .line 150
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist onLteGameDelayFenceEvent(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I

    .line 138
    return-void
.end method

.method public blacklist onNrDumpFenceEvent(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I

    .line 123
    return-void
.end method

.method public blacklist onNrSaDataSlowFenceEvent(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "event"    # I

    .line 129
    return-void
.end method

.method public blacklist onNrSaWeakFenceEvent(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "event"    # I

    .line 126
    return-void
.end method

.method public blacklist onRemoteBinderDied()V
    .locals 0

    .line 132
    return-void
.end method

.method public blacklist onSaGameDelayFenceEvent(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I

    .line 135
    return-void
.end method

.method public blacklist onSaLteChangeGameDelayFenceEvent(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "evnet"    # I

    .line 141
    return-void
.end method

.method public blacklist setCustomerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 119
    iput-object p1, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCustomerName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist unlinkToDeath()V
    .locals 2

    .line 161
    iget-object v0, p0, Landroid/telephony/OplusGeoFenceEventCallBack;->mLinkBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 162
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 164
    :cond_0
    return-void
.end method
