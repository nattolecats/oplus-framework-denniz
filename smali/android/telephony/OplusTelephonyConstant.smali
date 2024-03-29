.class public interface abstract Landroid/telephony/OplusTelephonyConstant;
.super Ljava/lang/Object;
.source "OplusTelephonyConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/OplusTelephonyConstant$ApCmd2QcrilType;,
        Landroid/telephony/OplusTelephonyConstant$ApCmd2ModemType;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_DEFAULT_SIM_REMOVED:Ljava/lang/String; = "android.intent.action.DEFAULT_SIM_REMOVED"

.field public static final whitelist ACTION_DOWNLOAD_CALIBRATION_DATA:Ljava/lang/String; = "android.intent.action.DOWNLOAD_CALIBRATION_DATA"

.field public static final whitelist ACTION_EMT_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_EMT_CALL_STATE_CHANGED"

.field public static final whitelist ACTION_NEW_INCOMING_CALL:Ljava/lang/String; = "android.intent.action.NEW_INCOMING_CALL"

.field public static final whitelist ACTION_NEW_SIM_DETECTED:Ljava/lang/String; = "android.intent.action.NEW_SIM_DETECTED"

.field public static final whitelist ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.RADIO_OFF"

.field public static final whitelist ACTION_SIM_INFO_UPDATE:Ljava/lang/String; = "oplus.intent.action.SIM_INFO_UPDATE"

.field public static final whitelist ACTION_SIM_INSERTED_STATUS:Ljava/lang/String; = "android.intent.action.SIM_INSERTED_STATUS"

.field public static final whitelist ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final whitelist ACTION_WIFI_FAILOVER_GPRS_DIALOG:Ljava/lang/String; = "oplus.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

.field public static final whitelist ADN_FILE_SIZE:I = 0xfa

.field public static final whitelist APN_REQUEST_FAILED_DUE_TO_RADIO_OFF:I = 0x62

.field public static final whitelist APN_TYPE_CMMAIL:Ljava/lang/String; = "cmmail"

.field public static final whitelist APN_TYPE_DISABLE_ONGOING:I = 0x64

.field public static final whitelist APN_TYPE_DM:Ljava/lang/String; = "dm"

.field public static final whitelist APN_TYPE_NET:Ljava/lang/String; = "net"

.field public static final whitelist APN_TYPE_NOT_AVAILABLE_DUE_TO_RECORDS_NOT_LOADED:I = 0x63

.field public static final whitelist APN_TYPE_RCSE:Ljava/lang/String; = "rcse"

.field public static final whitelist APN_TYPE_TETHERING:Ljava/lang/String; = "tethering"

.field public static final whitelist APN_TYPE_WAP:Ljava/lang/String; = "wap"

.field public static final whitelist BM_ALL_HW_SUPPORT_CHINA:I = 0x2a

.field public static final whitelist BM_ALL_HW_SUPPORT_FOREIGN:I = 0x2b

.field public static final whitelist BM_GSM_1800:I = 0x21

.field public static final whitelist BM_GSM_1900:I = 0x22

.field public static final whitelist BM_GSM_850:I = 0x1f

.field public static final whitelist BM_GSM_850_AND_1800:I = 0x26

.field public static final whitelist BM_GSM_850_AND_1900:I = 0x28

.field public static final whitelist BM_GSM_900:I = 0x20

.field public static final whitelist BM_GSM_900_AND_1800:I = 0x27

.field public static final whitelist BM_WCDMA_1900:I = 0x24

.field public static final whitelist BM_WCDMA_2100:I = 0x25

.field public static final whitelist BM_WCDMA_850:I = 0x23

.field public static final whitelist BM_WCDMA_850_AND_1900:I = 0x29

.field public static final whitelist CTA_ENABLE:Z = false

.field public static final whitelist DISCONNECT_DATA_FLAG:Ljava/lang/String; = "disconnectPdpFlag"

.field public static final whitelist DORMANT_PROBE_INTERVAL:Ljava/lang/String; = "prop.oplus.data_dormant_interval"

.field public static final whitelist EF_CC:I = 0x4f23

.field public static final whitelist EMT_CALL_STATE_ACTIVE:I = 0x2

.field public static final whitelist EMT_CALL_STATE_ALERTING:I = 0x5

.field public static final whitelist EMT_CALL_STATE_DIALING:I = 0x1

.field public static final whitelist EMT_CALL_STATE_ERROR:I = -0x1

