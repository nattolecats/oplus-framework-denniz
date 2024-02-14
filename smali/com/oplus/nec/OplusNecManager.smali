.class public final Lcom/oplus/nec/OplusNecManager;
.super Ljava/lang/Object;
.source "OplusNecManager.java"

# interfaces
.implements Lcom/oplus/nec/IOplusNecManager;


# static fields
.field public static final whitelist CALL_EVENT_CALL_DROP:I = 0x232d

.field public static final whitelist CALL_EVENT_CALL_FAIL:I = 0x232c

.field public static final whitelist CALL_EVENT_NO_ERR:I = 0x2329

.field public static final whitelist CALL_EVENT_TELEPHONY_LOGIC_ERR:I = 0x232b

.field public static final whitelist CALL_EVENT_UNKNOWN_ERR:I = 0x232a

.field public static final whitelist DBG:Z = true

.field public static final whitelist EVENT_ID:Ljava/lang/String; = "evt_id"

.field public static final whitelist LOG_TAG:Ljava/lang/String; = "OplusNecManager"

.field public static final whitelist NEC_ACTION:Ljava/lang/String; = "com.oplus.telephony.action.ACTION_REPORT_NEC"

.field public static final whitelist NEC_BROADCAST_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final whitelist NEC_DATA:Ljava/lang/String; = "nec_data"

.field public static final whitelist NEC_EVENT_ANR_STAT:I = 0x1f5e

.field public static final whitelist NEC_EVENT_CALL_ERROR:I = 0x1fab

.field public static final whitelist NEC_EVENT_CDMA_RESET_ACTIVE_TIME:I = 0x1fa6

.field public static final whitelist NEC_EVENT_DATA_CALL_IP_TYPE:I = 0x1f47

.field public static final whitelist NEC_EVENT_DATA_CONNECT:I = 0x1f42

.field public static final whitelist NEC_EVENT_DATA_CONNECT_RET:I = 0x1f43

.field public static final whitelist NEC_EVENT_DATA_DISCONNECT:I = 0x1f44

.field public static final whitelist NEC_EVENT_DATA_DISCONNECT_RET:I = 0x1f45

.field public static final whitelist NEC_EVENT_DATA_ENABLE_CHANGE:I = 0x1f55

.field public static final whitelist NEC_EVENT_DATA_LIMIT_STATE:I = 0x1f56

.field public static final whitelist NEC_EVENT_DATA_LOST_REASON:I = 0x1f57

.field public static final whitelist NEC_EVENT_DATA_ONLINE_MEETING:I = 0x1f58

.field public static final whitelist NEC_EVENT_FASTRECOVERY:I = 0x1f72

.field public static final whitelist NEC_EVENT_GAME_DELAY_ERROR:I = 0x1f4f

.field public static final whitelist NEC_EVENT_HANG_UP_DELAY_TIME:I = 0x1fa5

.field public static final whitelist NEC_EVENT_IMS_CALL_STATE_CHANGED:I = 0x1faa

.field public static final whitelist NEC_EVENT_IMS_KEYLOG:I = 0x1fad

.field public static final whitelist NEC_EVENT_IMS_REG_FAIL_KEYLOG:I = 0x1fb4

.field public static final whitelist NEC_EVENT_IMS_STATE_CHANGED:I = 0x1fa9

.field public static final whitelist NEC_EVENT_IMS_VOLTE_VOPS_QUEREY:I = 0x1fac

.field private static final blacklist NEC_EVENT_NETWORK_DIAGNOSIS:I = 0x1fba

.field public static final whitelist NEC_EVENT_NO_DATA_FLOW_ERROR:I = 0x1f4b

.field public static final whitelist NEC_EVENT_NO_DATA_FLOW_RECOVERY_ERROR:I = 0x1f4c

.field public static final whitelist NEC_EVENT_NO_DATA_ICON_ERROR:I = 0x1f48

.field public static final whitelist NEC_EVENT_NWDIAG_SERVICE_INITED:I = 0x1f46

.field public static final whitelist NEC_EVENT_OLK_KEYLOG:I = 0x1fb7

.field public static final whitelist NEC_EVENT_OOS_CHANGED:I = 0x1f41

.field public static final whitelist NEC_EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x1fa7

