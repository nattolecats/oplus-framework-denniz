.class public Landroid/telephony/OplusTelephonyManager;
.super Ljava/lang/Object;
.source "OplusTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;,
        Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;
    }
.end annotation


# static fields
.field public static final whitelist AUTO_NR_MODE_KEY:Ljava/lang/String; = "autoNrMode"

.field public static final whitelist BUNDLE_CONTENT:Ljava/lang/String; = "content"

.field public static final blacklist CARD_NOT_PRESENT:I = -0x2

.field public static final blacklist CARD_TYPE_CB:I = 0x5

.field public static final whitelist CARD_TYPE_CM:I = 0x2

.field public static final whitelist CARD_TYPE_CT:I = 0x1

.field public static final whitelist CARD_TYPE_CU:I = 0x3

.field public static final whitelist CARD_TYPE_OTHER:I = 0x4

.field public static final whitelist CARD_TYPE_TEST:I = 0x9

.field public static final whitelist CARD_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CT_AUTO_IMS_REG_PACKAGE:Ljava/lang/String; = "com.oppo.ctautoregist"

.field public static final blacklist DUAL_LTE_SWITCH:Ljava/lang/String; = "oplus_customize_dual_lte_switch"

.field public static final blacklist DUAL_LTE_SWITCH_DEFAULT:Ljava/lang/String; = "oplus_customize_dual_lte_switch_default"

.field public static final whitelist EVENT_CALL_BASE:I = 0xfa0

.field public static final whitelist EVENT_CALL_CLEAN_ALL_CONN:I = 0xfa8

.field public static final whitelist EVENT_CALL_CLEAN_CONN:I = 0xfa7

.field public static final blacklist EVENT_CALL_CRSTYPE_UPDATE:I = 0xfb0

.field public static final whitelist EVENT_CALL_END_CALLTRACKER_STATE:I = 0xfaa

.field public static final whitelist EVENT_CALL_GET_AUTO_ANSWER:I = 0xfa4

.field public static final whitelist EVENT_CALL_GET_CURRENT_CALLS:I = 0xfa6

.field public static final whitelist EVENT_CALL_GET_ECC_LIST:I = 0xfa2

.field public static final whitelist EVENT_CALL_GET_VONR_STATE:I = 0xfad

.field public static final whitelist EVENT_CALL_GET_VONR_VISIBLE:I = 0xfae

.field public static final whitelist EVENT_CALL_MARK_DISCONNECTING_STATE:I = 0xfab

.field public static final blacklist EVENT_CALL_PROGRESS_INFO:I = 0xfb1

.field public static final whitelist EVENT_CALL_SET_AUTO_ANSWER:I = 0xfa5

.field public static final whitelist EVENT_CALL_SET_ECC_LIST:I = 0xfa3

.field public static final whitelist EVENT_CALL_SET_VONR_STATE:I = 0xfac

.field public static final whitelist EVENT_CALL_UPDATE_CALLTRACKER_STATE:I = 0xfa9

.field public static final whitelist EVENT_CALL_UPDATE_VOLTE_FR2:I = 0xfa1

.field public static final whitelist EVENT_CALL_VONR_VISIBLE_CHANGED:I = 0xfaf

.field public static final whitelist EVENT_COMMON_BASE:I = 0x3e8

.field public static final whitelist EVENT_COMMON_MATCH_UNLOCK:I = 0x3ea

.field public static final whitelist EVENT_COMMON_OEM_RIL_REQUEST:I = 0x3e9

.field public static final whitelist EVENT_DATA_ACTION_APN_RESTORE:I = 0xbc2

.field public static final whitelist EVENT_DATA_ACTION_APN_TO_NET:I = 0xbc4

.field public static final whitelist EVENT_DATA_ACTION_AUTO_PLMN:I = 0xbbf

.field public static final whitelist EVENT_DATA_ACTION_RETRY_PDN:I = 0xbc0

.field public static final whitelist EVENT_DATA_BASE:I = 0xbb8

.field public static final whitelist EVENT_DATA_CHECK_APN_MANUAL_ADD:I = 0xbc1

.field public static final whitelist EVENT_DATA_CHECK_APN_WAP:I = 0xbc3

.field public static final whitelist EVENT_DATA_CHECK_DNS:I = 0xbb9

.field public static final whitelist EVENT_DATA_CHECK_HTTP:I = 0xbba

.field public static final whitelist EVENT_DATA_CHECK_PDN:I = 0xbbd

.field public static final whitelist EVENT_DATA_CHECK_SIGNAL:I = 0xbbc

.field public static final whitelist EVENT_DATA_CHECK_SIM:I = 0xbbb

.field public static final whitelist EVENT_DATA_CHECK_VPN:I = 0xbbe

.field public static final whitelist EVENT_DATA_GAME_BATTLE_SCENE:I = 0xbc9

.field public static final whitelist EVENT_DATA_IS_MULTIPLE_TIMEZONE:I = 0xbc8

.field public static final whitelist EVENT_DATA_REPORT_GAME_LATENCY:I = 0xbc5

.field public static final whitelist EVENT_DATA_REPORT_GAME_LEVEL:I = 0xbc6

.field public static final whitelist EVENT_DATA_SET_GEO_IP_TIMEZONE:I = 0xbc7

.field public static final blacklist EVENT_GET_GAME_CLOSE_SA_KPI:I = 0x17a1

.field public static final whitelist EVENT_GET_MCC:I = 0x1796

.field public static final blacklist EVENT_GET_MOTION_STATE:I = 0x1b59

.field public static final blacklist EVENT_GET_REGION_LOCK_STATUS:I = 0x17a0

.field public static final blacklist EVENT_GET_SIMLOCK_CATEGORY_DATA:I = 0x179a

.field public static final blacklist EVENT_GET_SIMLOCK_FUSE_STATUS:I = 0x179b

.field public static final blacklist EVENT_GET_SIMLOCK_RSU_MODE:I = 0x179c

.field public static final blacklist EVENT_GET_SIMLOCK_STATUS:I = 0x1799

.field public static final whitelist EVENT_GET_WIFI_CELL_KPI:I = 0x1795

.field public static final blacklist EVENT_IS_CLOASE_SA_REASON:I = 0xbcd

.field public static final whitelist EVENT_KEY:Ljava/lang/String; = "event"

.field public static final whitelist EVENT_MAX:I = 0x1f40

.field public static final whitelist EVENT_OP_GET_ANT_LOCK:I = 0x139b

.field public static final whitelist EVENT_OP_GET_SAR_DSI:I = 0x13a0

.field public static final whitelist EVENT_OP_GET_SAR_MCC:I = 0x139e

.field public static final whitelist EVENT_OP_GET_SAR_OTA_STATE:I = 0x13a3

.field public static final whitelist EVENT_OP_GET_SAR_STATE:I = 0x13a4

.field public static final whitelist EVENT_OP_NVBK_MISC_INFO:I = 0x13a8

.field public static final whitelist EVENT_OP_NVBK_MODEM_NV_CHECK:I = 0x13a7

.field public static final whitelist EVENT_OP_NVBK_NV_BACKUP:I = 0x13a9

.field public static final whitelist EVENT_OP_NVBK_NV_RESTORE:I = 0x13aa

.field public static final whitelist EVENT_OP_NVBK_READ_ADRC_CONFIG:I = 0x13ac

.field public static final whitelist EVENT_OP_NVBK_WRITE_ADRC_CONFIG:I = 0x13ab

.field public static final whitelist EVENT_OP_SET_ANT_LOCK:I = 0x139c

.field public static final whitelist EVENT_OP_SET_NR_BAND_AND_CELL:I = 0x13a5

.field public static final whitelist EVENT_OP_SET_NR_BAND_ONLY:I = 0x13a6

.field public static final whitelist EVENT_OP_SET_SAR_DSI:I = 0x139f

.field public static final whitelist EVENT_OP_SET_SAR_MCC:I = 0x139d

.field public static final whitelist EVENT_OP_SET_SAR_OTA_STATE:I = 0x13a2

.field public static final whitelist EVENT_OP_SET_SAR_SENSOR_STATE:I = 0x13a1

.field public static final blacklist EVENT_OP_TEST_CARD_ON_OFF:I = 0x13ad

.field public static final whitelist EVENT_PIN_PUK_RETRY_UPDATE:I = 0x178e

.field public static final blacklist EVENT_POWER_BASE:I = 0x1b58

.field public static final whitelist EVENT_REG_BASE:I = 0x7d0

.field public static final whitelist EVENT_REG_GET_5G_SIGNAL:I = 0x7d3

.field public static final whitelist EVENT_REG_GET_LTE_CA_STATE:I = 0x7da

.field public static final whitelist EVENT_REG_GET_NR_MODE:I = 0x7d9

.field public static final whitelist EVENT_REG_GET_RADIO_INFO:I = 0x7d2

.field public static final whitelist EVENT_REG_GET_RADIO_ON:I = 0x7d7

.field public static final whitelist EVENT_REG_GET_REGION_NETLOCK_STATE_INFO:I = 0x7db

.field public static final whitelist EVENT_REG_GET_REGION_NETLOCK_TEST_INFO:I = 0x7dd

.field public static final whitelist EVENT_REG_IS_CAPABILITY_SWITCH:I = 0x7df

.field public static final whitelist EVENT_REG_LTE_CA_STATE:I = 0x7d6

.field public static final whitelist EVENT_REG_OEM_COMMON_REQ:I = 0x7d4

.field public static final whitelist EVENT_REG_SET_CELL_INFO_LIST_RATE:I = 0x7d1

.field public static final whitelist EVENT_REG_SET_NR_MODE:I = 0x7d8

.field public static final whitelist EVENT_REG_SET_REGION_NETLOCK_STATE_INFO:I = 0x7dc

.field public static final whitelist EVENT_REG_SET_REGION_NETLOCK_TEST_INFO:I = 0x7de

.field public static final whitelist EVENT_REG_UPDATE_PPLMN_LIST:I = 0x7d5

.field public static final whitelist EVENT_RF_BASE:I = 0x1388

.field public static final whitelist EVENT_RF_GET_ASDIV_STATE:I = 0x1397

.field public static final whitelist EVENT_RF_GET_BAND_MODE:I = 0x138a

.field public static final whitelist EVENT_RF_GET_LAB_ANTPOS:I = 0x1399

.field public static final whitelist EVENT_RF_GET_RFFE_DEV_INFO:I = 0x1393

.field public static final whitelist EVENT_RF_GET_TX_POWER:I = 0x139a

.field public static final whitelist EVENT_RF_GET_TX_RX_INFO:I = 0x138e

.field public static final whitelist EVENT_RF_LOCK_GSM_ARFCN:I = 0x1390

.field public static final whitelist EVENT_RF_LOCK_LTE_CELL:I = 0x1391

.field public static final whitelist EVENT_RF_NOTICE_UPDATE_VOLTE_FR:I = 0x1392

.field public static final whitelist EVENT_RF_QUERY_BAND_MODE:I = 0x138b

.field public static final whitelist EVENT_RF_RFFE_CMD:I = 0x1396

.field public static final whitelist EVENT_RF_SET_BAND_MODE:I = 0x1389

.field public static final whitelist EVENT_RF_SET_FILTER_ARFCN:I = 0x138f

.field public static final whitelist EVENT_RF_SET_LAB_ANTPOS:I = 0x1398