.field public static final whitelist EMT_CALL_STATE_HOLDING:I = 0x3

.field public static final whitelist EMT_CALL_STATE_IDLE:I = 0x0

.field public static final whitelist EMT_CALL_STATE_UNKNOWN:I = 0x4

.field public static final whitelist ENCODING_7BIT_LOCKING:I = 0xc

.field public static final whitelist ENCODING_7BIT_LOCKING_SINGLE:I = 0xd

.field public static final whitelist ENCODING_7BIT_SINGLE:I = 0xb

.field public static final whitelist EVENT_ADN_LOAD_ALL_DONE:I = 0x5f

.field public static final whitelist EVENT_ADN_SIZE_DONE:I = 0x3de

.field public static final whitelist EVENT_CALL_FORWARD_DELAY:I = 0x22b8

.field public static final whitelist EVENT_COPY_TEXT_MESSAGE_DONE:I = 0x6e

.field public static final whitelist EVENT_EM_CALL_STATUS_CHANGED:I = 0x73

.field public static final whitelist EVENT_EM_DIAL_DONE:I = 0x6b

.field public static final whitelist EVENT_EM_GET_CURRENT_CALLS_DONE:I = 0x6c

.field public static final whitelist EVENT_EM_HANGUP_DONE:I = 0x6d

.field public static final whitelist EVENT_GET_ADN_FIELD_INFO_DONE:I = 0x66

.field public static final whitelist EVENT_GET_ALL_SPACE:I = 0x65

.field public static final whitelist EVENT_GET_PBC_SIZE_DONE:I = 0x5e

.field public static final whitelist EVENT_GET_SMSC:I = 0x65

.field public static final whitelist EVENT_GET_USED_SPACE:I = 0x64

.field public static final whitelist EVENT_GO_DORMANT_DONE:I = 0x1e61

.field public static final whitelist EVENT_READ_CC_DONE:I = 0x5d

.field public static final whitelist EVENT_READ_PBC_DONE:I = 0x5c

.field public static final whitelist EVENT_SEND_UPLINK_DATA_DONE:I = 0x72

.field public static final whitelist EVENT_SET_SMSC:I = 0x64

.field public static final whitelist EVENT_UPDATE_ADN_DONE:I = 0x5a

.field public static final whitelist EVENT_UPDATE_ANR_DONE:I = 0x3e1

.field public static final whitelist EVENT_UPDATE_EMAIL_DONE:I = 0x3df

.field public static final whitelist EVENT_UPDATE_IAP_DONE:I = 0x3e0

.field public static final whitelist EVENT_UPDATE_PBC_DONE:I = 0x5b

.field public static final whitelist EVENT_USIM_ANR_LOAD_DONE:I = 0x5

.field public static final whitelist EXTRA_CALIBRATION_DATA:Ljava/lang/String; = "calibrationData"

.field public static final whitelist EXTRA_EMT_CALL_NUMBER:Ljava/lang/String; = "number"

.field public static final whitelist EXTRA_EMT_CALL_STATE:Ljava/lang/String; = "state"

.field public static final whitelist EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "PHONE_NUMBER"

.field public static final whitelist EXTRA_PARAMS_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final whitelist FEATURE_ENABLE_CMMAIL:Ljava/lang/String; = "enableCMMAIL"

.field public static final whitelist FEATURE_ENABLE_DM:Ljava/lang/String; = "enableDM"

.field public static final whitelist FEATURE_ENABLE_NET:Ljava/lang/String; = "enableNET"

.field public static final whitelist FEATURE_ENABLE_WAP:Ljava/lang/String; = "enableWAP"

.field public static final whitelist GEMINI_DEFAULT_SIM_MODE:Ljava/lang/String; = "persist.radio.default_sim_mode"

.field public static final whitelist GEMINI_DEFAULT_SIM_PROP:Ljava/lang/String; = "persist.radio.default_sim"

.field public static final whitelist GEMINI_GPRS_TRANSFER_TYPE:Ljava/lang/String; = "gemini.gprs.transfer.type"

.field public static final whitelist GEMINI_SIM_1:I = 0x0

.field public static final whitelist GEMINI_SIM_2:I = 0x1

.field public static final whitelist GEMINI_SIM_3:I = 0x2

.field public static final whitelist GEMINI_SIM_4:I = 0x3

