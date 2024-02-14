.class public Landroid/os/customize/IOplusCustomizePhoneManagerService$Default;
.super Ljava/lang/Object;
.source "IOplusCustomizePhoneManagerService.java"

# interfaces
.implements Landroid/os/customize/IOplusCustomizePhoneManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/customize/IOplusCustomizePhoneManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addPreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    return-void
.end method

.method public blacklist answerRingingCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    return-void
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist endCall(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    return-void
.end method

.method public blacklist getDefaultVoiceCard(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPropSetNonEmergencyCallDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlot1SmsLimitation(Landroid/content/ComponentName;Z)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlot1SmsReceiveDisabled()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSlot1SmsSendDisabled()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSlot2SmsLimitation(Landroid/content/ComponentName;Z)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSlot2SmsReceiveDisabled()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSlot2SmsSendDisabled()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isCallForwardSettingDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isEnablePhoneCallLimit(Z)Z
    .locals 1
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInComingThirdCallDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRoamingCallDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSlotDisabled(Landroid/content/ComponentName;I)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSlotTwoDisabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propEnablePhoneCallLimit(ZZ)Z
    .locals 1
    .param p1, "isEnable"    # Z
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propGetPhoneCallLimitation(Z)I
    .locals 1
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propGetSms1LimitationTime(Z)J
    .locals 2
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist propGetSms2LimitationTime(Z)J
    .locals 2
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist propRemoveCallLimitation(Z)Z
    .locals 1
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propSetCallForwardSettingDisabled(Z)Z
    .locals 1
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propSetCallLimitTime(ZI)Z
    .locals 1
    .param p1, "isOutgoing"    # Z
    .param p2, "dateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propSetNonEmergencyCallDisabled(Z)Z
    .locals 1
    .param p1, "disable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist propSetPhoneCallLimitation(ZI)Z
    .locals 1
    .param p1, "isOutgoing"    # Z
    .param p2, "limitNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removePreciseCallStateChangedCallback(Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/os/customize/IOplusPreciseCallStateChangedInnerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    return-void
.end method

.method public blacklist removeSlot1SmsLimitation(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public blacklist removeSlot2SmsLimitation(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    return-void
.end method

.method public blacklist removeSmsLimitation(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    return-void
.end method

.method public blacklist setDefaultVoiceCard(Landroid/content/ComponentName;I)Landroid/os/Bundle;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setIncomingThirdCallDisabled(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setRoamingCallDisabled(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSlot1SmsLimitation(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "limitNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    return-void
.end method

.method public blacklist setSlot1SmsReceiveDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public blacklist setSlot1SmsSendDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public blacklist setSlot2SmsLimitation(Landroid/content/ComponentName;I)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "limitNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public blacklist setSlot2SmsReceiveDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    return-void
.end method

.method public blacklist setSlot2SmsSendDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "openswitch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public blacklist setSlotDisabled(Landroid/content/ComponentName;IZ)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "slotId"    # I
    .param p3, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    return-void
.end method

.method public blacklist setSlotOneSmsLimitation(Landroid/content/ComponentName;ZII)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .param p3, "dateType"    # I
    .param p4, "limitNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setSlotTwoDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    return-void
.end method

.method public blacklist setSlotTwoSmsLimitation(Landroid/content/ComponentName;ZII)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "isOutgoing"    # Z
    .param p3, "dateType"    # I
    .param p4, "limitNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceIncomingDisabledforSlot1(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceIncomingDisabledforSlot2(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceOutgoingDisabledforSlot1(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setVoiceOutgoingDisabledforSlot2(Landroid/content/ComponentName;Z)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showSlot1SmsTimes(Z)I
    .locals 1
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showSlot2SmsTimes(Z)I
    .locals 1
    .param p1, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist storeSlot1SmsTimes(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "times"    # Ljava/lang/String;
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 177
    return-void
.end method

.method public blacklist storeSlot2SmsTimes(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "times"    # Ljava/lang/String;
    .param p2, "isOutgoing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    return-void
.end method