.field public static final whitelist EVENT_RF_SET_MODEM_GPIO:I = 0x138d

.field public static final whitelist EVENT_RF_SET_NV_PROCESS_CMD:I = 0x138c

.field public static final whitelist EVENT_RF_SET_SAR_RF_STATE_V2:I = 0x1394

.field public static final whitelist EVENT_RF_SET_SAR_RF_STATE_V3:I = 0x1395

.field public static final blacklist EVENT_SETUP_DATA_COMPLETE:I = 0xbcb

.field public static final blacklist EVENT_SETUP_DATA_COMPLETE_FOR_APN_RECOVERY:I = 0xbcc

.field public static final blacklist EVENT_SET_SIM_AIRPLANE_MODE:I = 0x179d

.field public static final whitelist EVENT_SET_SMART_5G_STATUS_ID:I = 0x1794

.field public static final whitelist EVENT_SET_VICE_CARD_GAME_MODE:I = 0x1793

.field public static final whitelist EVENT_SIM_BASE:I = 0x1770

.field public static final whitelist EVENT_SIM_GET_ESIM_GPIO:I = 0x1790

.field public static final whitelist EVENT_SIM_GET_HOTSWAP_STATE:I = 0x1775

.field public static final whitelist EVENT_SIM_GET_IF_TEST_SIM:I = 0x1771

.field public static final whitelist EVENT_SIM_GET_IMPI:I = 0x1773

.field public static final whitelist EVENT_SIM_GET_IMS_TYPE:I = 0x1772

.field public static final whitelist EVENT_SIM_GET_OPERATOR_SWITCH_ENABLE:I = 0x1776

.field public static final whitelist EVENT_SIM_GET_OP_ID:I = 0x1774

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_ACTIVATE_TIME:I = 0x178a

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_COMBO_TYPE:I = 0x177b

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_CURRENTRETRY:I = 0x177d

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_FACTORY_RESET_TIME:I = 0x1784

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_FEATURE:I = 0x1786

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_FEESTATE:I = 0x177f

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_IS_REGION_VIETNAM:I = 0x1782

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_LOCKDEVICE:I = 0x178c

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_LOCKMARK:I = 0x1785

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_LOCKTYPE:I = 0x1779

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_MAXRETRY:I = 0x177c

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_OPERATOR:I = 0x1778

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_POPUP_TYPE:I = 0x177a

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_SIM1_STATE:I = 0x1780

.field public static final whitelist EVENT_SIM_GET_SIMLOCK_SIM2_STATE:I = 0x1781

.field public static final whitelist EVENT_SIM_GET_VSIM_ID:I = 0x1777

.field public static final whitelist EVENT_SIM_SET_ESIM_GPIO:I = 0x1791

.field public static final whitelist EVENT_SIM_SET_POWER:I = 0x1792

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_ACCUMULATED_TIME:I = 0x1788

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_ACTIVATE_TIME:I = 0x1789

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_FACTORY_RESET_TIME:I = 0x1783

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_FEESTATE:I = 0x177e

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_KDDI_SIMLOCK_FILE:I = 0x178f

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_LOCK:I = 0x178d

.field public static final whitelist EVENT_SIM_SET_SIMLOCK_UNLOCK:I = 0x1787

.field public static final whitelist EVENT_SIM_SET_VSIM_ID:I = 0x178b

.field public static final whitelist EVENT_SIM_SET_VSIM_STATUS:I = 0x1797

.field public static final blacklist EVENT_SMART5G_THERMAL_CONTROL:I = 0x1798

.field public static final blacklist EVENT_START_TIMER_FOR_SETUP_DATA:I = 0xbca

.field public static final blacklist EVENT_UPDATE_REGION_LOCK_BLOB:I = 0x179e

.field public static final blacklist EVENT_UPDATE_REGION_LOCK_STATUS:I = 0x179f

.field private static final blacklist GAME_SPACE_MODE_INGAME:Ljava/lang/String; = "1"

.field private static final blacklist GAME_SPACE_MODE_SAVEGAME:Ljava/lang/String; = "debug_gamemode_savegame"

.field private static final blacklist GAME_SPACE_MODE_VALUE:Ljava/lang/String; = "debug_gamemode_value"

.field private static final blacklist GET_TARGET_SDK_VERSION_CODE_CHANGE_EXT:J = 0x8a6c689L

.field public static final blacklist INVALID_STATE:I = -0x1

.field public static final whitelist IS_MULTIPLE_TIME_ZONE:Ljava/lang/String; = "ismultipletimezone"

.field public static final blacklist NOT_PROVISIONED:I = 0x0

.field public static final blacklist NR_MODE_CHANGED_ALLOW:Ljava/lang/String; = "NrModeChangedAllow"

.field private static final blacklist OEM_REGSERVICE:Ljava/lang/String; = "com.coloros.regservice"

.field public static final whitelist PACKAGE_KEY:Ljava/lang/String; = "package"

.field public static final whitelist PLATFORM_TYPE_MTK:I = 0x2

.field public static final whitelist PLATFORM_TYPE_NONE:I = 0x0

.field public static final whitelist PLATFORM_TYPE_QCOM:I = 0x1

.field private static final blacklist PLMN_CARRIER_CONFIG_SERVICE:Ljava/lang/String; = "plmn_carrier_config"

.field public static final blacklist PROVISIONED:I = 0x1

.field public static final whitelist RESULT_DATA:Ljava/lang/String; = "hookdata"

.field public static final whitelist RESULT_KEY:Ljava/lang/String; = "result"

.field public static final whitelist SA_PRE_KEY:Ljava/lang/String; = "saPreEnabled"

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "oplus_telephony_ext"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusTelephonyManager"

.field public static final whitelist TIME_ZONE:Ljava/lang/String; = "timezone"

.field private static final blacklist isMTKPlatform:Z

.field private static final blacklist isQcomPlatform:Z

.field private static blacklist sInstance:Landroid/telephony/OplusTelephonyManager; = null

.field private static final blacklist sPriorityHigh:I = 0x3

.field private static final blacklist sPriorityLow:I = 0x0

.field private static final blacklist sValiddityPeriodlow:I = 0x5

.field private static final blacklist sValidityPeriodHight:I = 0x9b0a0


# instance fields
.field private blacklist mBinder:Landroid/os/IBinder;

.field private final blacklist mContext:Landroid/content/Context;

.field blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist mNeedCallback:Z

.field private blacklist mTelephonyExtCallback:Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