.field public static final whitelist GEMINI_SIM_ID_KEY:Ljava/lang/String; = "simId"

.field public static final whitelist GEMINI_SIM_NUM_PROP:Ljava/lang/String; = "persist.gemini.sim_num"

.field public static final whitelist GEMINI_SIP_CALL:I = -0x1

.field public static final whitelist HEADER_SIZE:I = 0x8

.field public static final whitelist INTENT_KEY_ICC_STATE:Ljava/lang/String; = "state"

.field public static final whitelist INT_SIZE:I = 0x4

.field public static final whitelist IS_VT_CALL:Ljava/lang/String; = "isVtCall"

.field public static final whitelist LOCK_TAG:Ljava/lang/String; = "MMDATA_UP"

.field public static final whitelist MAXNUM_RETRY_SIMRECORD:I = 0x3

.field public static final whitelist MAX_USER_DATA_BYTES_WITH_DATA_SMS_HEADER:I = 0x85

.field public static final whitelist MAX_USER_DATA_BYTES_WITH_DATA_SMS_HEADER_AND_CONCATENATED_SMS_HEADER:I = 0x80

.field public static final whitelist MULTI_SIM_ID_KEY:Ljava/lang/String; = "simid"

.field public static final whitelist NV_SERVICE_DOMAIN_PREF_I:I = 0x352

.field public static final whitelist OPLUS_MAX_PB_EMAIL_LENGTH:I = 0x1e

.field public static final whitelist OPLUS_MAX_PB_NAME_LENGTH:I = 0xe

.field public static final whitelist OPLUS_MAX_PB_NUMBER_LENGTH:I = 0x14

.field public static final whitelist OPLUS_SIMPHONEBOOK_STATE_ERROR:I = -0x1

.field public static final whitelist OPLUS_SIMPHONEBOOK_STATE_NOT_READY:I = 0x0

.field public static final whitelist OPLUS_SIMPHONEBOOK_STATE_READY:I = 0x1

.field public static final whitelist PHB_POLL_TIMEOUT:I = 0x3a980

.field public static final whitelist PHB_START_POLL_TIME1:I = 0x1d4c0

.field public static final whitelist PHB_START_POLL_TIME2:I = 0x3a980

.field public static final whitelist POLL_DORMANT_IDLE_MAX_TIMES:I = 0x1

.field public static final whitelist POLL_DORMANT_MAX_TIMES:I = 0x2

.field public static final whitelist POLL_DORMANT_MILLIS:I = 0x1770

.field public static final whitelist POLL_MAX_TIME:I = 0xa

.field public static final whitelist PORT_WAP_VCAL_S:I = 0x23f7

.field public static final whitelist PORT_WAP_VCARD:I = 0x23f4

.field public static final whitelist PROPERTY_CS_NETWORK_TYPE:Ljava/lang/String; = "gsm.cs.network.type"

.field public static final whitelist PROPERTY_CS_NETWORK_TYPE_2:Ljava/lang/String; = "gsm.cs.network.type.2"

.field public static final whitelist PROPERTY_DATA_NETWORK_TYPE_2:Ljava/lang/String; = "gsm.network.type.2"

.field public static final whitelist PROPERTY_GSM_SIM_INSERTED:Ljava/lang/String; = "gsm.sim.inserted"

.field public static final whitelist PROPERTY_ICC_OPERATOR_ALPHA_2:Ljava/lang/String; = "gsm.sim.operator.alpha.2"

.field public static final whitelist PROPERTY_ICC_OPERATOR_DEFAULT_NAME:Ljava/lang/String; = "gsm.sim.operator.default-name"

.field public static final whitelist PROPERTY_ICC_OPERATOR_DEFAULT_NAME_2:Ljava/lang/String; = "gsm.sim.operator.default-name.2"

.field public static final whitelist PROPERTY_ICC_OPERATOR_ISO_COUNTRY_2:Ljava/lang/String; = "gsm.sim.operator.iso-country.2"

.field public static final whitelist PROPERTY_ICC_OPERATOR_NUMERIC_2:Ljava/lang/String; = "gsm.sim.operator.numeric.2"

.field public static final whitelist PROPERTY_ICC_OPERATOR_PNN_NAME:Ljava/lang/String; = "gsm.sim.operator.pnn.name"

.field public static final whitelist PROPERTY_OPERATOR_ALPHA_2:Ljava/lang/String; = "gsm.operator.alpha.2"