.field public static final whitelist NEC_EVENT_PREF_NETWORK_MODE_CHANGED:I = 0x1f52

.field public static final whitelist NEC_EVENT_REG_INFO_CHANGED:I = 0x1f51

.field public static final whitelist NEC_EVENT_SCAN_QR_CODE_STATS:I = 0x1f5f

.field public static final whitelist NEC_EVENT_SIGNALSTRENGTH_CHANGED:I = 0x1f40

.field public static final whitelist NEC_EVENT_SLOW_DATA_FLOW_ERROR:I = 0x1f4d

.field public static final whitelist NEC_EVENT_SLOW_DATA_FLOW_RECOVERY:I = 0x1f4e

.field public static final whitelist NEC_EVENT_SRVCC_STATE_CHANGED:I = 0x1fa8

.field private static final blacklist NO_DATA_ICON_SAME_CAUSE_DURATION:J = 0x927c0L

.field public static final whitelist SEND_VIDEO_STUTTER_TO_MOBILE:I = 0xf00b7

.field private static blacklist SIM_COUNT:I = 0x0

.field private static final blacklist SIM_NUM:I

.field public static final whitelist SLOT_ID:Ljava/lang/String; = "slot_id"

.field public static final whitelist SRV_NAME:Ljava/lang/String; = "oplus_nec"

.field public static final whitelist VIDEO_EVENT_LAG_END:I = 0x65

.field public static final whitelist VIDEO_EVENT_LAG_START:I = 0x64

.field public static final whitelist VIDEO_EVENT_OPT_NOTIFY:I = 0x67

.field public static final whitelist VIDEO_EVENT_VIDEO_START:I = 0x64

.field public static final whitelist VIDEO_EVENT_VIDEO_STOP:I = 0x66

.field private static blacklist mNoDataIconSameCauseDuration:J

.field private static blacklist sInstance:Lcom/oplus/nec/OplusNecManager;


# instance fields
.field public whitelist mContext:Landroid/content/Context;