.field private blacklist mTelephonyExtCbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyExtCbList(Landroid/telephony/OplusTelephonyManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetIOplusTelephonyExt(Landroid/telephony/OplusTelephonyManager;)Lcom/android/internal/telephony/IOplusTelephonyExt;
    .locals 0

    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendResolverResult(Landroid/telephony/OplusTelephonyManager;Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/OplusTelephonyManager;->sendResolverResult(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/telephony/OplusTelephonyManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Ljava/util/List;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/telephony/OplusTelephonyManager;->notifySmsError(Ljava/util/List;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 422
    nop

    .line 423
    const-string v0, "ro.boot.hardware"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Landroid/telephony/OplusTelephonyManager;->isQcomPlatform:Z

    .line 424
    nop

    .line 425
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/telephony/OplusTelephonyManager;->isMTKPlatform:Z

    .line 431
    const/4 v0, 0x0

    sput-object v0, Landroid/telephony/OplusTelephonyManager;->sInstance:Landroid/telephony/OplusTelephonyManager;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/OplusTelephonyManager;->mNeedCallback:Z

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    .line 2618
    new-instance v0, Landroid/telephony/OplusTelephonyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/OplusTelephonyManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/OplusTelephonyManager;)V

    iput-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 462
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 463
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {p1}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iput-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 467
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFeatureId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->createFeatureContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 470
    :cond_1
    iput-object p1, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 472
    :goto_0
    return-void
.end method

.method public static blacklist calculateLengthOem(Ljava/lang/String;ZII)[I
    .locals 1
    .param p0, "messageBody"    # Ljava/lang/String;
    .param p1, "use7bitOnly"    # Z
    .param p2, "subId"    # I
    .param p3, "encodingType"    # I

    .line 1012
    invoke-static {p0, p1, p2, p3}, Landroid/telephony/OplusSmsMessage;->calculateLengthOem(Ljava/lang/String;ZII)[I

    move-result-object v0

    return-object v0
.end method

.method private blacklist checkInvokeByCtReg(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1761
    if-eqz p1, :cond_3

    .line 1762
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1763
    .local v0, "pkgInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInvokeByCtReg : pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const-string v1, "com.oppo.ctautoregist"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1765
    :cond_0
    const-string v1, "com.coloros.regservice"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1766
    const-string v2, "com.oplus.ctautoregist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.oplus.regservice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1767
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 1770
    .end local v0    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkRevokeByGame(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1583
    const/4 v0, 0x0

    const-string v1, "OplusTelephonyManager"

    if-eqz p1, :cond_2

    .line 1584
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1585
    .local v2, "pkgInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1586
    const-string v4, "com.oplus.cosa"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1587
    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1588
    .local v0, "res":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRevokeByGame false,pkgInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_1
    return v0

    .line 1593
    .end local v0    # "res":Z
    .end local v2    # "pkgInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2
    const-string v2, "checkRevokeByGame, err"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    return v0
.end method

.method private blacklist divideMessageOemInner(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1049
    if-eqz p1, :cond_1

    .line 1053
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/telephony/OplusSmsMessage;->oemFragmentText(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    .line 1054
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divideMessageOem,subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " encodingType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_0
    return-object v0

    .line 1058
    .end local v0    # "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1061
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1050
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist enforceOplusPhoneState(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 2719
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "com.oplus.permission.safe.PHONE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    return-void
.end method

.method private blacklist getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;
    .locals 1

    .line 1790
    const-string v0, "oplus_telephony_ext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getIPlmnCarrierConfigLoader()Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;
    .locals 1

    .line 3247
    const-string v0, "plmn_carrier_config"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPlmnCarrierConfigLoader$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getISmsService()Lcom/android/internal/telephony/ISms;
    .locals 1

    .line 1357
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1359
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 3

    .line 1365
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1366
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1367
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1363
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1368
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    .line 1371
    return-object v0

    .line 1369
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/telephony/OplusTelephonyManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 449
    const-class v0, Landroid/telephony/OplusTelephonyManager;

    monitor-enter v0

    .line 450
    :try_start_0
    sget-object v1, Landroid/telephony/OplusTelephonyManager;->sInstance:Landroid/telephony/OplusTelephonyManager;

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Landroid/telephony/OplusTelephonyManager;

    invoke-direct {v1, p0}, Landroid/telephony/OplusTelephonyManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/telephony/OplusTelephonyManager;->sInstance:Landroid/telephony/OplusTelephonyManager;

    .line 453
    :cond_0
    sget-object v1, Landroid/telephony/OplusTelephonyManager;->sInstance:Landroid/telephony/OplusTelephonyManager;

    monitor-exit v0

    return-object v1

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 578
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 581
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist getProductPlatform()I
    .locals 1

    .line 593
    sget-boolean v0, Landroid/telephony/OplusTelephonyManager;->isQcomPlatform:Z

    if-eqz v0, :cond_0

    .line 594
    const/4 v0, 0x1

    return v0

    .line 595
    :cond_0
    sget-boolean v0, Landroid/telephony/OplusTelephonyManager;->isMTKPlatform:Z

    if-eqz v0, :cond_1

    .line 596
    const/4 v0, 0x2

    return v0

    .line 598
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist getRemoteMessenger()Landroid/os/Messenger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2337
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2338
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2339
    new-instance v1, Landroid/os/Messenger;

    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getRemoteMessenger()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    return-object v1

    .line 2341
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getRespMsgId(Landroid/os/Message;)I
    .locals 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 490
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 491
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 492
    const-string v1, "what"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 494
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getSmsManagerForSubscriber(I)Landroid/telephony/SmsManager;
    .locals 1
    .param p0, "subId"    # I

    .line 1407
    invoke-static {p0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isMTKPlatform()Z
    .locals 1

    .line 607
    sget-boolean v0, Landroid/telephony/OplusTelephonyManager;->isMTKPlatform:Z

    return v0
.end method

.method public static blacklist isNotInGameMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 2426
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 2427
    const-string v1, "isNotInGameMode context is null, return true"

    invoke-static {v1}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 2428
    return v0

    .line 2430
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "debug_gamemode_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2431
    .local v1, "gameModeValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "OplusTelephonyManager"

    if-nez v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 2435
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "debug_gamemode_savegame"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2436
    const-string v2, "isNotInGameMode SystemProperties savedgame is null"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    return v0

    .line 2439
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 2432
    :cond_3
    :goto_0
    const-string v2, "isNotInGameMode not in GameMode"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    return v0
.end method

.method public static whitelist isQcomPlatform()Z
    .locals 1

    .line 616
    sget-boolean v0, Landroid/telephony/OplusTelephonyManager;->isQcomPlatform:Z

    return v0
.end method

.method public static blacklist isValidEvent(I)Z
    .locals 1
    .param p0, "event"    # I

    .line 485
    const/16 v0, 0x3e8

    if-le p0, v0, :cond_0

    const/16 v0, 0x1f40

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 626
    const-string v0, "OplusTelephonyManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return-void
.end method

.method private blacklist notifyBinderDeath()V
    .locals 3

    .line 2647
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2648
    :try_start_0
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;

    .line 2649
    .local v2, "cb":Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;
    invoke-interface {v2}, Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;->onbinderDied()V

    .line 2650
    .end local v2    # "cb":Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;
    goto :goto_0

    .line 2651
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2652
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    .line 2653
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2655
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mBinder:Landroid/os/IBinder;

    .line 2656
    return-void

    .line 2651
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static blacklist notifySmsError(Landroid/app/PendingIntent;I)V
    .locals 1
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "error"    # I

    .line 1375
    if-eqz p0, :cond_0

    .line 1377
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    goto :goto_0

    .line 1378
    :catch_0
    move-exception v0

    .line 1382
    :cond_0
    :goto_0
    return-void
.end method

.method private static blacklist notifySmsError(Ljava/util/List;I)V
    .locals 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 1385
    .local p0, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_0

    .line 1386
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1387
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, p1}, Landroid/telephony/OplusTelephonyManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 1388
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_0

    .line 1390
    :cond_0
    return-void
.end method

.method private blacklist resolveSubscriptionForOperation(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;I)V
    .locals 12
    .param p1, "resolverResult"    # Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;
    .param p2, "subId"    # I

    .line 1273
    const-string v0, "OplusTelephonyManager"

    const/4 v1, 0x0

    .line 1275
    .local v1, "isSmsSimPickActivityNeeded":Z
    :try_start_0
    invoke-static {}, Landroid/telephony/OplusTelephonyManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 1276
    .local v2, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_0

    .line 1285
    invoke-interface {v2, p2}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1289
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v2

    .line 1288
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v3, "resolveSubscriptionForOperation"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1290
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1291
    invoke-direct {p0, p1, p2, v2}, Landroid/telephony/OplusTelephonyManager;->sendResolverResult(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;IZ)V

    .line 1292
    return-void

    .line 1295
    :cond_1
    const-string v3, "resolveSubscriptionForOperation isSmsSimPickActivityNeeded is true for calling package. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/4 v3, 0x1

    :try_start_1
    invoke-static {}, Landroid/telephony/OplusTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 1304
    .local v4, "binder":Lcom/android/internal/telephony/ITelephony;
    new-instance v5, Landroid/telephony/OplusTelephonyManager$3;

    invoke-direct {v5, p0, p1}, Landroid/telephony/OplusTelephonyManager$3;-><init>(Landroid/telephony/OplusTelephonyManager;Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;)V

    .line 1312
    .local v5, "pendingSubIdResult":Lcom/android/internal/telephony/IIntegerConsumer;
    if-eqz v4, :cond_2

    .line 1313
    const-string v6, "com.android.internal.telephony.ITelephony"

    const-string v7, "enqueueSmsPickResult"

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v2

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    const-class v10, Lcom/android/internal/telephony/IIntegerConsumer;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v10, v8, v2

    aput-object v10, v8, v3

    aput-object v5, v8, v11

    invoke-static {v4, v6, v7, v9, v8}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1327
    .end local v4    # "binder":Lcom/android/internal/telephony/ITelephony;
    .end local v5    # "pendingSubIdResult":Lcom/android/internal/telephony/IIntegerConsumer;
    :cond_2
    goto :goto_1

    .line 1320
    :catch_1
    move-exception v2

    .line 1321
    .local v2, "ex":Ljava/lang/Exception;
    const-string v4, "Unable to launch activity"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    invoke-direct {p0, p1, p2, v3}, Landroid/telephony/OplusTelephonyManager;->sendResolverResult(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;IZ)V

    .line 1328
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private blacklist sendMultipartTextMessageInternalOem(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIII)V
    .locals 27
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I
    .param p10, "encodingType"    # I
    .param p11, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZIII)V"
        }
    .end annotation

    .line 1106
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1109
    if-eqz v15, :cond_9

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_9

    .line 1113
    if-ltz v0, :cond_1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v25, v0

    goto :goto_1

    .line 1114
    :cond_1
    :goto_0
    const/4 v0, -0x1

    move/from16 v25, v0

    .line 1117
    .end local p7    # "priority":I
    .local v25, "priority":I
    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_3

    const v0, 0x9b0a0

    if-le v1, v0, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v26, v1

    goto :goto_3

    .line 1118
    :cond_3
    :goto_2
    const/4 v0, -0x1

    move/from16 v26, v0

    .line 1121
    .end local p9    # "validityPeriod":I
    .local v26, "validityPeriod":I
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_6

    .line 1122
    move/from16 v9, v25

    .line 1123
    .local v9, "finalPriority":I
    move/from16 v11, v26

    .line 1124
    .local v11, "finalValidity":I
    if-eqz p6, :cond_4

    .line 1125
    new-instance v0, Landroid/telephony/OplusTelephonyManager$1;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Landroid/telephony/OplusTelephonyManager$1;-><init>(Landroid/telephony/OplusTelephonyManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V

    move/from16 v3, p11

    invoke-direct {v2, v0, v3}, Landroid/telephony/OplusTelephonyManager;->resolveSubscriptionForOperation(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;I)V

    move-object v10, v13

    move-object v8, v14

    move-object v1, v15

    goto/16 :goto_6

    .line 1151
    :cond_4
    move-object/from16 v2, p0

    move/from16 v3, p11

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1152
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_5

    .line 1153
    const/4 v1, 0x0

    move-object v12, v0

    move-object v10, v13

    move/from16 v13, p11

    move-object v8, v14

    move-object v14, v1

    move-object v1, v15

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move/from16 v20, p6

    move/from16 v21, v9

    move/from16 v22, p8

    move/from16 v23, v11

    move/from16 v24, p10

    :try_start_1
    invoke-interface/range {v12 .. v24}, Lcom/android/internal/telephony/IOplusTelephonyExt;->sendMultipartTextForSubscriberWithOptionsOem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1158
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1152
    .restart local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_5
    move-object v10, v13

    move-object v8, v14

    move-object v1, v15

    .line 1162
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :goto_4
    goto :goto_6

    .line 1158
    :catch_1
    move-exception v0

    move-object v10, v13

    move-object v8, v14

    move-object v1, v15

    .line 1159
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMultipartTextMessageInternal (no persist): Couldn\'t send SMS - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1160
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1159
    const-string v5, "OplusTelephonyManager"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/16 v4, 0x1f

    invoke-static {v8, v4}, Landroid/telephony/OplusTelephonyManager;->notifySmsError(Ljava/util/List;I)V

    .line 1164
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "finalPriority":I
    .end local v11    # "finalValidity":I
    :goto_6
    goto :goto_8

    .line 1165
    :cond_6
    move-object/from16 v2, p0

    move/from16 v3, p11

    move-object v10, v13

    move-object v8, v14

    move-object v1, v15

    const/4 v0, 0x0

    .line 1166
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 1167
    .local v4, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v5, 0x0

    if-eqz v8, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1168
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/app/PendingIntent;

    .line 1170
    :cond_7
    if-eqz v10, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 1171
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Landroid/app/PendingIntent;

    move-object/from16 v16, v4

    goto :goto_7

    .line 1173
    :cond_8
    move-object/from16 v16, v4

    .end local v4    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v16, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_7
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v8, v0

    move-object/from16 v9, v16

    move/from16 v10, p6

    move/from16 v11, v25

    move/from16 v12, p8

    move/from16 v13, v26

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-direct/range {v4 .. v15}, Landroid/telephony/OplusTelephonyManager;->sendTextMessageInternalOem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIII)V

    .line 1177
    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .end local v16    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_8
    return-void

    .line 1109
    .end local v25    # "priority":I
    .end local v26    # "validityPeriod":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_9
    move-object/from16 v2, p0

    move/from16 v3, p11

    .line 1110
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid message body"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1107
    :cond_a
    move-object/from16 v2, p0

    move/from16 v3, p11

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid destinationAddress"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist sendResolverResult(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;IZ)V
    .locals 2
    .param p1, "resolverResult"    # Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;
    .param p2, "subId"    # I
    .param p3, "pickActivityShown"    # Z

    .line 1335
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    invoke-interface {p1, p2}, Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;->onSuccess(I)V

    .line 1337
    return-void

    .line 1340
    :cond_0
    const-wide/32 v0, 0x8a6c689

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 1346
    invoke-interface {p1, p2}, Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;->onSuccess(I)V

    goto :goto_0

    .line 1350
    :cond_1
    invoke-interface {p1}, Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;->onFailure()V

    .line 1352
    :goto_0
    return-void
.end method

.method private blacklist sendTextMessageInternalOem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZIII)V
    .locals 28
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I
    .param p10, "encodingType"    # I
    .param p11, "subId"    # I

    .line 1183
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1187
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1191
    if-ltz v0, :cond_1

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v13, v0

    goto :goto_1

    .line 1192
    :cond_1
    :goto_0
    const/4 v0, -0x1

    move v13, v0

    .line 1195
    .end local p7    # "priority":I
    .local v13, "priority":I
    :goto_1
    const/4 v0, 0x5

    if-lt v1, v0, :cond_3

    const v0, 0x9b0a0

    if-le v1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v14, v1

    goto :goto_3

    .line 1196
    :cond_3
    :goto_2
    const/4 v0, -0x1

    move v14, v0

    .line 1199
    .end local p9    # "validityPeriod":I
    .local v14, "validityPeriod":I
    :goto_3
    move v9, v13

    .line 1200
    .local v9, "finalPriority":I
    move v11, v14

    .line 1211
    .local v11, "finalValidity":I
    if-eqz p6, :cond_4

    .line 1212
    new-instance v0, Landroid/telephony/OplusTelephonyManager$2;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v10, p8

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Landroid/telephony/OplusTelephonyManager$2;-><init>(Landroid/telephony/OplusTelephonyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V

    move/from16 v3, p11

    invoke-direct {v2, v0, v3}, Landroid/telephony/OplusTelephonyManager;->resolveSubscriptionForOperation(Landroid/telephony/OplusTelephonyManager$SubscriptionResolverResult;I)V

    move-object/from16 v4, p4

    goto :goto_4

    .line 1238
    :cond_4
    move-object/from16 v2, p0

    move/from16 v3, p11

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1239
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_5

    .line 1240
    const/16 v17, 0x0

    move-object v15, v0

    move/from16 v16, p11

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v23, p6

    move/from16 v24, v9

    move/from16 v25, p8

    move/from16 v26, v11

    move/from16 v27, p10

    invoke-interface/range {v15 .. v27}, Lcom/android/internal/telephony/IOplusTelephonyExt;->sendTextForSubscriberWithOptionsOem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_5
    move-object/from16 v4, p4

    goto :goto_4

    .line 1246
    :catch_0
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendTextMessageInternal(no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1248
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    const-string v4, "OplusTelephonyManager"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const/16 v1, 0x1f

    move-object/from16 v4, p4

    invoke-static {v4, v1}, Landroid/telephony/OplusTelephonyManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 1252
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    return-void

    .line 1188
    .end local v9    # "finalPriority":I
    .end local v11    # "finalValidity":I
    .end local v13    # "priority":I
    .end local v14    # "validityPeriod":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_6
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v3, p11

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid message body"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1184
    :cond_7
    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move/from16 v3, p11

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid destinationAddress"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public blacklist addGeoFenceEventCallBack(Landroid/telephony/OplusGeoFenceEventCallBack;)V
    .locals 4
    .param p1, "cb"    # Landroid/telephony/OplusGeoFenceEventCallBack;

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addGeoFenceEventCallBack cb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    if-nez p1, :cond_0

    .line 2664
    const-string v0, "addGeoFenceEventCallBack cb cant be null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    return-void

    .line 2668
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2669
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_1

    .line 2670
    invoke-virtual {p1, v0}, Landroid/telephony/OplusGeoFenceEventCallBack;->linkToDeath(Lcom/android/internal/telephony/IOplusTelephonyExt;)V

    .line 2671
    invoke-virtual {p1}, Landroid/telephony/OplusGeoFenceEventCallBack;->getGeoFenceEventCbBinder()Landroid/telephony/IOplusGeoFenceEventCallBack;

    move-result-object v2

    .line 2672
    .local v2, "binder":Landroid/telephony/IOplusGeoFenceEventCallBack;
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->addGeoFenceEventCallBack(Landroid/telephony/IOplusGeoFenceEventCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2676
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    .end local v2    # "binder":Landroid/telephony/IOplusGeoFenceEventCallBack;
    :cond_1
    goto :goto_0

    .line 2674
    :catch_0
    move-exception v0

    .line 2675
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addGeoFenceEventCallBack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist backgroundSearch(II)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "cmdType"    # I

    .line 3143
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3144
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3145
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->backgroundSearch(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3150
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3151
    return v0

    .line 3147
    :catch_0
    move-exception v1

    .line 3148
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backgroundSearch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    return v0
.end method

.method public blacklist barCell(IIIIJ)Z
    .locals 10
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I
    .param p3, "arfch"    # I
    .param p4, "pci"    # I
    .param p5, "barTime"    # J

    .line 3423
    const-string v1, "OplusTelephonyManager"

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 3424
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 3425
    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-wide v8, p5

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/telephony/IOplusTelephonyExt;->barCell(IIIIJ)Z

    move-result v3

    .line 3426
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "barCell result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3427
    return v3

    .line 3429
    .end local v3    # "result":Z
    :cond_0
    return v2

    .line 3430
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v0

    .line 3431
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "barCell fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    return v2
.end method

.method public blacklist canSupSlotSaSupport()Z
    .locals 2

    .line 2491
    const-string v0, "OplusTelephonyManager"

    const-string v1, "canSupSlotSaSupport ..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2494
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2495
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->canSupSlotSaSupport()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2499
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2497
    :catch_0
    move-exception v0

    .line 2498
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2500
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist changeEsimStatus(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 1735
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1736
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1737
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->changeEsimStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1742
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist cleanApnState(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2156
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2157
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2158
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->cleanApnState(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2163
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2164
    return v0

    .line 2160
    :catch_0
    move-exception v1

    .line 2161
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2162
    return v0
.end method

.method public blacklist cleanupConnections(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2086
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2087
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2088
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->cleanupConnections(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2093
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2094
    return v0

    .line 2090
    :catch_0
    move-exception v1

    .line 2091
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2092
    return v0
.end method

.method public blacklist clearCellBlacklist(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 2228
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2229
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2230
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->clearCellBlacklist(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2235
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2236
    return v0

    .line 2232
    :catch_0
    move-exception v1

    .line 2233
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2234
    return v0
.end method

.method public blacklist connect(Z)Z
    .locals 4
    .param p1, "needCallback"    # Z

    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    const-string v0, "oplus_telephony_ext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mBinder:Landroid/os/IBinder;

    .line 2591
    iput-boolean p1, p0, Landroid/telephony/OplusTelephonyManager;->mNeedCallback:Z

    .line 2592
    invoke-virtual {p0}, Landroid/telephony/OplusTelephonyManager;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2593
    iget-boolean v0, p0, Landroid/telephony/OplusTelephonyManager;->mNeedCallback:Z

    if-eqz v0, :cond_1

    .line 2594
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCallback:Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

    if-nez v0, :cond_0

    .line 2595
    new-instance v0, Landroid/telephony/OplusTelephonyManager$4;

    invoke-direct {v0, p0}, Landroid/telephony/OplusTelephonyManager$4;-><init>(Landroid/telephony/OplusTelephonyManager;)V

    iput-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCallback:Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

    .line 2606
    :cond_0
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCallback:Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

    invoke-virtual {p0, v0, v2}, Landroid/telephony/OplusTelephonyManager;->registerCallback(Ljava/lang/String;Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V

    .line 2609
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mBinder:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/telephony/OplusTelephonyManager;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/OplusTelephonyManager;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2613
    goto :goto_0

    .line 2611
    :catch_0
    move-exception v0

    .line 2612
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to link binder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/OplusTelephonyManager;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public blacklist delCellBlacklist(IJ)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "cellid"    # J

    .line 2214
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2215
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2216
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->delCellBlacklist(IJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2221
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2222
    return v0

    .line 2218
    :catch_0
    move-exception v1

    .line 2219
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2220
    return v0
.end method

.method public blacklist disableEndc(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2016
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2017
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2018
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->disableEndc(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2023
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2024
    return v0

    .line 2020
    :catch_0
    move-exception v1

    .line 2021
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2022
    return v0
.end method

.method public blacklist divideMessageOem(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "encodingType"    # I
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1023
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_SMS_7BIT16BIT:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4

    .line 1025
    :cond_0
    sget-boolean v1, Landroid/telephony/OplusTelephonyManager;->isQcomPlatform:Z

    if-eqz v1, :cond_1

    .line 1026
    invoke-direct {p0, p1, p3, p2}, Landroid/telephony/OplusTelephonyManager;->divideMessageOemInner(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1027
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusTelephonyManager;->isMTKPlatform:Z

    if-eqz v1, :cond_3

    .line 1028
    const/4 v1, 0x0

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v0, [Ljava/lang/Object;

    .line 1032
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1028
    const-string v5, "mediatek.telephony.MtkSmsManager"

    const-string v6, "getSmsManagerForSubscriptionId"

    invoke-static {v1, v5, v6, v2, v3}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1033
    .local v1, "mtkSmsManager":Ljava/lang/Object;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mtkSmsManager="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 1034
    if-eqz v1, :cond_2

    .line 1035
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    .line 1039
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1035
    const-string v0, "divideMessage"

    invoke-static {v1, v5, v0, v3, v2}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    .end local v1    # "mtkSmsManager":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 1042
    :cond_3
    const-string v0, "divideMessageOem, unkonw platform"

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 1045
    :cond_4
    :goto_0
    invoke-static {p3}, Landroid/telephony/OplusTelephonyManager;->getSmsManagerForSubscriber(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist enableUiccApplications(IZ)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUiccApplications for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2480
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2481
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->enableUiccApplications(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2483
    :catch_0
    move-exception v0

    .line 2484
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2486
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist forcePlmnScan(IILjava/lang/String;)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "rat"    # I
    .param p3, "plmn"    # Ljava/lang/String;

    .line 3094
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3095
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3096
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->forcePlmnScan(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3101
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3102
    return v0

    .line 3098
    :catch_0
    move-exception v1

    .line 3099
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forcePlmnScan: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    return v0
.end method

.method public blacklist getActionExecuteTime(II)J
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "action"    # I

    .line 1473
    const-wide/16 v0, 0x0

    .line 1475
    .local v0, "lastActionTime":J
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    .line 1476
    .local v2, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v2, :cond_0

    .line 1477
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getActionExecuteTime(II)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 1481
    .end local v2    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1479
    :catch_0
    move-exception v2

    .line 1480
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1482
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method public blacklist getAnchorCellInfo(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2072
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2073
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2074
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getAnchorCellInfo(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2079
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2080
    return v0

    .line 2076
    :catch_0
    move-exception v1

    .line 2077
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2078
    return v0
.end method

.method public whitelist getCardType(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 651
    const/4 v0, -0x1

    .line 652
    .local v0, "cardType":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    return v0

    .line 657
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 658
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_1

    .line 659
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getCardType(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 663
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_1
    goto :goto_0

    .line 661
    :catch_0
    move-exception v1

    .line 662
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 664
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist getCellIdentityOperator(I)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I

    .line 933
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 934
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 935
    const-string v1, "getCellIdentityOperator"

    invoke-static {v1}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 936
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getCellIdentityOperator(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 940
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 941
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCellInfo(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "slotId"    # I

    .line 1775
    invoke-direct {p0, p1}, Landroid/telephony/OplusTelephonyManager;->checkInvokeByCtReg(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1776
    return-object v1

    .line 1779
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1780
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_1

    .line 1781
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getCellInfo(I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1785
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_1
    goto :goto_0

    .line 1783
    :catch_0
    move-exception v0

    .line 1784
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1786
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public blacklist getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "slotId"    # I

    .line 3032
    const-string v0, "OplusTelephonyManager"

    const/16 v1, 0x31

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 3034
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    .line 3035
    .local v2, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-nez v2, :cond_0

    .line 3036
    const-string v3, "getCellLocation returning null because telephonyExt is null"

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    return-object v1

    .line 3039
    :cond_0
    iget-object v3, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 3040
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 3039
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v3

    .line 3041
    .local v3, "cellIdentity":Landroid/telephony/CellIdentity;
    const/4 v4, 0x0

    .line 3042
    .local v4, "cl":Landroid/telephony/CellLocation;
    if-eqz v3, :cond_1

    .line 3043
    invoke-virtual {v3}, Landroid/telephony/CellIdentity;->asCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    move-object v4, v5

    .line 3045
    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 3050
    :cond_2
    return-object v4

    .line 3046
    :cond_3
    :goto_0
    const-string v5, "getCellLocation returning null because CellLocation is empty or phone type doesn\'t match CellLocation type"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3048
    return-object v1

    .line 3051
    .end local v2    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    .end local v3    # "cellIdentity":Landroid/telephony/CellIdentity;
    .end local v4    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v2

    .line 3052
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3053
    return-object v1
.end method

.method public blacklist getCurrentTransport(II)I
    .locals 4
    .param p1, "soltId"    # I
    .param p2, "apnType"    # I

    .line 1633
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1634
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1635
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getCurrentTransport(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1637
    :cond_0
    return v0

    .line 1638
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v1

    .line 1639
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1640
    const-string v2, "OplusTelephonyManager"

    const-string v3, "exception in getCurrentTransport, so return invalid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    return v0
.end method

.method public blacklist getDataCallListAction(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2002
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2003
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2004
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getDataCallListAction(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2009
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2010
    return v0

    .line 2006
    :catch_0
    move-exception v1

    .line 2007
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2008
    return v0
.end method

.method public blacklist getEcholocateMetrics(I)Ljava/util/List;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2703
    const-string v0, "OplusTelephonyManager"

    const-string v1, "getEcholocateMetrics ..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2706
    .local v1, "echolocateMetrics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    .line 2707
    .local v2, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v2, :cond_0

    .line 2708
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getEcholocateMetrics(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 2713
    .end local v2    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2710
    :catch_0
    move-exception v2

    .line 2711
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2712
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEcholocateMetrics fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public blacklist getFiveGUperLayerIndAvailable(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 1812
    const/4 v0, -0x3

    .line 1814
    .local v0, "mUpperLayerIndInfo":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1815
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1816
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getFiveGUperLayerIndAvailable(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1820
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1818
    :catch_0
    move-exception v1

    .line 1819
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1821
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getFullIccId(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .line 1719
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1720
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1721
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getFullIccId(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1725
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1723
    :catch_0
    move-exception v0

    .line 1724
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusTelephonyManager"

    const-string v2, "error get full iccid"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1726
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getHasNrSecondaryServingCell()Z
    .locals 3

    .line 1868
    const/4 v0, 0x0

    .line 1870
    .local v0, "hasNrSecondaryServingCell":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1871
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1872
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getHasNrSecondaryServingCell()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1876
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1874
    :catch_0
    move-exception v1

    .line 1875
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1877
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getHotswapState(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 774
    const/16 v0, 0x1775

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 775
    .local v0, "mBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 776
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 778
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 781
    goto :goto_0

    .line 779
    :catch_0
    move-exception v2

    .line 780
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 783
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public blacklist getIccCardType(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 2789
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2790
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2791
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getIccCardType(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2795
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2793
    :catch_0
    move-exception v0

    .line 2794
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIccCardType fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getIfTestSim(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .line 697
    const-string v0, "00101"

    const-string v1, "001001"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, "MCCMNC_LIST":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 699
    .local v1, "mccmncList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, "mccmnc":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIfTestSim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 701
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    const/4 v3, 0x1

    return v3

    .line 704
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public blacklist getImpi(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 736
    const/16 v0, 0x1773

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 737
    .local v0, "mBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 738
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 740
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 743
    goto :goto_0

    .line 741
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public blacklist getImsType(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 722
    const/16 v0, 0x1772

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 723
    .local v0, "mBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 724
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 726
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 729
    goto :goto_0

    .line 727
    :catch_0
    move-exception v2

    .line 728
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 731
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public blacklist getIsNrAvailable()Z
    .locals 3

    .line 1854
    const/4 v0, 0x0

    .line 1856
    .local v0, "isNrAvailable":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1857
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1858
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getIsNrAvailable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1862
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1860
    :catch_0
    move-exception v1

    .line 1861
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1863
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getLastAction(I)I
    .locals 2
    .param p1, "slotIndex"    # I

    .line 1488
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1489
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1490
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getLastAction(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1494
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1495
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getLteCdmaImsi(I)[Ljava/lang/String;
    .locals 2
    .param p1, "phoneid"    # I

    .line 1685
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1686
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1687
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getLteCdmaImsi(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1691
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1689
    :catch_0
    move-exception v0

    .line 1690
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1692
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, "OplusTelephonyManager"

    const-string v1, "getLteCdmaImsi, err"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMcc(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 915
    invoke-virtual {p0, p1}, Landroid/telephony/OplusTelephonyManager;->getCellIdentityOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "pMcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 917
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 919
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getModemTxTime()[J
    .locals 2

    .line 1974
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1975
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1976
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getModemTxTime()[J

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1980
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1981
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNetworkConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkConfig key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1920
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1921
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNetworkConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1925
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1926
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getNewPreferredNetworkMode(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 1899
    const/4 v0, -0x1

    .line 1901
    .local v0, "networkMode":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1902
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    const-string v2, "OplusTelephonyManager"

    const-string v3, "getNewPreferredNetworkMode call successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    if-eqz v1, :cond_0

    .line 1904
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNewPreferredNetworkMode(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1908
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1906
    :catch_0
    move-exception v1

    .line 1907
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1909
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getNrBearerAllocation(I)I
    .locals 3
    .param p1, "slotId"    # I

    .line 1826
    const/4 v0, -0x3

    .line 1828
    .local v0, "mBearerStatus":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1829
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1830
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNrBearerAllocation(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1834
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1832
    :catch_0
    move-exception v1

    .line 1833
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1835
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getNrConnect()Z
    .locals 3

    .line 1840
    const/4 v0, 0x0

    .line 1842
    .local v0, "connect":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1843
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1844
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNrConnect()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1848
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1846
    :catch_0
    move-exception v1

    .line 1847
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1849
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getNrModeChangedAllow()Z
    .locals 2

    .line 2559
    const-string v0, "OplusTelephonyManager"

    const-string v1, "getNrModeChangedAllow ..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2562
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2563
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNrModeChangedAllow()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2567
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2565
    :catch_0
    move-exception v0

    .line 2566
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2568
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getNrModeChangedEvent()Landroid/os/Bundle;
    .locals 2

    .line 2573
    const-string v0, "OplusTelephonyManager"

    const-string v1, "getNrModeChangedInfo ..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2576
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2577
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNrModeChangedEvent()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 2581
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2579
    :catch_0
    move-exception v0

    .line 2580
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2582
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public blacklist getNrModeToCheck(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 1750
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1751
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1752
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getNrModeToCheck(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1756
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1754
    :catch_0
    move-exception v0

    .line 1755
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1757
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist getOemSpn(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 3011
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 3012
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 3013
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getOemSpn(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 3017
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 3015
    :catch_0
    move-exception v0

    .line 3016
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOemSpn fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOpId(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .line 760
    const/16 v0, 0x1774

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 761
    .local v0, "mBundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 762
    .local v1, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 764
    :try_start_0
    const-string v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 767
    goto :goto_0

    .line 765
    :catch_0
    move-exception v2

    .line 766
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 769
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public whitelist getOperatorNumericForData(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .line 963
    const/4 v0, 0x0

    .line 964
    .local v0, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 965
    return-object v2

    .line 969
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 970
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_2

    .line 971
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 972
    .local v3, "phoneId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 973
    return-object v2

    .line 975
    :cond_1
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 979
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    .end local v3    # "phoneId":I
    :cond_2
    goto :goto_0

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 980
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist getOperatorSwitchEnable(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 788
    const/16 v0, 0x1776

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 789
    .local v0, "mBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 790
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 792
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getOrigSignalStrength(I)Landroid/telephony/SignalStrength;
    .locals 4
    .param p1, "phoneId"    # I

    .line 3467
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3468
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3469
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getOrigSignalStrength(I)Landroid/telephony/SignalStrength;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3471
    :cond_0
    return-object v0

    .line 3472
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v1

    .line 3473
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrigSignalStrength fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    return-object v0
.end method

.method public whitelist getPlmnConfigForSlotId(I)Landroid/os/PersistableBundle;
    .locals 5
    .param p1, "slotId"    # I

    .line 3262
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3263
    .local v0, "callingPackage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConfigForslot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIPlmnCarrierConfigLoader()Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;

    move-result-object v1

    .line 3266
    .local v1, "plmnCarrierConfigLoader":Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;
    if-eqz v1, :cond_0

    .line 3267
    invoke-interface {v1, p1, v0}, Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;->getConfigForSlotId(ILjava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 3271
    .end local v1    # "plmnCarrierConfigLoader":Lcom/android/internal/telephony/IPlmnCarrierConfigLoader;
    :cond_0
    goto :goto_0

    .line 3269
    :catch_0
    move-exception v1

    .line 3270
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPlmnConfigForSlotId returning null due to RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getPreferSubId()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3231
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3232
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3233
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getPreferSubId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3238
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3239
    return v0

    .line 3235
    :catch_0
    move-exception v1

    .line 3236
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3237
    return v0
.end method

.method public blacklist getPreferredDefaultNetMode(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 1884
    const/4 v0, -0x1

    .line 1886
    .local v0, "networkMode":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1887
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    const-string v2, "OplusTelephonyManager"

    const-string v3, "getPreferredDefaultNetMode call successful"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    if-eqz v1, :cond_0

    .line 1889
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getPreferredDefaultNetMode(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1893
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1891
    :catch_0
    move-exception v1

    .line 1892
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1894
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getPreferredNetworkType(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 2058
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2059
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2060
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getPreferredNetworkType(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2065
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2066
    return v0

    .line 2062
    :catch_0
    move-exception v1

    .line 2063
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2064
    return v0
.end method

.method public blacklist getRealNrState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 2270
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2271
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2272
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getRealNrState(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2277
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2278
    return v0

    .line 2274
    :catch_0
    move-exception v1

    .line 2275
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2276
    return v0
.end method

.method public blacklist getRoamingReduction()Z
    .locals 3

    .line 1797
    const/4 v0, 0x0

    .line 1799
    .local v0, "roamingReduction":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1800
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1801
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getRoamingReduction()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 1805
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1803
    :catch_0
    move-exception v1

    .line 1804
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1806
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public blacklist getSaMode(I)I
    .locals 2
    .param p1, "slotId"    # I

    .line 2100
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2101
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2102
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getSaMode(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2107
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2108
    return v0

    .line 2104
    :catch_0
    move-exception v1

    .line 2105
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2106
    return v0
.end method

.method public blacklist getScAddressGemini(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .line 2898
    const/4 v0, 0x0

    .line 2899
    .local v0, "smsc":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 2901
    .local v1, "subIds":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/OplusTelephonyManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 2902
    .local v2, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 2903
    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 2908
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_0
    nop

    .line 2909
    return-object v0

    .line 2906
    :catch_0
    move-exception v2

    .line 2907
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public blacklist getSelectConfig(I)Ljava/lang/String;
    .locals 4
    .param p1, "soltId"    # I

    .line 1650
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1651
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1652
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getSelectConfig(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1654
    :cond_0
    return-object v0

    .line 1655
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v1

    .line 1656
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1657
    const-string v2, "OplusTelephonyManager"

    const-string v3, "exception in getSelectConfig, so return invalid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    return-object v0
.end method

.method public whitelist getSoftSimCardSlotId()I
    .locals 2

    .line 683
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 684
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getSoftSimCardSlotId()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 689
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 690
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSubId(I)I
    .locals 2
    .param p1, "slotIndex"    # I

    .line 2463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSubId for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2466
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2467
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getSubId(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2471
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2469
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2472
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSubState(I)I
    .locals 6
    .param p1, "subId"    # I

    .line 2812
    const-string v0, "OplusTelephonyManager"

    const/4 v1, -0x1

    .line 2813
    .local v1, "subStatus":I
    :try_start_0
    iget-object v2, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 2814
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_2

    .line 2815
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2816
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 2817
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v3

    move v1, v3

    .line 2818
    goto :goto_1

    .line 2820
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    .line 2822
    :cond_2
    const/4 v1, -0x2

    .line 2824
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubState--subId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2825
    return v1

    .line 2826
    .end local v1    # "subStatus":I
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v1

    .line 2827
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oplusGetIccId fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    .end local v1    # "ex":Ljava/lang/Exception;
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSupSlotSaSupport()Z
    .locals 2

    .line 2518
    const-string v0, "OplusTelephonyManager"

    const-string v1, "getSupSlotSaSupport ..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2521
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2522
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getSupSlotSaSupport()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2526
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2524
    :catch_0
    move-exception v0

    .line 2525
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2527
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTelephonyPowerLost()D
    .locals 3

    .line 1961
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1962
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1963
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getTelephonyPowerLost()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 1967
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1968
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public blacklist getTelephonyPowerState()Ljava/lang/String;
    .locals 2

    .line 1948
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1949
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1950
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getTelephonyPowerState()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1954
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1955
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getTempDdsSwitch()Z
    .locals 2

    .line 2532
    const-string v0, "OplusTelephonyManager"

    const-string v1, "getTempDdsSwitch ..."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2535
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2536
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getTempDdsSwitch()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2540
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2538
    :catch_0
    move-exception v0

    .line 2539
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2541
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getUserSaMode()I
    .locals 2

    .line 2446
    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2447
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2448
    invoke-interface {v1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getUserSaMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2453
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2454
    return v0

    .line 2450
    :catch_0
    move-exception v1

    .line 2451
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2452
    return v0
.end method

.method public blacklist getVoNrState(ILandroid/os/Message;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 2405
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/telephony/OplusTelephonyManager;->getVoNrState(IZLandroid/os/Message;)V

    .line 2406
    return-void
.end method

.method public blacklist getVoNrState(IZLandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "isFromUi"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoNrState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    .line 2381
    .local v0, "target":Landroid/os/Handler;
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2382
    .local v2, "client":Landroid/os/Messenger;
    nop

    .line 2384
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getRemoteMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 2385
    .local v3, "remoteMger":Landroid/os/Messenger;
    if-eqz v3, :cond_0

    .line 2386
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2387
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "what"

    iget v5, p3, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2388
    const-string v4, "phoneId"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2389
    const-string v4, "isFromUi"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2390
    const/16 v4, 0xfad

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2391
    .local v4, "msgToRemote":Landroid/os/Message;
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2392
    iput-object v2, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2393
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2394
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msgToRemote":Landroid/os/Message;
    goto :goto_0

    .line 2395
    :cond_0
    const-string v4, "getVoNrState error"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2399
    .end local v3    # "remoteMger":Landroid/os/Messenger;
    :goto_0
    goto :goto_1

    .line 2397
    :catch_0
    move-exception v1

    .line 2398
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2401
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public blacklist getVoNrVisible(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 2410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVoNrVisible : on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2413
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2414
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->getVoNrVisible(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2418
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2419
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getVsimId()I
    .locals 3

    .line 804
    const/4 v0, 0x0

    const/16 v1, 0x1777

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 805
    .local v0, "mBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 806
    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 808
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getWifiCellKpi()Ljava/lang/String;
    .locals 4

    .line 1701
    const-string v0, ""

    .line 1703
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0x1795

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 1704
    .local v1, "mBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1705
    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1709
    .end local v1    # "mBundle":Landroid/os/Bundle;
    :cond_0
    goto :goto_0

    .line 1707
    :catch_0
    move-exception v1

    .line 1708
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1710
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public blacklist isAlreadyUpdated()Z
    .locals 2

    .line 1987
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1988
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1989
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isAlreadyUpdated()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1993
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1994
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isApnEnabled(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2256
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2257
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2258
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isApnEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2263
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2264
    return v0

    .line 2260
    :catch_0
    move-exception v1

    .line 2261
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2262
    return v0
.end method

.method public blacklist isApnInException(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2142
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2143
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2144
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isApnInException(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2149
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2150
    return v0

    .line 2146
    :catch_0
    move-exception v1

    .line 2147
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2148
    return v0
.end method

.method public blacklist isBinderAlive()Z
    .locals 1

    .line 2643
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDualLteEnabled()Z
    .locals 6

    .line 2987
    const-string v0, "isDualLteEnabled"

    invoke-direct {p0, v0}, Landroid/telephony/OplusTelephonyManager;->enforceOplusPhoneState(Ljava/lang/String;)V

    .line 2988
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2989
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 2990
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2989
    const-string v2, "oplus_customize_dual_lte_switch_default"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2991
    .local v1, "defaultValue":I
    iget-object v2, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 2992
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2991
    const-string v4, "oplus_customize_dual_lte_switch"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2993
    .local v2, "value":I
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 2994
    .local v3, "enable":Z
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDualLteEnabled defaultValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusTelephonyManager"

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    return v3
.end method

.method public blacklist isImsUseEnabled(I)Z
    .locals 4
    .param p1, "soltId"    # I

    .line 1603
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1604
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1605
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isImsUseEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1607
    :cond_0
    return v0

    .line 1608
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v1

    .line 1609
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1610
    const-string v2, "OplusTelephonyManager"

    const-string v3, "exception in isImsUseEnabled, so return false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    return v0
.end method

.method public blacklist isImsValid(I)Z
    .locals 4
    .param p1, "soltId"    # I

    .line 1618
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1619
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1620
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isImsValid(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1622
    :cond_0
    return v0

    .line 1623
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v1

    .line 1624
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1625
    const-string v2, "OplusTelephonyManager"

    const-string v3, "exception in isImsValid, so return false"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return v0
.end method

.method public blacklist isInDelayOOSState(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInDelayOOSState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1934
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1935
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isInDelayOOSState(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1940
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 1941
    return v0

    .line 1937
    :catch_0
    move-exception v1

    .line 1938
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1939
    return v0
.end method

.method public blacklist isTestCard(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2774
    invoke-virtual {p0, p1}, Landroid/telephony/OplusTelephonyManager;->getCardType(I)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isUriFileExist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "vUri"    # Ljava/lang/String;

    .line 2876
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2877
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2878
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->isUriFileExist(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 2882
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2880
    :catch_0
    move-exception v0

    .line 2881
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUriFileExist fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isVolteEnabledByPlatform(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 2733
    const-string v0, "isVolteEnabledByPlatform"

    invoke-direct {p0, v0}, Landroid/telephony/OplusTelephonyManager;->enforceOplusPhoneState(Ljava/lang/String;)V

    .line 2734
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result v0

    return v0
.end method

.method public blacklist isVtEnabledByPlatform(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 2843
    const-string v0, "isVtEnabledByPlatform"

    invoke-direct {p0, v0}, Landroid/telephony/OplusTelephonyManager;->enforceOplusPhoneState(Ljava/lang/String;)V

    .line 2844
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform()Z

    move-result v0

    return v0
.end method

.method public blacklist isWfcEnabledByPlatform(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 2858
    const-string v0, "isWfcEnabledByPlatform"

    invoke-direct {p0, v0}, Landroid/telephony/OplusTelephonyManager;->enforceOplusPhoneState(Ljava/lang/String;)V

    .line 2859
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-telephony-OplusTelephonyManager()V
    .locals 2

    .line 2619
    const-string v0, "OplusTelephonyManager"

    const-string v1, "DeathRecipient triggered, binder died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->notifyBinderDeath()V

    .line 2621
    return-void
.end method

.method public blacklist lockCellAction(ILjava/lang/String;)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "cmdStr"    # Ljava/lang/String;

    .line 2171
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2172
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2173
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->lockCellAction(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2178
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2179
    return v0

    .line 2175
    :catch_0
    move-exception v1

    .line 2176
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2177
    return v0
.end method

.method public blacklist oplusGetIccLockEnabled(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 2749
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/OplusTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2750
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 2751
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 2752
    .local v2, "subIds":[I
    if-eqz v2, :cond_1

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_0

    .line 2755
    :cond_0
    aget v3, v2, v0

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->isIccLockEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2753
    :cond_1
    :goto_0
    return v0

    .line 2759
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "subIds":[I
    :cond_2
    goto :goto_1

    .line 2757
    :catch_0
    move-exception v1

    .line 2758
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIccLockEnabled fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public blacklist performLteAcqScanReq(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .line 3070
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3071
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3072
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->performLteAcqScanReq(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3077
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3078
    return v0

    .line 3074
    :catch_0
    move-exception v1

    .line 3075
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performLteAcqScanReq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    return v0
.end method

.method public blacklist psDetachAttachAction(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2128
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2129
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2130
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->psDetachAttachAction(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2135
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2136
    return v0

    .line 2132
    :catch_0
    move-exception v1

    .line 2133
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2134
    return v0
.end method

.method public blacklist qcBackgroundSearch(III)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "cmdType"    # I
    .param p3, "rat"    # I

    .line 3119
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3120
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3121
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->qcBackgroundSearch(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3126
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3127
    return v0

    .line 3123
    :catch_0
    move-exception v1

    .line 3124
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qcBackgroundSearch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3125
    return v0
.end method

.method public blacklist radioPower(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2185
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2186
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2187
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->radioPower(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2192
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2193
    return v0

    .line 2189
    :catch_0
    move-exception v1

    .line 2190
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2191
    return v0
.end method

.method public blacklist registerCallback(Ljava/lang/String;Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOplusTelephonyExtCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 549
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const-string v0, "registerCallback : packageName was not matched"

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 551
    return-void

    .line 553
    :cond_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 554
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_1

    .line 555
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->registerCallback(Ljava/lang/String;Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_1
    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist registerCallbackExternal(Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;

    .line 2625
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2626
    :try_start_0
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2627
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2629
    :cond_0
    monitor-exit v0

    .line 2630
    return-void

    .line 2629
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist registerTelephonyCallbackExt(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallbackExt;)Z
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/TelephonyCallbackExt;

    .line 3307
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/OplusTelephonyManager;->registerTelephonyCallbackExt(IZZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallbackExt;)Z

    move-result v0

    return v0
.end method

.method public whitelist registerTelephonyCallbackExt(IZZLjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallbackExt;)Z
    .locals 13
    .param p1, "slotId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "callback"    # Landroid/telephony/TelephonyCallbackExt;

    .line 3337
    move-object v0, p0

    iget-object v1, v0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    const-string v2, "OplusTelephonyManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    if-nez p5, :cond_0

    goto :goto_0

    .line 3341
    :cond_0
    nop

    .line 3342
    const-string v4, "telephony_registry_ext"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyRegistryManagerExt;

    .line 3343
    .local v1, "telephonyRegistryManagerExt":Landroid/telephony/TelephonyRegistryManagerExt;
    if-eqz v1, :cond_2

    .line 3344
    nop

    .line 3345
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 3346
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    move v12, v3

    .line 3344
    move-object v4, v1

    move v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move v8, p1

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v12}, Landroid/telephony/TelephonyRegistryManagerExt;->registerTelephonyCallbackExt(ZZLjava/util/concurrent/Executor;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;Z)Z

    move-result v2

    return v2

    .line 3348
    :cond_2
    const-string v4, "registerTelephonyCallbackExt failed"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    return v3

    .line 3338
    .end local v1    # "telephonyRegistryManagerExt":Landroid/telephony/TelephonyRegistryManagerExt;
    :cond_3
    :goto_0
    const-string v1, "mContext, callback or executor must be non-null"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    return v3
.end method

.method public blacklist removeGeoFenceEventCallBack(Landroid/telephony/OplusGeoFenceEventCallBack;)V
    .locals 4
    .param p1, "cb"    # Landroid/telephony/OplusGeoFenceEventCallBack;

    .line 2682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeGeoFenceEventCallBack cb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    if-nez p1, :cond_0

    .line 2684
    const-string v0, "removeGeoFenceEventCallBack cb cant be null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    return-void

    .line 2688
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2689
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_1

    .line 2690
    invoke-virtual {p1}, Landroid/telephony/OplusGeoFenceEventCallBack;->unlinkToDeath()V

    .line 2691
    invoke-virtual {p1}, Landroid/telephony/OplusGeoFenceEventCallBack;->getGeoFenceEventCbBinder()Landroid/telephony/IOplusGeoFenceEventCallBack;

    move-result-object v2

    .line 2692
    .local v2, "binder":Landroid/telephony/IOplusGeoFenceEventCallBack;
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->removeGeoFenceEventCallBack(Landroid/telephony/IOplusGeoFenceEventCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2696
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    .end local v2    # "binder":Landroid/telephony/IOplusGeoFenceEventCallBack;
    :cond_1
    goto :goto_0

    .line 2694
    :catch_0
    move-exception v0

    .line 2695
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeGeoFenceEventCallBack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist reportGameEnterOrLeave(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gameUid"    # I
    .param p3, "gamePackageName"    # Ljava/lang/String;
    .param p4, "enter"    # Z

    .line 1569
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_LOG_GAME_ERR:Z

    if-nez v0, :cond_0

    .line 1570
    return-void

    .line 1572
    :cond_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1573
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    invoke-direct {p0, p1}, Landroid/telephony/OplusTelephonyManager;->checkRevokeByGame(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1575
    invoke-interface {v0, p2, p3, p4}, Lcom/android/internal/telephony/IOplusTelephonyExt;->reportGameEnterOrLeave(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_1
    goto :goto_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1580
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist reportGameErrorCauseToCenter()Ljava/lang/String;
    .locals 2

    .line 1521
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1522
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1523
    invoke-interface {v0}, Lcom/android/internal/telephony/IOplusTelephonyExt;->reportGameErrorCauseToCenter()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1527
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1528
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public blacklist reportGameInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "gameInfo"    # Ljava/lang/String;

    .line 1506
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1507
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1508
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->reportGameInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1513
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist reportNetWorkLatency(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Ljava/lang/String;

    .line 1537
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_LOG_GAME_ERR:Z

    if-nez v0, :cond_0

    .line 1538
    return-void

    .line 1540
    :cond_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1541
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    invoke-direct {p0, p1}, Landroid/telephony/OplusTelephonyManager;->checkRevokeByGame(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1543
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->reportNetWorkLatency(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_1
    goto :goto_0

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1548
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist reportNetWorkLevel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Ljava/lang/String;

    .line 1553
    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_LOG_GAME_ERR:Z

    if-nez v0, :cond_0

    .line 1554
    return-void

    .line 1556
    :cond_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1557
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    invoke-direct {p0, p1}, Landroid/telephony/OplusTelephonyManager;->checkRevokeByGame(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1559
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->reportNetWorkLevel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_1
    goto :goto_0

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1564
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "eventId"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestForTelephonyEvent.slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 514
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/telephony/OplusTelephonyManager;->isValidEvent(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 519
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 520
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_2

    .line 521
    if-nez p3, :cond_1

    .line 522
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p3, v2

    .line 524
    :cond_1
    const-string v2, "package"

    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 529
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_2
    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 530
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 515
    :cond_3
    :goto_1
    return-object v1
.end method

.method public blacklist reregisterNetwork(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2284
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2285
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2286
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->reregisterNetwork(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2291
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2292
    return v0

    .line 2288
    :catch_0
    move-exception v1

    .line 2289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2290
    return v0
.end method

.method public blacklist researchNetwork(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2298
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2299
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2300
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->researchNetwork(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2305
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2306
    return v0

    .line 2302
    :catch_0
    move-exception v1

    .line 2303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2304
    return v0
.end method

.method public blacklist resetBarCell(IIII)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "rat"    # I
    .param p3, "arfch"    # I
    .param p4, "pci"    # I

    .line 3441
    const-string v0, "OplusTelephonyManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    .line 3442
    .local v2, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v2, :cond_0

    .line 3443
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IOplusTelephonyExt;->resetBarCell(IIII)Z

    move-result v3

    .line 3444
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetBarCell result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3445
    return v3

    .line 3447
    .end local v3    # "result":Z
    :cond_0
    return v1

    .line 3448
    .end local v2    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v2

    .line 3449
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetBarCell fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    return v1
.end method

.method public blacklist resetRadioSmooth(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .line 2242
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2243
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2244
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->resetRadioSmooth(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2249
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2250
    return v0

    .line 2246
    :catch_0
    move-exception v1

    .line 2247
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2248
    return v0
.end method

.method public blacklist resetRsrpBackoff(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "arfch"    # I
    .param p4, "pci"    # I

    .line 3405
    const-string v0, "OplusTelephonyManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    .line 3406
    .local v2, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v2, :cond_0

    .line 3407
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/IOplusTelephonyExt;->resetRsrpBackoff(ILjava/lang/String;II)Z

    move-result v3

    .line 3408
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetRsrpBackoff result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3409
    return v3

    .line 3411
    .end local v3    # "result":Z
    :cond_0
    return v1

    .line 3412
    .end local v2    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v2

    .line 3413
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetRsrpBackoff fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    return v1
.end method

.method public blacklist rsrpBackoff(ILjava/lang/String;III)Z
    .locals 9
    .param p1, "phoneId"    # I
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "arfch"    # I
    .param p4, "pci"    # I
    .param p5, "offset"    # I

    .line 3387
    const-string v0, "OplusTelephonyManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v2

    .line 3388
    .local v2, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v2, :cond_0

    .line 3389
    move-object v3, v2

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/telephony/IOplusTelephonyExt;->rsrpBackoff(ILjava/lang/String;III)Z

    move-result v3

    .line 3390
    .local v3, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rsrpBackoff result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3391
    return v3

    .line 3393
    .end local v3    # "result":Z
    :cond_0
    return v1

    .line 3394
    .end local v2    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v2

    .line 3395
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rsrpBackoff fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    return v1
.end method

.method public blacklist sendMultipartTextMessageOem(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZIII)V
    .locals 22
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I
    .param p9, "encodingType"    # I
    .param p10, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;IZIII)V"
        }
    .end annotation

    .line 1069
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move/from16 v12, p9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encodingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paltform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/OplusTelephonyManager;->isQcomPlatform:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 1070
    sget-boolean v0, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_SMS_7BIT16BIT:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    const/4 v2, 0x1

    if-eq v12, v2, :cond_0

    if-ne v12, v0, :cond_4

    .line 1072
    :cond_0
    if-eqz v1, :cond_1

    .line 1073
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/telephony/OplusTelephonyManager;->sendMultipartTextMessageInternalOem(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZIII)V

    goto/16 :goto_0

    .line 1075
    :cond_1
    sget-boolean v1, Landroid/telephony/OplusTelephonyManager;->isMTKPlatform:Z

    if-eqz v1, :cond_3

    .line 1076
    const/4 v1, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    .line 1080
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1076
    const-string v6, "mediatek.telephony.MtkSmsManager"

    const-string v7, "getSmsManagerForSubscriptionId"

    invoke-static {v1, v6, v7, v3, v4}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1081
    .local v1, "mtkSmsManager":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mtkSmsManager="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 1082
    if-eqz v1, :cond_2

    .line 1083
    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v5

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v2

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v4, v9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x5

    aput-object v7, v4, v10

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v2

    aput-object p3, v3, v8

    .line 1089
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    aput-object p4, v3, v9

    aput-object p5, v3, v10

    .line 1083
    const-string v0, "sendMultipartTextMessageWithEncodingType"

    invoke-static {v1, v6, v0, v4, v3}, Lcom/android/internal/telephony/util/ReflectionHelper;->callDeclaredMethodOrThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .end local v1    # "mtkSmsManager":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 1092
    :cond_3
    const-string v0, "sendMultipartTextMessageOem, unkonw platform"

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 1094
    :goto_0
    return-void

    .line 1097
    :cond_4
    invoke-static/range {p10 .. p10}, Landroid/telephony/OplusTelephonyManager;->getSmsManagerForSubscriber(I)Landroid/telephony/SmsManager;

    move-result-object v13

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-virtual/range {v13 .. v21}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V

    .line 1100
    return-void
.end method

.method public whitelist sendRecoveryRequest(II)V
    .locals 1
    .param p1, "slotIndex"    # I
    .param p2, "action"    # I

    .line 1426
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1427
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1428
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->sendRecoveryRequest(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1433
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist set5gIconDelayTimer(II)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "delayTimer"    # I

    .line 3214
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3215
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3216
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->set5gIconDelayTimer(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3221
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3222
    return v0

    .line 3218
    :catch_0
    move-exception v1

    .line 3219
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set5gIconDelayTimer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    return v0
.end method

.method public blacklist setAllowedNetworkTypesBitmap(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "networkTypeBitmap"    # I

    .line 2030
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2031
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2032
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setAllowedNetworkTypesBitmap(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2037
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2038
    return v0

    .line 2034
    :catch_0
    move-exception v1

    .line 2035
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2036
    return v0
.end method

.method public blacklist setCellBlackList(IJ)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "cellid"    # J

    .line 2200
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2201
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2202
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setCellBlackList(IJ)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2207
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2208
    return v0

    .line 2204
    :catch_0
    move-exception v1

    .line 2205
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2206
    return v0
.end method

.method public blacklist setDataRoamingEnabled(IZ)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "enable"    # Z

    .line 2950
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2951
    .local v0, "subId":[I
    invoke-static {}, Landroid/telephony/OplusTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 2952
    .local v1, "binder":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    if-eqz v1, :cond_0

    .line 2953
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-interface {v1, v2, p2}, Lcom/android/internal/telephony/ITelephony;->setDataRoamingEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2957
    .end local v0    # "subId":[I
    .end local v1    # "binder":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    goto :goto_0

    .line 2955
    :catch_0
    move-exception v0

    .line 2956
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingEnabled fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setDisplayNumberExt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .line 889
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 890
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 891
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setDisplayNumberExt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 895
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 893
    :catch_0
    move-exception v0

    .line 894
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 896
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist setDualLteEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2970
    const-string v0, "setDualLteEnabled"

    invoke-direct {p0, v0}, Landroid/telephony/OplusTelephonyManager;->enforceOplusPhoneState(Ljava/lang/String;)V

    .line 2971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDualLteEnabled enable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 2973
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2972
    const-string v1, "oplus_customize_dual_lte_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2974
    return-void
.end method

.method public blacklist setIgnorePsPaging(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 2326
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2327
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2328
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setIgnorePsPaging(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2332
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2330
    :catch_0
    move-exception v0

    .line 2331
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2333
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setNrMode(IILjava/lang/String;)Z
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "mode"    # I
    .param p3, "caller"    # Ljava/lang/String;

    .line 3189
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 3190
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 3191
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setNrMode(IILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 3196
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 3197
    return v0

    .line 3193
    :catch_0
    move-exception v1

    .line 3194
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSaMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusTelephonyManager"

    invoke-static {v3, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    return v0
.end method

.method public blacklist setNrModeChangedAllow(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrModeChangedAllow : enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2549
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2550
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setNrModeChangedAllow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2554
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2552
    :catch_0
    move-exception v0

    .line 2553
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2555
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setPreferredNetworkType(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "networkType"    # I

    .line 2044
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2045
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2046
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setPreferredNetworkType(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2051
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2052
    return v0

    .line 2048
    :catch_0
    move-exception v1

    .line 2049
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2050
    return v0
.end method

.method public blacklist setSaLtePingpongState(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "isLteNrPingPong"    # I

    .line 2311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSaLtePingpongState.slotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLteNrPingPong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 2313
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2314
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2315
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setSaLtePingpongState(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2320
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2321
    return v0

    .line 2317
    :catch_0
    move-exception v1

    .line 2318
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2319
    return v0
.end method

.method public blacklist setSaMode(II)Z
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "mode"    # I

    .line 2114
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 2115
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 2116
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setSaMode(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2121
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    nop

    .line 2122
    return v0

    .line 2118
    :catch_0
    move-exception v1

    .line 2119
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2120
    return v0
.end method

.method public blacklist setScAddressGemini(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "smsc"    # Ljava/lang/String;

    .line 2923
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 2925
    .local v0, "subIds":[I
    :try_start_0
    invoke-static {}, Landroid/telephony/OplusTelephonyManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2926
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    const-string v2, "OplusTelephonyManager"

    if-eqz v0, :cond_0

    :try_start_1
    array-length v3, v0

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x0

    .line 2927
    invoke-interface {v1, p2, v3, v4}, Lcom/android/internal/telephony/ISms;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2928
    const-string v3, "setScAddress successful"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2930
    :cond_0
    const-string v3, "setScAddress fail"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2934
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_0
    nop

    .line 2935
    return-void

    .line 2932
    :catch_0
    move-exception v1

    .line 2933
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public blacklist setSelectConfig(ILjava/lang/String;)Z
    .locals 4
    .param p1, "soltId"    # I
    .param p2, "configId"    # Ljava/lang/String;

    .line 1666
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    .line 1667
    .local v1, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v1, :cond_0

    .line 1668
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setSelectConfig(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1670
    :cond_0
    return v0

    .line 1671
    .end local v1    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :catch_0
    move-exception v1

    .line 1672
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1673
    const-string v2, "OplusTelephonyManager"

    const-string v3, "exception in setSelectConfig, so return invalid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    return v0
.end method

.method public blacklist setSmart5gStatus(Z)I
    .locals 4
    .param p1, "status"    # Z

    .line 868
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 869
    .local v0, "contentBundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 870
    const/4 v1, 0x0

    const/16 v2, 0x1794

    invoke-virtual {p0, v1, v2, v0}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 871
    .local v1, "mBundle":Landroid/os/Bundle;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart5gStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/OplusTelephonyManager;->log(Ljava/lang/String;)V

    .line 872
    const/4 v2, -0x1

    .line 873
    .local v2, "result":I
    if-eqz v1, :cond_0

    .line 875
    :try_start_0
    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 878
    goto :goto_0

    .line 876
    :catch_0
    move-exception v3

    .line 877
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 880
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v2
.end method

.method public blacklist setSmat5gThermalControl(Z)I
    .locals 4
    .param p1, "status"    # Z

    .line 854
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 855
    .local v0, "contentBundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 856
    const/4 v1, 0x0

    const/16 v2, 0x1798

    invoke-virtual {p0, v1, v2, v0}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 857
    .local v1, "bundle":Landroid/os/Bundle;
    const/4 v2, -0x1

    .line 858
    .local v2, "result":I
    if-eqz v1, :cond_0

    .line 859
    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 861
    :cond_0
    return v2
.end method

.method public blacklist setSupSlotSaSupport(Z)V
    .locals 2
    .param p1, "support"    # Z

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSupSlotSaSupport : support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 2508
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 2509
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setSupSlotSaSupport(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2513
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 2511
    :catch_0
    move-exception v0

    .line 2512
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2514
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setViceCardGameMode(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "gamePkgName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 1449
    const-string v0, "OplusTelephonyManager"

    if-nez p2, :cond_0

    .line 1450
    const-string v1, "gamePkgName cannot be null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    return-void

    .line 1453
    :cond_0
    if-nez p3, :cond_1

    .line 1454
    const-string v1, "init when value is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const-string p3, ""

    .line 1458
    :cond_1
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/OplusFeature;->OPLUS_FEATURE_VICE_CARD_GAME_MODE:Z

    if-nez v1, :cond_2

    .line 1459
    const-string v1, "OPLUS_FEATURE_VICE_CARD_GAME_MODE: false"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    return-void

    .line 1462
    :cond_2
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1463
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_3

    .line 1464
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/IOplusTelephonyExt;->setViceCardGameMode(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_3
    goto :goto_0

    .line 1466
    :catch_0
    move-exception v0

    .line 1467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1469
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist setVoNrState(IZLandroid/os/Message;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z
    .param p3, "onComplete"    # Landroid/os/Message;

    .line 2373
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/telephony/OplusTelephonyManager;->setVoNrState(IZZLandroid/os/Message;)V

    .line 2374
    return-void
.end method

.method public blacklist setVoNrState(IZZLandroid/os/Message;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "enabled"    # Z
    .param p3, "isFromUi"    # Z
    .param p4, "onComplete"    # Landroid/os/Message;

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVoNrState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusTelephonyManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    invoke-virtual {p4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    .line 2348
    .local v0, "target":Landroid/os/Handler;
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2349
    .local v2, "client":Landroid/os/Messenger;
    nop

    .line 2351
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getRemoteMessenger()Landroid/os/Messenger;

    move-result-object v3

    .line 2352
    .local v3, "remoteMger":Landroid/os/Messenger;
    if-eqz v3, :cond_0

    .line 2353
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2354
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v4, "what"

    iget v5, p4, Landroid/os/Message;->what:I

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2355
    const-string v4, "phoneId"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2356
    const-string v4, "enabled"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2357
    const-string v4, "isFromUi"

    invoke-virtual {v1, v4, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2358
    const/16 v4, 0xfac

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 2359
    .local v4, "msgToRemote":Landroid/os/Message;
    invoke-virtual {v4, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2360
    iput-object v2, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2361
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 2362
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v4    # "msgToRemote":Landroid/os/Message;
    goto :goto_0

    .line 2363
    :cond_0
    const-string v4, "setVoNrState error"

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2367
    .end local v3    # "remoteMger":Landroid/os/Messenger;
    :goto_0
    goto :goto_1

    .line 2365
    :catch_0
    move-exception v1

    .line 2366
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2369
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist setVsimId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .line 821
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 822
    .local v0, "contentBundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 823
    const/4 v1, 0x0

    const/16 v2, 0x178b

    invoke-virtual {p0, v1, v2, v0}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 824
    .local v1, "mBundle":Landroid/os/Bundle;
    const/4 v2, -0x1

    .line 825
    .local v2, "result":I
    if-eqz v1, :cond_0

    .line 827
    :try_start_0
    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 830
    goto :goto_0

    .line 828
    :catch_0
    move-exception v3

    .line 829
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 832
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v2
.end method

.method public blacklist setVsimStatus(I)I
    .locals 4
    .param p1, "status"    # I

    .line 837
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 838
    .local v0, "contentBundle":Landroid/os/Bundle;
    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    const/4 v1, 0x0

    const/16 v2, 0x1797

    invoke-virtual {p0, v1, v2, v0}, Landroid/telephony/OplusTelephonyManager;->requestForTelephonyEvent(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 840
    .local v1, "mBundle":Landroid/os/Bundle;
    const/4 v2, -0x1

    .line 841
    .local v2, "result":I
    if-eqz v1, :cond_0

    .line 843
    :try_start_0
    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 846
    goto :goto_0

    .line 844
    :catch_0
    move-exception v3

    .line 845
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 848
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v2
.end method

.method public blacklist startMobileDataHongbaoPolicy(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "time1"    # I
    .param p2, "time2"    # I
    .param p3, "value1"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;

    .line 999
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 1000
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IOplusTelephonyExt;->startMobileDataHongbaoPolicy(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1005
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1006
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist stopBGSearch(II)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "cmdType"    # I

    .line 3166
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 3167
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 3168
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/IOplusTelephonyExt;->stopBGSearch(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3172
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 3170
    :catch_0
    move-exception v0

    .line 3171
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMtkBGSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusTelephonyManager"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist unRegisterCallback(Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/telephony/IOplusTelephonyExtCallback;

    .line 568
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v0

    .line 569
    .local v0, "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    if-eqz v0, :cond_0

    .line 570
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/IOplusTelephonyExt;->unRegisterCallback(Lcom/android/internal/telephony/IOplusTelephonyExtCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    .end local v0    # "telephonyExt":Lcom/android/internal/telephony/IOplusTelephonyExt;
    :cond_0
    goto :goto_0

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public blacklist unregisterCallbackExternal(Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/telephony/OplusTelephonyManager$ITelephonyExtCallback;

    .line 2634
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2635
    :try_start_0
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2636
    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mTelephonyExtCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2638
    :cond_0
    monitor-exit v0

    .line 2639
    return-void

    .line 2638
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist unregisterTelephonyCallbackExt(ILandroid/telephony/TelephonyCallbackExt;)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/TelephonyCallbackExt;

    .line 3365
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "OplusTelephonyManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    iget-object v0, p2, Landroid/telephony/TelephonyCallbackExt;->callback:Lcom/android/internal/telephony/IPhoneStateListenerExt;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3370
    :cond_0
    iget-object v0, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 3371
    const-string v3, "telephony_registry_ext"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyRegistryManagerExt;

    .line 3372
    .local v0, "telephonyRegistryManagerExt":Landroid/telephony/TelephonyRegistryManagerExt;
    if-eqz v0, :cond_2

    .line 3373
    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Landroid/telephony/OplusTelephonyManager;->mContext:Landroid/content/Context;

    .line 3374
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Landroid/telephony/OplusTelephonyManager;->getIOplusTelephonyExt()Lcom/android/internal/telephony/IOplusTelephonyExt;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    move v8, v2

    .line 3373
    move-object v3, v0

    move v4, p1

    move-object v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/TelephonyRegistryManagerExt;->unregisterTelephonyCallbackExt(ILjava/lang/String;Ljava/lang/String;Landroid/telephony/TelephonyCallbackExt;Z)Z

    move-result v1

    return v1

    .line 3376
    :cond_2
    const-string v3, "unregisterTelephonyCallbackExt failed"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    return v2

    .line 3366
    .end local v0    # "telephonyRegistryManagerExt":Landroid/telephony/TelephonyRegistryManagerExt;
    :cond_3
    :goto_0
    const-string v0, "mContext, callback must be non-null"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    return v2
.end method