.field public static final whitelist PROPERTY_OPERATOR_ISMANUAL_2:Ljava/lang/String; = "operator.ismanual.2"

.field public static final whitelist PROPERTY_OPERATOR_ISO_COUNTRY_2:Ljava/lang/String; = "gsm.operator.iso-country.2"

.field public static final whitelist PROPERTY_OPERATOR_ISROAMING_2:Ljava/lang/String; = "gsm.operator.isroaming.2"

.field public static final whitelist PROPERTY_OPERATOR_NUMERIC_2:Ljava/lang/String; = "gsm.operator.numeric.2"

.field public static final whitelist PROPERTY_ROAMING_INDICATOR_NEEDED:Ljava/lang/String; = "gsm.roaming.indicator.needed"

.field public static final whitelist PROPERTY_ROAMING_INDICATOR_NEEDED_2:Ljava/lang/String; = "gsm.roaming.indicator.needed.2"

.field public static final whitelist PROPERTY_SIM_INFO_READY:Ljava/lang/String; = "gsm.siminfo.ready"

.field public static final whitelist PROPERTY_SIM_STATE_2:Ljava/lang/String; = "gsm.sim.state.2"

.field public static final whitelist QCRILHOOK_BASE:I = 0x80000

.field public static final whitelist QCRILHOOK_GO_DORMANT:I = 0x80003

.field public static final whitelist QCRILHOOK_NV_READ:I = 0x80001

.field public static final whitelist QCRILHOOK_NV_WRITE:I = 0x80002

.field public static final whitelist REASON_GPRS_ATTACHED_TIMEOUT:Ljava/lang/String; = "gprsAttachedTimeout"

.field public static final whitelist REASON_NO_SUCH_PDP:Ljava/lang/String; = "noSuchPdp"

.field public static final whitelist REASON_ON_RADIO_AVAILABLE:Ljava/lang/String; = "onRadioAvailable"

.field public static final whitelist REASON_ON_RECORDS_LOADED:Ljava/lang/String; = "onRecordsLoaded"

.field public static final whitelist REASON_PDP_NOT_ACTIVE:Ljava/lang/String; = "pdpNotActive"

.field public static final whitelist REASON_POLL_STATE_DONE:Ljava/lang/String; = "pollStateDone"

.field public static final whitelist RESULT_BLOCK:I = 0x1

.field public static final whitelist RESULT_ERROR_INVALID_ADDRESS:I = 0x8

.field public static final whitelist RESULT_ERROR_SIM_MEM_FULL:I = 0x7

.field public static final whitelist RESULT_ERROR_SUCCESS:I = 0x0

.field public static final whitelist RESULT_PASS:I = 0x0

.field public static final whitelist SIM_INDICATOR_ABSENT:I = 0x0

.field public static final whitelist SIM_INDICATOR_CONNECTED:I = 0x7

.field public static final whitelist SIM_INDICATOR_INVALID:I = 0x3

.field public static final whitelist SIM_INDICATOR_LOCKED:I = 0x2

.field public static final whitelist SIM_INDICATOR_NORMAL:I = 0x5

.field public static final whitelist SIM_INDICATOR_RADIOOFF:I = 0x1

.field public static final whitelist SIM_INDICATOR_ROAMING:I = 0x6

.field public static final whitelist SIM_INDICATOR_ROAMINGCONNECTED:I = 0x8

.field public static final whitelist SIM_INDICATOR_SEARCHING:I = 0x4

.field public static final whitelist SIM_INDICATOR_UNKNOWN:I = -0x1

.field public static final whitelist SIM_PLUGIN:Ljava/lang/String; = "PLUGIN"

.field public static final whitelist SIM_PLUGOUT:Ljava/lang/String; = "PLUGOUT"

.field public static final whitelist SIM_STATE_SIMREFRESH:I = 0x64

.field public static final whitelist SIM_STATE_SWICTHCARD:I = 0x63

.field public static final whitelist SRV_DOMAIN_PREF_SIZE:I = 0x4

.field public static final whitelist SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final whitelist TOTAL_SIM_OPLUS_COUNT:I = 0x4

.field public static final whitelist mHeaderSize:I

.field public static final whitelist mMatchLen:I = -0x1

.field public static final whitelist mOemIdentifier:Ljava/lang/String; = "QOEMHOOK"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 268
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Landroid/telephony/OplusTelephonyConstant;->mHeaderSize:I

    return-void
.end method