.field private blacklist mDataNetworkType:[I

.field private blacklist mDataRegState:[I

.field private blacklist mLastDataFlowReasons:Ljava/lang/String;

.field private blacklist mLastDataFlowReasonsTime:J

.field private blacklist mNecService:Lcom/oplus/nec/IOplusNecService;

.field private blacklist mVoiceNetworkType:[I

.field private blacklist mVoiceRegState:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 36
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    .line 51
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/oplus/nec/OplusNecManager;->mNoDataIconSameCauseDuration:J

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasons:Ljava/lang/String;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasonsTime:J

    .line 53
    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mVoiceRegState:[I

    .line 54
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mVoiceNetworkType:[I

    .line 55
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mDataRegState:[I

    .line 56
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mDataNetworkType:[I

    .line 139
    iput-object p1, p0, Lcom/oplus/nec/OplusNecManager;->mContext:Landroid/content/Context;

    .line 140
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    .line 141
    const-string v0, "oplus_nec"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/nec/IOplusNecService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/nec/IOplusNecService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mNecService:Lcom/oplus/nec/IOplusNecService;

    .line 142
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/oplus/nec/OplusNecManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 130
    const-class v0, Lcom/oplus/nec/OplusNecManager;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/oplus/nec/OplusNecManager;->sInstance:Lcom/oplus/nec/OplusNecManager;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Lcom/oplus/nec/OplusNecManager;

    invoke-direct {v1, p0}, Lcom/oplus/nec/OplusNecManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/nec/OplusNecManager;->sInstance:Lcom/oplus/nec/OplusNecManager;

    .line 134
    :cond_0
    sget-object v1, Lcom/oplus/nec/OplusNecManager;->sInstance:Lcom/oplus/nec/OplusNecManager;

    monitor-exit v0

    return-object v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isValidSlotId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .line 700
    if-ltz p1, :cond_1

    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 703
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist necLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 707
    const-string v0, "OplusNecManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    return-void
.end method


# virtual methods
.method public whitelist broadcastAnrEventStat(IILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "anrEventStat"    # Ljava/lang/String;

    .line 489
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastLostConnectionReason invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 493
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 494
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "errorcode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 495
    const-string v1, "anrEventStat"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const/16 v1, 0x1f5e

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 497
    return-void
.end method

.method public whitelist broadcastCallError(IIIILjava/lang/String;ZZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "event"    # I
    .param p3, "cause"    # I
    .param p4, "preciseCause"    # I
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "isImsCall"    # Z
    .param p7, "isIncoming"    # Z

    .line 580
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 581
    const-string v0, "broadcastCallError invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastCallError  slotId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",desc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",cause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",preciseCause:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 586
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 587
    const-string v1, "cause"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 588
    const-string v1, "preciseCause"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 589
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    const-string v1, "desc"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v1, "isImsCall"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 592
    const-string v1, "isIncoming"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 594
    const/16 v1, 0x1fab

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 595
    return-void
.end method

.method public whitelist broadcastCdmaResetActiveTimer(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I

    .line 513
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 514
    const-string v0, "broadcastCdmaResetActiveTimer invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-void

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastCdmaResetActiveTimer ok "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "networkType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 519
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    const/16 v1, 0x1fa6

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 521
    return-void
.end method

.method public whitelist broadcastDataCallInternetProtocolType(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "protocol"    # I

    .line 270
    if-ltz p1, :cond_1

    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "protocol"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    const/16 v1, 0x1f47

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 281
    return-void

    .line 271
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v0, "OplusNecManager"

    .line 272
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method public whitelist broadcastDataConnect(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 178
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/oplus/nec/OplusNecManager;->isApnSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 184
    :cond_0
    if-ltz p1, :cond_2

    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 193
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/16 v1, 0x1f42

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 195
    return-void

    .line 185
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v0, "OplusNecManager"

    .line 186
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 179
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastDataConnect paras is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public whitelist broadcastDataConnectResult(ILjava/lang/String;Z)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .line 207
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/oplus/nec/OplusNecManager;->isApnSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    if-ltz p1, :cond_2

    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v1, "success"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    const/16 v1, 0x1f43

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 225
    return-void

    .line 214
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v0, "OplusNecManager"

    .line 215
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void

    .line 208
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastDataConnected paras is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public whitelist broadcastDataDisconnect(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 228
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/oplus/nec/OplusNecManager;->isApnSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 234
    :cond_0
    if-ltz p1, :cond_2

    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 243
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/16 v1, 0x1f44

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 245
    return-void

    .line 235
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v0, "OplusNecManager"

    .line 236
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 229
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastDataDisconnect paras is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public whitelist broadcastDataDisconnectComplete(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 248
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/oplus/nec/OplusNecManager;->isApnSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    if-ltz p1, :cond_2

    sget v0, Lcom/oplus/nec/OplusNecManager;->SIM_COUNT:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/16 v1, 0x1f45

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 265
    return-void

    .line 255
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v0, "OplusNecManager"

    .line 256
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "invalid subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 249
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastDataDisconnectComplete paras is null "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void
.end method

.method public whitelist broadcastDataEnabledChanged(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .line 468
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastDataEnabledChanged invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void

    .line 472
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 473
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    const/16 v1, 0x1f55

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 475
    return-void
.end method

.method public whitelist broadcastFastRecoveryEvent(IILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "event"    # Ljava/lang/String;

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastFastRecoveryEvent subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusNecManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "errorcode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 350
    const-string v1, "event"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/16 v1, 0x1f72

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 352
    return-void
.end method

.method public whitelist broadcastGameLargeDelayError(IILjava/lang/String;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "gameError"    # Ljava/lang/String;

    .line 422
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastGameLargeDelayError invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 426
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "errorcode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 428
    const-string v1, "gameError"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/16 v1, 0x1f4f

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 430
    return-void
.end method

.method public whitelist broadcastHangUpDelayTimer(IJI)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "millis"    # J
    .param p4, "csOrIms"    # I

    .line 501
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 502
    const-string v0, "broadcastHangUpDelayTimer invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastHangUpDelayTimer ok "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "millis"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 508
    const-string v1, "csOrIms"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const/16 v1, 0x1fa5

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 510
    return-void
.end method

.method public whitelist broadcastImsNetworkStateChanged(IILjava/lang/String;II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "regState"    # I
    .param p5, "imsRat"    # I

    .line 661
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastRegInfoChanged invalid mPhoneId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void

    .line 665
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 666
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 668
    const-string v1, "errorMessage"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v1, "regState"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    const-string v1, "imsRat"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 671
    const/16 v1, 0x1fb4

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 672
    return-void
.end method

.method public whitelist broadcastImsRegisterState(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "imsRegisterState"    # Z

    .line 611
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 612
    const-string v0, "broadcastImsRegisterState invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    return-void

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastImsRegisterState ok "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 618
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "imsRegisterState"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 621
    const/16 v1, 0x1fa9

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 622
    return-void
.end method

.method public whitelist broadcastLimitState(IZ)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "limitState"    # Z

    .line 433
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastLimitState invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    return-void

    .line 437
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 438
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "limitState"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    const/16 v1, 0x1f56

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 440
    return-void
.end method

.method public whitelist broadcastLostConnectionReason(III)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "lostReason"    # I

    .line 478
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastLostConnectionReason invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 483
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "errorcode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    const-string v1, "lostReason"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    const/16 v1, 0x1f57

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 486
    return-void
.end method

.method public whitelist broadcastNecEvent(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "eventId"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .line 154
    iget-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.telephony.action.ACTION_REPORT_NEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "slot_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v1, "evt_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v1, "nec_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 162
    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 164
    :cond_1
    return-void

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist broadcastNetworkDiagnosis(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 693
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastNetworkDiagnosis invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    return-void

    .line 697
    :cond_0
    const/16 v0, 0x1fba

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 698
    return-void
.end method

.method public whitelist broadcastNoDataFlowError(IILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "mNoDataFlowReason"    # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_2

    sget v1, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasons:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p3, :cond_1

    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasonsTime:J

    sub-long/2addr v1, v3

    .line 316
    .local v1, "dataDuration":J
    iget-object v3, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasons:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    sget-wide v3, Lcom/oplus/nec/OplusNecManager;->mNoDataIconSameCauseDuration:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 317
    const-string v3, "OplusNecManager"

    const-string v4, "same mNoDataFlowReason return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 321
    .end local v1    # "dataDuration":J
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasonsTime:J

    .line 322
    iput-object p3, p0, Lcom/oplus/nec/OplusNecManager;->mLastDataFlowReasons:Ljava/lang/String;

    .line 323
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 324
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "errorcode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 325
    const-string v2, "mNoDataFlowReason"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/16 v2, 0x1f4b

    invoke-virtual {p0, p1, v2, v1}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 327
    return-void

    .line 308
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_2
    :goto_0
    const-string v1, "OplusNecManager"

    .line 309
    .local v1, "str":Ljava/lang/String;
    const-string v2, "invalid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method public whitelist broadcastNoDataFlowRecoveryError(IILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "recovery"    # Ljava/lang/String;

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_1

    sget v1, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 341
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "errorcode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    const-string v2, "recovery"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/16 v2, 0x1f4c

    invoke-virtual {p0, p1, v2, v1}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 344
    return-void

    .line 334
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v1, "OplusNecManager"

    .line 335
    .local v1, "str":Ljava/lang/String;
    const-string v2, "invalid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method

.method public whitelist broadcastNoDataIconError(IIILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "protocol"    # I
    .param p4, "cause"    # Ljava/lang/String;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_1

    sget v1, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 297
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "errorcode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 298
    const-string v2, "protocol"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const-string v2, "cause"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/16 v2, 0x1f48

    invoke-virtual {p0, p1, v2, v1}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 301
    return-void

    .line 290
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v1, "OplusNecManager"

    .line 291
    .local v1, "str":Ljava/lang/String;
    const-string v2, "invalid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public whitelist broadcastOlkKeylog(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 198
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastOlkKeylog invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void

    .line 203
    :cond_0
    const/16 v0, 0x1fb7

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method public whitelist broadcastOnlineMeeting(IILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "record"    # Ljava/lang/String;

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_1

    sget v1, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 685
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 687
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "record"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/16 v2, 0x1f58

    invoke-virtual {p0, p1, v2, v1}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 689
    return-void

    .line 679
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v1, "OplusNecManager"

    .line 680
    .local v1, "str":Ljava/lang/String;
    const-string v2, "invalid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method public whitelist broadcastPreciseCallStateChanged(IIIIIII)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "ring"    # I
    .param p3, "foreground"    # I
    .param p4, "background"    # I
    .param p5, "cause"    # I
    .param p6, "preciseCause"    # I
    .param p7, "disconnectState"    # I

    .line 525
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 526
    const-string v0, "broadcastPreciseCallStateChanged invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void

    .line 529
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPreciseCallStateChanged ok "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 532
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "ring"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 533
    const-string v1, "foreground"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 534
    const-string v1, "background"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 535
    const-string v1, "cause"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    const-string v1, "preciseCause"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    const-string v1, "disconnectState"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 540
    const/16 v1, 0x1fa7

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 541
    return-void
.end method

.method public whitelist broadcastPreferredNetworkMode(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "preferredMode"    # I

    .line 457
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 458
    const-string v0, "broadcastPreferredNetworkMode invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPreferredNetworkMode ok ,slotId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "preferredMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 463
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "preferredMode"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 464
    const/16 v1, 0x1f52

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 465
    return-void
.end method

.method public whitelist broadcastRegInfoChanged(IIIII)V
    .locals 2
    .param p1, "voiceRegState"    # I
    .param p2, "voiceNetworkType"    # I
    .param p3, "dataRegState"    # I
    .param p4, "dataNetworkType"    # I
    .param p5, "slotId"    # I

    .line 639
    invoke-direct {p0, p5}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    const-string v0, "OplusNecManager"

    const-string v1, "broadcastRegInfoChanged invalid slotId "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mVoiceRegState:[I

    aget v1, v0, p5

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mVoiceNetworkType:[I

    aget v1, v1, p5

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mDataRegState:[I

    aget v1, v1, p5

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mDataNetworkType:[I

    aget v1, v1, p5

    if-ne p4, v1, :cond_1

    .line 646
    return-void

    .line 648
    :cond_1
    aput p1, v0, p5

    .line 649
    iget-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mVoiceNetworkType:[I

    aput p2, v0, p5

    .line 650
    iget-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mDataRegState:[I

    aput p3, v0, p5

    .line 651
    iget-object v0, p0, Lcom/oplus/nec/OplusNecManager;->mDataNetworkType:[I

    aput p4, v0, p5

    .line 652
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "voiceRegState"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    const-string v1, "voiceNetworkType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 655
    const-string v1, "dataRegState"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 656
    const-string v1, "dataNetworkType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 657
    const/16 v1, 0x1f51

    invoke-virtual {p0, p5, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 658
    return-void
.end method

.method public whitelist broadcastScanQrCodeStats(IILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "QrSuccess"    # Ljava/lang/String;

    .line 443
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 444
    const-string v0, "broadcastScanQrCodeStats invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 447
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 448
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "errorcode"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 449
    const-string v2, "QrResult"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QrResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/16 v1, 0x1f5f

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 452
    return-void
.end method

.method public whitelist broadcastServiceStateChanged(ZI)V
    .locals 2
    .param p1, "oos"    # Z
    .param p2, "slotId"    # I

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastServiceStateChanged slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/nec/OplusNecManager;->necLog(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public whitelist broadcastSlowDataFlowError(IILjava/lang/String;)V
    .locals 7
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "score"    # Ljava/lang/String;

    .line 355
    const-string v0, "parse failed!"

    const v1, 0xf00b7

    if-ne p2, v1, :cond_1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastSlowDataFlowError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusNecManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :try_start_0
    const-string v1, "#"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "split":[Ljava/lang/String;
    array-length v3, v1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 363
    :cond_0
    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 364
    .local v4, "code":I
    iget-object v5, p0, Lcom/oplus/nec/OplusNecManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/oplus/network/OplusNetworkStackManager;->getInstance(Landroid/content/Context;)Lcom/oplus/network/OplusNetworkStackManager;

    move-result-object v5

    .line 365
    .local v5, "stackManager":Lcom/oplus/network/OplusNetworkStackManager;
    packed-switch v4, :pswitch_data_0

    .line 384
    .end local v1    # "split":[Ljava/lang/String;
    .end local v4    # "code":I
    .end local v5    # "stackManager":Lcom/oplus/network/OplusNetworkStackManager;
    goto :goto_0

    .line 376
    .restart local v1    # "split":[Ljava/lang/String;
    .restart local v4    # "code":I
    .restart local v5    # "stackManager":Lcom/oplus/network/OplusNetworkStackManager;
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "opt result:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 373
    :pswitch_1
    invoke-virtual {v5}, Lcom/oplus/network/OplusNetworkStackManager;->videoStop()V

    .line 374
    return-void

    .line 370
    :pswitch_2
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/oplus/network/OplusNetworkStackManager;->videoFrameLag(Z)V

    .line 371
    return-void

    .line 367
    :pswitch_3
    invoke-virtual {v5, v3}, Lcom/oplus/network/OplusNetworkStackManager;->videoFrameLag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return-void

    .line 381
    .end local v1    # "split":[Ljava/lang/String;
    .end local v4    # "code":I
    .end local v5    # "stackManager":Lcom/oplus/network/OplusNetworkStackManager;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    return-void

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_3

    sget v1, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    if-lt p1, v1, :cond_2

    goto :goto_1

    .line 397
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 398
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "errorcode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    const-string v2, "score"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/16 v2, 0x1f4d

    invoke-virtual {p0, p1, v2, v1}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 401
    return-void

    .line 391
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_3
    :goto_1
    const-string v1, "OplusNecManager"

    .line 392
    .local v1, "str":Ljava/lang/String;
    const-string v2, "invalid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist broadcastSlowDataFlowRecovery(IILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "errorcode"    # I
    .param p3, "score"    # Ljava/lang/String;

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    if-ltz p1, :cond_1

    sget v1, Lcom/oplus/nec/OplusNecManager;->SIM_NUM:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 414
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 415
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "errorcode"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 416
    const-string v2, "score"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const/16 v2, 0x1f4e

    invoke-virtual {p0, p1, v2, v1}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 418
    return-void

    .line 408
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v1, "OplusNecManager"

    .line 409
    .local v1, "str":Ljava/lang/String;
    const-string v2, "invalid subId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void
.end method

.method public whitelist broadcastSrvccStateChanged(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "srvccState"    # I

    .line 544
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 545
    const-string v0, "broadcastSrvccStateChanged invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 571
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastSrvccStateChanged ok "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "srvccState"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    const/16 v1, 0x1fa8

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 577
    return-void
.end method

.method public whitelist broadcastVolteCallKeylog(IILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "event"    # I
    .param p3, "desc"    # Ljava/lang/String;

    .line 598
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 599
    const-string v0, "broadcastVolteCallKeylog invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVolteCallKeylog  slotId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", desc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string v1, "desc"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const/16 v1, 0x1fad

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 608
    return-void
.end method

.method public whitelist broadcastVolteVopsOrSettingChanged(IIZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "event"    # I
    .param p3, "isVolteEnabled"    # Z

    .line 625
    invoke-direct {p0, p1}, Lcom/oplus/nec/OplusNecManager;->isValidSlotId(I)Z

    move-result v0

    const-string v1, "OplusNecManager"

    if-nez v0, :cond_0

    .line 626
    const-string v0, "broadcastVolteVopsOrSettingChanged invalid slotId "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastVolteVopsOrSettingChanged  slotId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ,event:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isVolteEnabled:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    const-string v1, "volteEnabled"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 635
    const/16 v1, 0x1fac

    invoke-virtual {p0, p1, v1, v0}, Lcom/oplus/nec/OplusNecManager;->broadcastNecEvent(IILandroid/os/Bundle;)V

    .line 636
    return-void
.end method

.method public whitelist isApnSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 171
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ims"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist notifyNwDiagnoseInitComplete()V
    .locals 3

    .line 145
    const-string v0, "notifyNwDiagnoseInitComplete..."

    invoke-static {v0}, Lcom/oplus/nec/OplusNecManager;->necLog(Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oplus.telephony.action.ACTION_REPORT_NEC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "evt_id"

    const/16 v2, 0x1f46

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/oplus/nec/OplusNecManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 149
    const-string v2, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 151
    :cond_0
    return-void
.end method
