.class public Loplus/telecom/ConnectionExt;
.super Ljava/lang/Object;
.source "ConnectionExt.java"


# static fields
.field public static final blacklist CAPABILITY_AUDIO_RINGTONE:I = -0x80000000

.field public static final blacklist CAPABILITY_BASE:I = 0x20000000

.field public static final blacklist CAPABILITY_CAPABILITY_CALL_RECORDING:I = 0x20000000

.field public static final blacklist CAPABILITY_VIDEO_RINGTONE:I = 0x40000000

.field public static final blacklist EVENT_CALL_ALERTING_NOTIFICATION:Ljava/lang/String; = "mediatek.telecom.event.EVENT_CALL_ALERTING_NOTIFICATION"

.field public static final blacklist EVENT_CONNECTION_LOST:Ljava/lang/String; = "mediatek.telecom.event.CONNECTION_LOST"

.field public static final blacklist EVENT_ECC_RETRY_FAIL:Ljava/lang/String; = "mediatek.telecom.event.EVENT_ECC_RETRY_FAIL"

.field public static final blacklist EVENT_INCOMING_INFO_UPDATED:Ljava/lang/String; = "mediatek.telecom.event.INCOMING_INFO_UPDATED"

.field public static final blacklist EVENT_NUMBER_UPDATED:Ljava/lang/String; = "mediatek.telecom.event.NUMBER_UPDATED"

.field public static final blacklist EVENT_OPERATION_FAILED:Ljava/lang/String; = "mediatek.telecom.event.OPERATION_FAILED"

.field public static final blacklist EVENT_PHONE_ACCOUNT_CHANGED:Ljava/lang/String; = "mediatek.telecom.event.PHONE_ACCOUNT_CHANGED"

.field public static final blacklist EVENT_SS_NOTIFICATION:Ljava/lang/String; = "mediatek.telecom.event.SS_NOTIFICATION"

.field public static final blacklist EVENT_VOLTE_MARKED_AS_EMERGENCY:Ljava/lang/String; = "mediatek.telecom.event.EVENT_VOLTE_MARKED_AS_EMERGENCY"

.field public static final blacklist EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "mediatek.telecom.extra.EXTRA_DISCONNECT_CAUSE"

.field public static final blacklist EXTRA_FAILED_OPERATION:Ljava/lang/String; = "mediatek.telecom.extra.FAILED_OPERATION"

.field public static final blacklist EXTRA_NEW_NUMBER:Ljava/lang/String; = "mediatek.telecom.extra.NEW_NUMBER"

.field public static final blacklist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "mediatek.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final blacklist EXTRA_SS_NOTIFICATION_CODE:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_CODE"

.field public static final blacklist EXTRA_SS_NOTIFICATION_INDEX:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_INDEX"

.field public static final blacklist EXTRA_SS_NOTIFICATION_NOTITYPE:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_NOTITYPE"

.field public static final blacklist EXTRA_SS_NOTIFICATION_NUMBER:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_NUMBER"

.field public static final blacklist EXTRA_SS_NOTIFICATION_TYPE:Ljava/lang/String; = "mediatek.telecom.extra.SS_NOTIFICATION_TYPE"

.field public static final blacklist EXTRA_UPDATED_INCOMING_INFO_ALPHAID:Ljava/lang/String; = "mediatek.telecom.extra.UPDATED_INCOMING_INFO_ALPHAID"

.field public static final blacklist EXTRA_UPDATED_INCOMING_INFO_CLI_VALIDITY:Ljava/lang/String; = "mediatek.telecom.extra.UPDATED_INCOMING_INFO_CLI_VALIDITY"

.field public static final blacklist EXTRA_UPDATED_INCOMING_INFO_TYPE:Ljava/lang/String; = "mediatek.telecom.extra.UPDATED_INCOMING_INFO_TYPE"

.field public static final blacklist IMS_EVENT_NOTIFICATION_RINGTONE:Ljava/lang/String; = "mediatek.telecom.event.IMS_EVENT_NOTIFICATION_RINGTONE"

.field public static final blacklist PROPERTY_BASE:I = 0x8000

.field public static final blacklist PROPERTY_CDMA:I = 0x10000

.field public static final blacklist PROPERTY_CONFERENCE_PARTICIPANT:I = 0x40000

.field public static final blacklist PROPERTY_VOICE_RECORDING:I = 0x20000

.field public static final blacklist PROPERTY_VOLTE:I = 0x8000


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildParamsForIncomingInfoUpdated(ILjava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "type"    # I
    .param p1, "alphaid"    # Ljava/lang/String;
    .param p2, "cliValidity"    # I

    .line 230
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.UPDATED_INCOMING_INFO_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v1, "mediatek.telecom.extra.UPDATED_INCOMING_INFO_ALPHAID"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "mediatek.telecom.extra.UPDATED_INCOMING_INFO_CLI_VALIDITY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 234
    return-object v0
.end method

.method public static blacklist buildParamsForOperationFailed(I)Landroid/os/Bundle;
    .locals 2
    .param p0, "operation"    # I

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.FAILED_OPERATION"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    return-object v0
.end method

.method public static blacklist buildParamsForSsNotification(IIILjava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .param p0, "notiType"    # I
    .param p1, "type"    # I
    .param p2, "code"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "index"    # I

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_NOTITYPE"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 242
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_NUMBER"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v1, "mediatek.telecom.extra.SS_NOTIFICATION_INDEX"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    return-object v0
.end method

.method public static blacklist can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 219
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist capabilitiesToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "capabilities"    # I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    invoke-static {p0, v2}, Loplus/telecom/ConnectionExt;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/high16 v1, 0x20000000

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    if-eqz p1, :cond_0

    const-string v1, " M_CAPABILITY_CAPABILITY_CALL_RECORDING"

    goto :goto_0

    :cond_0
    const-string v1, " m_rcrd"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 210
    if-eqz p1, :cond_2

    const-string v1, " M_CAPABILITY_VIDEO_RINGTONE"

    goto :goto_1

    :cond_2
    const-string v1, " m_vt_tone"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_3
    const/high16 v1, -0x80000000

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 213
    if-eqz p1, :cond_4

    const-string v1, " M_CAPABILITY_AUDIO_RINGTONE"

    goto :goto_2

    :cond_4
    const-string v1, " m_ar_tone"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist propertiesToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "properties"    # I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    invoke-static {p0, v2}, Loplus/telecom/ConnectionExt;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "sb":Ljava/lang/StringBuilder;
    const v1, 0x8000

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    if-eqz p1, :cond_0

    const-string v1, " M_PROPERTY_VOLTE"

    goto :goto_0

    :cond_0
    const-string v1, " m_volte"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_1
    const/high16 v1, 0x10000

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    if-eqz p1, :cond_2

    const-string v1, " M_PROPERTY_CDMA"

    goto :goto_1

    :cond_2
    const-string v1, " m_cdma"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :cond_3
    const/high16 v1, 0x20000

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    if-eqz p1, :cond_4

    const-string v1, " M_PROPERTY_VOICE_RECORDING"

    goto :goto_2

    :cond_4
    const-string v1, " m_rcrding"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_5
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Loplus/telecom/ConnectionExt;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    if-eqz p1, :cond_6

    const-string v1, " M_PROPERTY_CONFERENCE_PARTICIPANT"

    goto :goto_3

    :cond_6
    const-string v1, " m_conf_child"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
