.class public Landroid/net/wifi/OplusWifiRomUpdateHelper;
.super Landroid/net/wifi/OplusRomUpdateHelper;
.source "OplusWifiRomUpdateHelper.java"

# interfaces
.implements Landroid/net/wifi/IWifiRomUpdateHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;
    }
.end annotation


# static fields
.field public static final whitelist BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oppo.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final blacklist DATA_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/sys_wifi_par_config_list.xml"

.field private static final blacklist FILE_NAME:Ljava/lang/String; = "sys_wifi_par_config_list"

.field private static final blacklist MTK_SMART_BW_PARAMS:Ljava/lang/String; = "MTK_SMART_BW_PARAMS"

.field private static final blacklist OPLUS_WIFI_PROPERTIES_RUS:Ljava/lang/String; = "OPLUS_WIFI_PROPERTIES_RUS"

.field private static final blacklist OPPO_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oppo.permission.OPPO_COMPONENT_SAFE"

.field public static final whitelist ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final blacklist SMART_BW_PARAMS:Ljava/lang/String; = "SMART_BW_PARAMS"

.field private static final blacklist SYS_FILE_PATH:Ljava/lang/String; = "/system_ext/etc/sys_wifi_par_config_list.xml"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWifiRomUpdateHelper"

.field private static final blacklist WIFI_ASSISTANT_DISABLE:Z = false

.field private static final blacklist WIFI_ASSISTANT_DISABLE_VALUE:I = 0x0

.field private static final blacklist WIFI_ASSISTANT_ENABLE:Z = true

.field private static final blacklist WIFI_ASSISTANT_ENABLE_VALUE:I = 0x1

.field private static final blacklist WIFI_ASSISTANT_ROMUPDATE:Ljava/lang/String; = "rom.update.wifi.assistant"

.field private static blacklist sInstance:Landroid/net/wifi/OplusWifiRomUpdateHelper;

.field private static final blacklist sIsMTKPlatform:Z

.field private static final blacklist sIsQcomPlatform:Z


# instance fields
.field private blacklist DEBUG:Z

.field private blacklist mDownloadApps:[Ljava/lang/String;

.field private blacklist mDualStaApps:[Ljava/lang/String;

.field private blacklist mDualStaAppsExp:[Ljava/lang/String;

.field private blacklist mDualStaBlackList:[Ljava/lang/String;

.field private blacklist mDualStaCapHostBlackList:[Ljava/lang/String;

.field private blacklist mDualStaDisableMcc:[Ljava/lang/String;

.field private blacklist mDynamicTddWhiteList:[Ljava/lang/String;

.field private blacklist mHybridBlackList:[Ljava/lang/String;

.field private blacklist mHybridTgpaApps:[Ljava/lang/String;

.field private blacklist mIOTConnectWhiteList:[Ljava/lang/String;

.field private blacklist mIOTPackageControlThreshold:[I

.field private blacklist mKeyValuePair:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLmParams:[Ljava/lang/String;

.field private blacklist mMtkSmartBWParams:[I

.field private blacklist mNullDataToCTSRouterBlackList:[Ljava/lang/String;

.field private blacklist mNullDataToCTSRouterWhiteList:[Ljava/lang/String;

.field private blacklist mOplus5g160MSapApkWhiteList:[Ljava/lang/String;

.field private blacklist mOplus5g160MSapConfig:[Ljava/lang/String;

.field private blacklist mOplus5g160MSapCountryWhiteList:[Ljava/lang/String;

.field private blacklist mOplus5g160MStationFeatureForPhoneClone:[Ljava/lang/String;

.field private blacklist mOplusScreencastP2pOptEnabled:Ljava/lang/String;

.field private blacklist mOplusSnifferCaptureWithUdp:Ljava/lang/String;

.field private blacklist mRequestorApp:[Ljava/lang/String;

.field private blacklist mRouterBoostDupPktGameBlackList:[Ljava/lang/String;

.field private blacklist mRouterBoostDupPktGameWhiteList:[Ljava/lang/String;

.field private blacklist mRouterBoostVendorIECommSupportVersionList:[Ljava/lang/String;

.field private blacklist mRouterBoostVendorIECommV1SupportOuiList:[Ljava/lang/String;

.field private blacklist mRouterBoostVendorIECommV2SupportOuiList:[Ljava/lang/String;

.field private blacklist mSkipDestroySocketApps:[Ljava/lang/String;

.field private blacklist mSlaApps:[Ljava/lang/String;

.field private blacklist mSlaAppsExp:[Ljava/lang/String;

.field private blacklist mSlaBlackList:[Ljava/lang/String;

.field private blacklist mSlaEnabledMCC:[Ljava/lang/String;

.field private blacklist mSlaFastSwitchApps:[Ljava/lang/String;

.field private blacklist mSlaGameApps:[Ljava/lang/String;

.field private blacklist mSlaGameAppsExp:[Ljava/lang/String;

.field private blacklist mSlaGameParams:[Ljava/lang/String;

.field private blacklist mSlaIntervalParams:[Ljava/lang/String;

.field private blacklist mSlaParams:[Ljava/lang/String;

.field private blacklist mSlaSpeedParams:[Ljava/lang/String;

.field private blacklist mSlaWifiScoreParams:[Ljava/lang/String;

.field private blacklist mSmartBWParams:[I

.field private blacklist mSmartGearAppWhiteList:[Ljava/lang/String;

.field private blacklist mSmartGearRouterWhiteList:[Ljava/lang/String;

.field private blacklist mSmartGearSsidWhiteList:[Ljava/lang/String;

.field private blacklist mSmartMCCFileTransAppList:[Ljava/lang/String;

.field private blacklist mSmartMCCGameModeSupportAppList:[Ljava/lang/String;

.field private blacklist mSmartMCCQuota2GFileTransMTK:[I

.field private blacklist mSmartMCCQuota2GFileTransQcom:[I

.field private blacklist mSmartMCCQuota2GOthersMTK:[I

.field private blacklist mSmartMCCQuota2GOthersQcom:[I

.field private blacklist mSmartMCCQuota2GP2PFileTransMTK:[I

.field private blacklist mSmartMCCQuota2GP2PFileTransQcom:[I

.field private blacklist mSmartMCCQuota2GRealTimeGameMTK:[I

.field private blacklist mSmartMCCQuota2GRealTimeGameQcom:[I

.field private blacklist mSmartMCCQuota2GVideoMTK:[I

.field private blacklist mSmartMCCQuota2GVideoQcom:[I

.field private blacklist mSmartMCCQuota5GFileTransMTK:[I

.field private blacklist mSmartMCCQuota5GFileTransQcom:[I

.field private blacklist mSmartMCCQuota5GOthersMTK:[I

.field private blacklist mSmartMCCQuota5GOthersQcom:[I

.field private blacklist mSmartMCCQuota5GP2PFileTransMTK:[I

.field private blacklist mSmartMCCQuota5GP2PFileTransQcom:[I

.field private blacklist mSmartMCCQuota5GRealTimeGameMTK:[I

.field private blacklist mSmartMCCQuota5GRealTimeGameQcom:[I

.field private blacklist mSmartMCCQuota5GVideoMTK:[I

.field private blacklist mSmartMCCQuota5GVideoQcom:[I

.field private blacklist mSmartMCCRealTimeGameAppList:[Ljava/lang/String;

.field private blacklist mSmartMCCVideoAppList:[Ljava/lang/String;

.field private blacklist mSpeedRttParams:[I

.field private blacklist mVideoApps:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetDEBUG(Landroid/net/wifi/OplusWifiRomUpdateHelper;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->DEBUG:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKeyValuePair(Landroid/net/wifi/OplusWifiRomUpdateHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDownloadApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDownloadApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDualStaApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDualStaAppsExp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaAppsExp:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDualStaBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaBlackList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDualStaCapHostBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaCapHostBlackList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDualStaDisableMcc(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaDisableMcc:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDynamicTddWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDynamicTddWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHybridBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mHybridBlackList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHybridTgpaApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mHybridTgpaApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIOTConnectWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTConnectWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLmParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mLmParams:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNullDataToCTSRouterBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mNullDataToCTSRouterBlackList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNullDataToCTSRouterWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mNullDataToCTSRouterWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplus5g160MSapApkWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapApkWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplus5g160MSapConfig(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapConfig:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplus5g160MSapCountryWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapCountryWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplus5g160MStationFeatureForPhoneClone(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MStationFeatureForPhoneClone:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplusScreencastP2pOptEnabled(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplusScreencastP2pOptEnabled:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplusSnifferCaptureWithUdp(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplusSnifferCaptureWithUdp:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestorApp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRequestorApp:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouterBoostDupPktGameBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostDupPktGameBlackList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouterBoostDupPktGameWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostDupPktGameWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouterBoostVendorIECommSupportVersionList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommSupportVersionList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouterBoostVendorIECommV1SupportOuiList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommV1SupportOuiList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRouterBoostVendorIECommV2SupportOuiList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommV2SupportOuiList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSkipDestroySocketApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSkipDestroySocketApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaAppsExp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaAppsExp:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaBlackList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaBlackList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaEnabledMCC(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaEnabledMCC:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaFastSwitchApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaFastSwitchApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaGameApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaGameAppsExp(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameAppsExp:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaGameParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameParams:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaIntervalParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaIntervalParams:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaParams:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaSpeedParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaSpeedParams:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSlaWifiScoreParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaWifiScoreParams:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartGearAppWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearAppWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartGearRouterWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearRouterWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartGearSsidWhiteList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearSsidWhiteList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartMCCFileTransAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCFileTransAppList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartMCCGameModeSupportAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCGameModeSupportAppList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartMCCRealTimeGameAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCRealTimeGameAppList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSmartMCCVideoAppList(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCVideoAppList:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVideoApps(Landroid/net/wifi/OplusWifiRomUpdateHelper;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mVideoApps:[Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendWifiRomUpdateChangedBroadcast(Landroid/net/wifi/OplusWifiRomUpdateHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sendWifiRomUpdateChangedBroadcast()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDefaultMacRandomizationSetting(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setDefaultMacRandomizationSetting(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetIOTPackageControlThreshold(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setIOTPackageControlThreshold(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMtkSmartBWParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setMtkSmartBWParams(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSmartBWParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setSmartBWParams(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSmartMCCQutoa(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setSmartMCCQutoa(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSpeedRttParams(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setSpeedRttParams(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetWifiAssistantFeatureState(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setWifiAssistantFeatureState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateWifiProperties(Landroid/net/wifi/OplusWifiRomUpdateHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->updateWifiProperties(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 59
    nop

    .line 60
    const-string v0, "ro.boot.hardware"

    const-string v1, "oplus"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "qcom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sIsQcomPlatform:Z

    .line 61
    nop

    .line 62
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sIsMTKPlatform:Z

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 55
    .param p1, "context"    # Landroid/content/Context;

    .line 273
    move-object/from16 v1, p0

    const-string v0, "sys_wifi_par_config_list"

    const-string v2, "/system_ext/etc/sys_wifi_par_config_list.xml"

    const-string v3, "/data/misc/wifi/sys_wifi_par_config_list.xml"

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v0, v2, v3}, Landroid/net/wifi/OplusRomUpdateHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->DEBUG:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    .line 76
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaDisableMcc:[Ljava/lang/String;

    .line 371
    const-string v5, "com.heytap.browser"

    const-string v6, "com.android.browser"

    const-string v7, "com.coloros.browser"

    const-string v8, "com.UCMobile"

    const-string v9, "com.tencent.mm"

    const-string v10, "com.tencent.mobileqq"

    const-string v11, "com.sina.weibo"

    const-string v12, "com.netease.newsreader.activity"

    const-string v13, "com.ss.android.article.news"

    const-string v14, "com.jingdong.app.mall"

    const-string v15, "com.taobao.taobao"

    const-string v16, "com.tmall.wireless"

    const-string v17, "com.achievo.vipshop"

    const-string v18, "com.xunmeng.pinduoduo"

    const-string v19, "com.baidu.tieba"

    const-string v20, "com.qzone"

    const-string v21, "com.zhihu.android"

    const-string v22, "com.xingin.xhs"

    const-string v23, "com.baidu.browser.apps"

    const-string v24, "com.tencent.mtt"

    const-string v25, "com.eg.android.AlipayGphone"

    const-string v26, "me.ele"

    const-string v27, "com.sankuai.meituan"

    const-string v28, "com.sankuai.meituan.takeoutnew"

    const-string v29, "com.dianping.v1"

    const-string v30, "com.moji.mjweather"

    const-string v31, "ctrip.android.view"

    const-string v32, "com.Qunar"

    const-string v33, "com.tencent.news"

    const-string v34, "com.tencent.reading"

    filled-new-array/range {v5 .. v34}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaApps:[Ljava/lang/String;

    .line 372
    const-string v5, "com.whatsapp"

    const-string v6, "in.mohalla.sharechat"

    const-string v7, "app.buzz.share"

    const-string v8, "com.facebook.orca"

    const-string v9, "com.UCMobile.intl"

    const-string v10, "com.mcent.browser"

    const-string v11, "com.redefine.welike"

    const-string v12, "com.instagram.android"

    const-string v13, "com.heytap.browser"

    const-string v14, "com.android.browser"

    const-string v15, "com.coloros.browser"

    const-string v16, "com.android.chrome"

    const-string v17, "com.facebook.katana"

    const-string v18, "org.mozilla.firefox"

    const-string v19, "com.opera.browser"

    const-string v20, "com.heytap.browser"

    filled-new-array/range {v5 .. v20}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaAppsExp:[Ljava/lang/String;

    .line 373
    const-string v2, "not.defined"

    const-string v3, "com.tencent.tmgp.sgame"

    const-string v5, "com.tencent.tmgp.pubgmhd"

    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameApps:[Ljava/lang/String;

    .line 374
    const-string v5, "com.tencent.ig"

    filled-new-array {v2, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameAppsExp:[Ljava/lang/String;

    .line 375
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaBlackList:[Ljava/lang/String;

    .line 376
    const-string v2, "460"

    const-string v5, "404-405-406"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaEnabledMCC:[Ljava/lang/String;

    .line 377
    const-string v5, "200"

    const-string v6, "500"

    const-string v7, "1000"

    const-string v8, "500"

    const-string v9, "230"

    const-string v10, "200"

    const-string v11, "220"

    const-string v12, "55"

    const-string v13, "75"

    const-string v14, "2000"

    const-string v15, "2000"

    const-string v16, "200"

    const-string v17, "55"

    filled-new-array/range {v5 .. v17}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaParams:[Ljava/lang/String;

    .line 378
    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSpeedRttParams:[I

    .line 379
    const-string v2, "4#8#0000000100010003"

    const-string v5, "4#8#000003e900040003"

    const-string v6, "5#5#0864100118"

    const-string v7, "5#5#0865100018"

    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameParams:[Ljava/lang/String;

    .line 381
    const-string v5, "2000"

    const-string v6, "2000"

    const-string v7, "3000"

    const-string v8, "10000"

    const-string v9, "5000"

    const-string v10, "300000"

    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaIntervalParams:[Ljava/lang/String;

    .line 382
    const-string v5, "200"

    const-string v6, "300"

    const-string v7, "400"

    const-string v8, "500"

    const-string v9, "1000"

    const-string v10, "1000"

    const-string v11, "500"

    const-string v12, "2000"

    const-string v13, "200"

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaSpeedParams:[Ljava/lang/String;

    .line 383
    const-string v2, "55"

    const-string v5, "75"

    const-string v6, "60"

    filled-new-array {v2, v5, v6, v5}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaWifiScoreParams:[Ljava/lang/String;

    .line 387
    const-string v2, "us.zoom.videomeetings"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaFastSwitchApps:[Ljava/lang/String;

    .line 475
    const-string v5, "com.heytap.browser"

    const-string v6, "com.android.browser"

    const-string v7, "com.oplus.browser"

    const-string v8, "com.coloros.browser"

    const-string v9, "com.UCMobile"

    const-string v10, "com.tencent.mm"

    const-string v11, "com.tencent.mobileqq"

    const-string v12, "com.sina.weibo"

    const-string v13, "com.netease.newsreader.activity"

    const-string v14, "com.ss.android.article.news"

    const-string v15, "com.jingdong.app.mall"

    const-string v16, "com.taobao.taobao"

    const-string v17, "com.tmall.wireless"

    const-string v18, "com.achievo.vipshop"

    const-string v19, "com.xunmeng.pinduoduo"

    const-string v20, "com.baidu.tieba"

    const-string v21, "com.qzone"

    const-string v22, "com.zhihu.android"

    const-string v23, "com.xingin.xhs"

    const-string v24, "com.baidu.browser.apps"

    const-string v25, "com.tencent.mtt"

    const-string v26, "com.eg.android.AlipayGphone"

    const-string v27, "me.ele"

    const-string v28, "com.sankuai.meituan"

    const-string v29, "com.sankuai.meituan.takeoutnew"

    const-string v30, "com.dianping.v1"

    const-string v31, "com.moji.mjweather"

    const-string v32, "ctrip.android.view"

    const-string v33, "com.Qunar"

    const-string v34, "com.tencent.news"

    const-string v35, "com.tencent.reading"

    const-string v36, "com.tencent.qqlive"

    const-string v37, "com.youku.phone"

    const-string v38, "com.qiyi.video"

    const-string v39, "com.sohu.sohuvideo"

    const-string v40, "com.tencent.android.qqdownloader"

    const-string v41, "com.oppo.market"

    const-string v42, "com.nearme.gamecenter"

    const-string v43, "com.xunlei.downloadprovider"

    const-string v44, "tv.danmaku.bili"

    const-string v45, "com.ss.android.ugc.aweme"

    const-string v46, "com.smile.gifmaker"

    const-string v47, "air.tv.douyu.android"

    const-string v48, "com.ss.android.ugc.live"

    const-string v49, "com.hunantv.imgo.activity"

    const-string v50, "com.ss.android.article.video"

    const-string v51, "com.duowan.kiwi"

    const-string v52, "com.netease.cloudmusic"

    const-string v53, "com.kugou.android"

    const-string v54, "com.tencent.qqmusic"

    filled-new-array/range {v5 .. v54}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaApps:[Ljava/lang/String;

    .line 476
    const-string v5, "com.whatsapp"

    const-string v6, "in.mohalla.sharechat"

    const-string v7, "app.buzz.share"

    const-string v8, "com.facebook.orca"

    const-string v9, "com.UCMobile.intl"

    const-string v10, "com.mcent.browser"

    const-string v11, "com.redefine.welike"

    const-string v12, "com.instagram.android"

    const-string v13, "com.heytap.browser"

    const-string v14, "com.android.browser"

    const-string v15, "com.oplus.browser"

    const-string v16, "com.coloros.browser"

    const-string v17, "com.android.chrome"

    const-string v18, "com.facebook.katana"

    const-string v19, "org.mozilla.firefox"

    const-string v20, "com.opera.browser"

    filled-new-array/range {v5 .. v20}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaAppsExp:[Ljava/lang/String;

    .line 477
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaBlackList:[Ljava/lang/String;

    .line 478
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mVideoApps:[Ljava/lang/String;

    .line 479
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDownloadApps:[Ljava/lang/String;

    .line 480
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaCapHostBlackList:[Ljava/lang/String;

    .line 481
    const-string v2, "com.tencent.mm"

    const-string v5, "com.tencent.mobileqq"

    const-string v6, "com.alibaba.android.rimet"

    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSkipDestroySocketApps:[Ljava/lang/String;

    .line 482
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRequestorApp:[Ljava/lang/String;

    .line 527
    const-string v2, "1350#1200#0#4#17f10304"

    const-string v5, "1400#1250#0#4#17f10305"

    const-string v6, "1800#1250#0#4#17f10306"

    const-string v7, "1800#1250#0#4#17f10307"

    filled-new-array {v2, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mLmParams:[Ljava/lang/String;

    .line 586
    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartBWParams:[I

    .line 589
    const/16 v2, 0x12

    new-array v2, v2, [I

    fill-array-data v2, :array_2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mMtkSmartBWParams:[I

    .line 697
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearRouterWhiteList:[Ljava/lang/String;

    .line 698
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearSsidWhiteList:[Ljava/lang/String;

    .line 699
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearAppWhiteList:[Ljava/lang/String;

    .line 716
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostDupPktGameWhiteList:[Ljava/lang/String;

    .line 717
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostDupPktGameBlackList:[Ljava/lang/String;

    .line 730
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommSupportVersionList:[Ljava/lang/String;

    .line 731
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommV2SupportOuiList:[Ljava/lang/String;

    .line 732
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommV1SupportOuiList:[Ljava/lang/String;

    .line 749
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mNullDataToCTSRouterWhiteList:[Ljava/lang/String;

    .line 755
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mNullDataToCTSRouterBlackList:[Ljava/lang/String;

    .line 775
    const-string v2, "com.heytap.smarthome"

    const-string v5, "com.heytap.appplatform"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTConnectWhiteList:[Ljava/lang/String;

    .line 782
    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTPackageControlThreshold:[I

    .line 814
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapConfig:[Ljava/lang/String;

    .line 815
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MStationFeatureForPhoneClone:[Ljava/lang/String;

    .line 816
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapApkWhiteList:[Ljava/lang/String;

    .line 817
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapCountryWhiteList:[Ljava/lang/String;

    .line 855
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mHybridTgpaApps:[Ljava/lang/String;

    .line 859
    const-string v2, "ff 00 001018 0200000c0000 ff00ffffffff 4d 0092"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mHybridBlackList:[Ljava/lang/String;

    .line 867
    const-string v2, "com.ss.android.ugc.aweme"

    const-string v3, "com.ss.android.ugc.aweme.lite"

    const-string v5, "com.smile.gifmaker"

    const-string v6, "com.kuaishou.nebula"

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDynamicTddWhiteList:[Ljava/lang/String;

    .line 874
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplusSnifferCaptureWithUdp:Ljava/lang/String;

    .line 885
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplusScreencastP2pOptEnabled:Ljava/lang/String;

    .line 896
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCVideoAppList:[Ljava/lang/String;

    .line 897
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCRealTimeGameAppList:[Ljava/lang/String;

    .line 898
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCFileTransAppList:[Ljava/lang/String;

    .line 899
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCGameModeSupportAppList:[Ljava/lang/String;

    .line 900
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoMTK:[I

    .line 901
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameMTK:[I

    .line 902
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransMTK:[I

    .line 903
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransMTK:[I

    .line 904
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersMTK:[I

    .line 905
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoMTK:[I

    .line 906
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameMTK:[I

    .line 907
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransMTK:[I

    .line 908
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransMTK:[I

    .line 909
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersMTK:[I

    .line 911
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoQcom:[I

    .line 912
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameQcom:[I

    .line 913
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransQcom:[I

    .line 914
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransQcom:[I

    .line 915
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersQcom:[I

    .line 916
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoQcom:[I

    .line 917
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameQcom:[I

    .line 918
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransQcom:[I

    .line 919
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransQcom:[I

    .line 920
    iput-object v0, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersQcom:[I

    .line 274
    new-instance v0, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;-><init>(Landroid/net/wifi/OplusWifiRomUpdateHelper;)V

    new-instance v2, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;

    invoke-direct {v2, v1}, Landroid/net/wifi/OplusWifiRomUpdateHelper$WifiRomUpdateInfo;-><init>(Landroid/net/wifi/OplusWifiRomUpdateHelper;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->setUpdateInfo(Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;Landroid/net/wifi/OplusRomUpdateHelper$UpdateInfo;)V

    .line 276
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/OplusWifiRomUpdateHelper;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x96
        0x64
        0xfa
        0xc8
        0x96
        0x5
        0xa
        0xf
        0xa
        0x5
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x55
        0x891c
        0x8
        0x64
        0x2
        0x5
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x0
        0x1
        0x3c
        0x1e
        0x19
        -0x4b
        0xa
        0xf
        0x5
        0x3
        0x5
        0x14
        0x6
        0x87
        0x14
        0xf
        0xc8
    .end array-data

    :array_3
    .array-data 4
        0x5
        0xf
        0x258
        0x1e
        0xbb8
    .end array-data
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Landroid/net/wifi/OplusWifiRomUpdateHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/net/wifi/OplusWifiRomUpdateHelper;

    monitor-enter v0

    .line 283
    :try_start_0
    sget-object v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sInstance:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    if-nez v1, :cond_1

    .line 284
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    :try_start_1
    sget-object v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sInstance:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    if-nez v1, :cond_0

    .line 286
    new-instance v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;

    invoke-direct {v1, p0}, Landroid/net/wifi/OplusWifiRomUpdateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sInstance:Landroid/net/wifi/OplusWifiRomUpdateHelper;

    .line 288
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 290
    :cond_1
    :goto_0
    sget-object v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sInstance:Landroid/net/wifi/OplusWifiRomUpdateHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 282
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist sendWifiRomUpdateChangedBroadcast()V
    .locals 3

    .line 539
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.WIFI_ROM_UPDATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 541
    iget-object v1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mContext:Landroid/content/Context;

    const-string v2, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 544
    :cond_0
    return-void
.end method

.method private blacklist setDefaultMacRandomizationSetting(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 571
    const-string v0, "OplusWifiRomUpdateHelper"

    const/4 v1, 0x0

    .line 573
    .local v1, "result":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 576
    goto :goto_0

    .line 574
    :catch_0
    move-exception v2

    .line 575
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse int exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    const-string v2, "persist.sys.oplus.wifi.mac_randomization"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 581
    :cond_0
    const-string v3, "random mac value invalid!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 579
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_2
    return-void
.end method

.method private blacklist setIOTPackageControlThreshold(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIOTPackageControlThreshold text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWifiRomUpdateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eqz p1, :cond_0

    .line 795
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, "params":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    iget-object v3, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTPackageControlThreshold:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 798
    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aget-object v4, v0, v3

    .line 799
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    aget-object v4, v0, v3

    .line 800
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x3

    aget-object v4, v0, v3

    .line 801
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x4

    aget-object v4, v0, v3

    .line 802
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTPackageControlThreshold:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    goto :goto_0

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIOTPackageControlThreshold failed to parse params:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTPackageControlThreshold:[I

    .line 809
    .end local v0    # "params":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist setMtkSmartBWParams(Ljava/lang/String;)V
    .locals 40
    .param p1, "text"    # Ljava/lang/String;

    .line 618
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "OplusWifiRomUpdateHelper"

    if-eqz v2, :cond_1

    .line 619
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 620
    .local v4, "params":[Ljava/lang/String;
    if-eqz v4, :cond_1

    array-length v0, v4

    iget-object v5, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mMtkSmartBWParams:[I

    array-length v5, v5

    if-ne v0, v5, :cond_1

    .line 622
    const/4 v0, 0x0

    :try_start_0
    aget-object v5, v4, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 623
    .local v5, "SELECT_BW_WHEN_CONNECT_FEATRUE_ENABLE":I
    const/4 v6, 0x1

    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 624
    .local v7, "DYNAMIC_SW_BW_FEATRUE_ENABLE":I
    const/4 v8, 0x2

    aget-object v9, v4, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 626
    .local v9, "DBG":I
    const/4 v10, 0x3

    aget-object v11, v4, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 627
    .local v11, "SCAN_RESULT_EXPIRE":I
    const/4 v12, 0x4

    aget-object v13, v4, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 628
    .local v13, "SAVE_CONNECT_LOG_THRESHOLD":I
    const/4 v14, 0x5

    aget-object v15, v4, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 629
    .local v15, "CLEAN_AP_NUMBER":I
    const/16 v16, 0x6

    aget-object v17, v4, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 630
    .local v17, "GOOD_RSSI":I
    const/16 v18, 0x7

    aget-object v19, v4, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 631
    .local v19, "CLEAN_CH_IDLE_SLOT_RATIO":I
    const/16 v20, 0x8

    aget-object v21, v4, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 634
    .local v21, "CLEAN_BAND_IDLE_SLOT_RATIO":I
    const/16 v22, 0x9

    aget-object v23, v4, v22

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 635
    .local v23, "LQ_CHECK_NUM":I
    const/16 v23, 0x5

    .line 636
    const/16 v24, 0xa

    aget-object v25, v4, v24

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 637
    .local v25, "LQ_MIN_ACTIVE_NEED_NUM":I
    const/16 v26, 0xb

    aget-object v27, v4, v26

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 638
    .local v27, "LQ_CHECK_EXPIRE":I
    const/16 v28, 0xc

    aget-object v29, v4, v28

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 639
    .local v29, "LQ_AP_40M_IOT_L2_REACH_PACKET_COUNT":I
    const/16 v30, 0xd

    aget-object v31, v4, v30

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 640
    .local v31, "LQ_AP_40M_IOT_L3_REACH_PACKET_COUNT":I
    const/16 v32, 0xe

    aget-object v33, v4, v32

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 641
    .local v33, "LQ_40M_BAD_RATE":I
    const/16 v34, 0xf

    aget-object v35, v4, v34

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    .line 642
    .local v35, "LQ_PER_HIGH":I
    const/16 v36, 0x10

    aget-object v37, v4, v36

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 643
    .local v37, "LQ_IDLE_SLOT_RATIO_ACCEPT":I
    const/16 v38, 0x11

    aget-object v39, v4, v38

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 645
    .local v39, "LQ_L3_SPEED_LOW":I
    const/16 v14, 0x12

    new-array v14, v14, [I

    aput v5, v14, v0

    aput v7, v14, v6

    aput v9, v14, v8

    aput v11, v14, v10

    aput v13, v14, v12

    const/4 v0, 0x5

    aput v15, v14, v0

    aput v17, v14, v16

    aput v19, v14, v18

    aput v21, v14, v20

    aput v23, v14, v22

    aput v25, v14, v24

    aput v27, v14, v26

    aput v29, v14, v28

    aput v31, v14, v30

    aput v33, v14, v32

    aput v35, v14, v34

    aput v37, v14, v36

    aput v39, v14, v38

    iput-object v14, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mMtkSmartBWParams:[I

    .line 649
    if-lez v9, :cond_0

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMtkSmartBWParams parse params:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v5    # "SELECT_BW_WHEN_CONNECT_FEATRUE_ENABLE":I
    .end local v7    # "DYNAMIC_SW_BW_FEATRUE_ENABLE":I
    .end local v9    # "DBG":I
    .end local v11    # "SCAN_RESULT_EXPIRE":I
    .end local v13    # "SAVE_CONNECT_LOG_THRESHOLD":I
    .end local v15    # "CLEAN_AP_NUMBER":I
    .end local v17    # "GOOD_RSSI":I
    .end local v19    # "CLEAN_CH_IDLE_SLOT_RATIO":I
    .end local v21    # "CLEAN_BAND_IDLE_SLOT_RATIO":I
    .end local v23    # "LQ_CHECK_NUM":I
    .end local v25    # "LQ_MIN_ACTIVE_NEED_NUM":I
    .end local v27    # "LQ_CHECK_EXPIRE":I
    .end local v29    # "LQ_AP_40M_IOT_L2_REACH_PACKET_COUNT":I
    .end local v31    # "LQ_AP_40M_IOT_L3_REACH_PACKET_COUNT":I
    .end local v33    # "LQ_40M_BAD_RATE":I
    .end local v35    # "LQ_PER_HIGH":I
    .end local v37    # "LQ_IDLE_SLOT_RATIO_ACCEPT":I
    .end local v39    # "LQ_L3_SPEED_LOW":I
    :cond_0
    goto :goto_0

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMtkSmartBWParams failed to parse params:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mMtkSmartBWParams:[I

    .line 658
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "params":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist setSmartBWParams(Ljava/lang/String;)V
    .locals 21
    .param p1, "text"    # Ljava/lang/String;

    .line 661
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_0

    .line 662
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "params":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v0, v3

    iget-object v4, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartBWParams:[I

    array-length v4, v4

    if-ne v0, v4, :cond_0

    .line 665
    const/4 v0, 0x0

    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 666
    .local v4, "featureEnable":I
    const/4 v5, 0x1

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 667
    .local v6, "debugLevel":I
    const/4 v7, 0x2

    aget-object v8, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 668
    .local v8, "llComScoreThre":I
    const/4 v9, 0x3

    aget-object v10, v3, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 669
    .local v10, "acsWeightThre":I
    const/4 v11, 0x4

    aget-object v12, v3, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 670
    .local v12, "movAvgBeta":I
    const/4 v13, 0x5

    aget-object v14, v3, v13

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 671
    .local v14, "threTuneDist":I
    const/4 v15, 0x6

    aget-object v16, v3, v15

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 672
    .local v16, "sampleInterval":I
    const/16 v17, 0x7

    aget-object v18, v3, v17

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 673
    .local v18, "goodMcs":I
    const/16 v19, 0x8

    aget-object v20, v3, v19

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 674
    .local v20, "badMcs":I
    const/16 v15, 0x9

    new-array v15, v15, [I

    aput v4, v15, v0

    aput v6, v15, v5

    aput v8, v15, v7

    aput v10, v15, v9

    aput v12, v15, v11

    aput v14, v15, v13

    const/4 v0, 0x6

    aput v16, v15, v0

    aput v18, v15, v17

    aput v20, v15, v19

    iput-object v15, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartBWParams:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .end local v4    # "featureEnable":I
    .end local v6    # "debugLevel":I
    .end local v8    # "llComScoreThre":I
    .end local v10    # "acsWeightThre":I
    .end local v12    # "movAvgBeta":I
    .end local v14    # "threTuneDist":I
    .end local v16    # "sampleInterval":I
    .end local v18    # "goodMcs":I
    .end local v20    # "badMcs":I
    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSmartBWParams failed to parse params:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusWifiRomUpdateHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartBWParams:[I

    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist setSmartMCCQutoa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .line 1021
    if-eqz p1, :cond_16

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 1024
    :cond_0
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1025
    .local v0, "params":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartMCCQutoa tagName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OplusWifiRomUpdateHelper"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    if-eqz v0, :cond_15

    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_15

    .line 1027
    const/4 v1, 0x0

    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1028
    .local v5, "staQuota":I
    const/4 v6, 0x1

    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1035
    .local v7, "p2pQuota":I
    :try_start_0
    const-string v8, "SMARTMCC_QUOTA_2G_VIDEO_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1036
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoMTK:[I

    goto/16 :goto_0

    .line 1037
    :cond_1
    const-string v8, "SMARTMCC_QUOTA_2G_REAL_TIME_GAME_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1038
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameMTK:[I

    goto/16 :goto_0

    .line 1039
    :cond_2
    const-string v8, "SMARTMCC_QUOTA_2G_FILE_TRANS_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1040
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransMTK:[I

    goto/16 :goto_0

    .line 1041
    :cond_3
    const-string v8, "SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1042
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransMTK:[I

    goto/16 :goto_0

    .line 1043
    :cond_4
    const-string v8, "SMARTMCC_QUOTA_2G_OTHERS_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1044
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersMTK:[I

    goto/16 :goto_0

    .line 1045
    :cond_5
    const-string v8, "SMARTMCC_QUOTA_5G_VIDEO_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1046
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoMTK:[I

    goto/16 :goto_0

    .line 1047
    :cond_6
    const-string v8, "SMARTMCC_QUOTA_5G_REALTIME_GAME_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1048
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameMTK:[I

    goto/16 :goto_0

    .line 1049
    :cond_7
    const-string v8, "SMARTMCC_QUOTA_5G_FILE_TRANS_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1050
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransMTK:[I

    goto/16 :goto_0

    .line 1051
    :cond_8
    const-string v8, "SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1052
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransMTK:[I

    goto/16 :goto_0

    .line 1053
    :cond_9
    const-string v8, "SMARTMCC_QUOTA_5G_OTHERS_MTK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1054
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersMTK:[I

    goto/16 :goto_0

    .line 1057
    :cond_a
    const-string v8, "SMARTMCC_QUOTA_2G_VIDEO_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1058
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoQcom:[I

    goto/16 :goto_0

    .line 1059
    :cond_b
    const-string v8, "SMARTMCC_QUOTA_2G_REAL_TIME_GAME_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1060
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameQcom:[I

    goto/16 :goto_0

    .line 1061
    :cond_c
    const-string v8, "SMARTMCC_QUOTA_2G_FILE_TRANS_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1062
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransQcom:[I

    goto/16 :goto_0

    .line 1063
    :cond_d
    const-string v8, "SMARTMCC_QUOTA_2G_P2P_FILE_TRANS_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1064
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransQcom:[I

    goto :goto_0

    .line 1065
    :cond_e
    const-string v8, "SMARTMCC_QUOTA_2G_OTHERS_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1066
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersQcom:[I

    goto :goto_0

    .line 1067
    :cond_f
    const-string v8, "SMARTMCC_QUOTA_5G_VIDEO_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1068
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoQcom:[I

    goto :goto_0

    .line 1069
    :cond_10
    const-string v8, "SMARTMCC_QUOTA_5G_REALTIME_GAME_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1070
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameQcom:[I

    goto :goto_0

    .line 1071
    :cond_11
    const-string v8, "SMARTMCC_QUOTA_5G_FILE_TRANS_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1072
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransQcom:[I

    goto :goto_0

    .line 1073
    :cond_12
    const-string v8, "SMARTMCC_QUOTA_5G_P2P_FILE_TRANS_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1074
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransQcom:[I

    goto :goto_0

    .line 1075
    :cond_13
    const-string v8, "SMARTMCC_QUOTA_5G_OTHERS_QCOM"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1076
    new-array v4, v4, [I

    aput v5, v4, v1

    aput v7, v4, v6

    iput-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersQcom:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_14
    :goto_0
    goto :goto_1

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setSmartMCCQutoa failed to parse tagName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoMTK:[I

    .line 1081
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameMTK:[I

    .line 1082
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransMTK:[I

    .line 1083
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransMTK:[I

    .line 1084
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersMTK:[I

    .line 1085
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoMTK:[I

    .line 1086
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameMTK:[I

    .line 1087
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransMTK:[I

    .line 1088
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransMTK:[I

    .line 1089
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersMTK:[I

    .line 1090
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoQcom:[I

    .line 1091
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameQcom:[I

    .line 1092
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransQcom:[I

    .line 1093
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransQcom:[I

    .line 1094
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersQcom:[I

    .line 1095
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoQcom:[I

    .line 1096
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameQcom:[I

    .line 1097
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransQcom:[I

    .line 1098
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransQcom:[I

    .line 1099
    iput-object v2, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersQcom:[I

    .line 1101
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 1030
    .end local v5    # "staQuota":I
    .end local v7    # "p2pQuota":I
    :cond_15
    return-void

    .line 1022
    .end local v0    # "params":[Ljava/lang/String;
    :cond_16
    :goto_2
    return-void
.end method

.method private blacklist setSpeedRttParams(Ljava/lang/String;)V
    .locals 26
    .param p1, "text"    # Ljava/lang/String;

    .line 431
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_0

    .line 432
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 433
    .local v3, "params":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v0, v3

    const/16 v4, 0xb

    if-ne v0, v4, :cond_0

    .line 435
    const/4 v0, 0x0

    :try_start_0
    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 436
    .local v5, "speed_1":I
    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 437
    .local v7, "speed_2":I
    const/4 v8, 0x2

    aget-object v9, v3, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 438
    .local v9, "rtt_1":I
    const/4 v10, 0x3

    aget-object v11, v3, v10

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 439
    .local v11, "rtt_2":I
    const/4 v12, 0x4

    aget-object v13, v3, v12

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 440
    .local v13, "rtt_3":I
    const/4 v14, 0x5

    aget-object v15, v3, v14

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 441
    .local v15, "speed_score_1":I
    const/16 v16, 0x6

    aget-object v17, v3, v16

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 442
    .local v17, "speed_score_2":I
    const/16 v18, 0x7

    aget-object v19, v3, v18

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 443
    .local v19, "rtt_score_1":I
    const/16 v20, 0x8

    aget-object v21, v3, v20

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 444
    .local v21, "rtt_score_2":I
    const/16 v22, 0x9

    aget-object v23, v3, v22

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 445
    .local v23, "rtt_score_3":I
    const/16 v24, 0xa

    aget-object v25, v3, v24

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 446
    .local v25, "cellDecreaseMax":I
    new-array v4, v4, [I

    aput v5, v4, v0

    aput v7, v4, v6

    aput v9, v4, v8

    aput v11, v4, v10

    aput v13, v4, v12

    aput v15, v4, v14

    aput v17, v4, v16

    aput v19, v4, v18

    aput v21, v4, v20

    aput v23, v4, v22

    aput v25, v4, v24

    iput-object v4, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSpeedRttParams:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v5    # "speed_1":I
    .end local v7    # "speed_2":I
    .end local v9    # "rtt_1":I
    .end local v11    # "rtt_2":I
    .end local v13    # "rtt_3":I
    .end local v15    # "speed_score_1":I
    .end local v17    # "speed_score_2":I
    .end local v19    # "rtt_score_1":I
    .end local v21    # "rtt_score_2":I
    .end local v23    # "rtt_score_3":I
    .end local v25    # "cellDecreaseMax":I
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSpeedRttParams failed to parse params:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusWifiRomUpdateHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSpeedRttParams:[I

    .line 455
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist setWifiAssistantFeatureState(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 763
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 764
    .local v0, "expState":Z
    iget-object v1, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rom.update.wifi.assistant"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    .line 766
    .local v1, "curState":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiAssistantFeatureState exp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusWifiRomUpdateHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-eq v0, v1, :cond_1

    .line 768
    iget-object v3, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 770
    nop

    .line 768
    invoke-static {v3, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    :cond_1
    return-void
.end method

.method private blacklist updateWifiProperties(Ljava/lang/String;)V
    .locals 9
    .param p1, "rusContext"    # Ljava/lang/String;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update wifi properties, params is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusWifiRomUpdateHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 554
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "wifiRusPorperties":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 556
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 557
    .local v5, "sysProp":Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, "wifiRusProp":[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    aget-object v7, v6, v3

    .line 559
    const-string v8, "persist.sys.oplus.wifi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 560
    aget-object v7, v6, v3

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v7, "update wifi properties success"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .end local v5    # "sysProp":Ljava/lang/String;
    .end local v6    # "wifiRusProp":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "wifiRusPorperties":[Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist dump()V
    .locals 6

    .line 358
    iget-boolean v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->DEBUG:Z

    const-string v1, "OplusWifiRomUpdateHelper"

    if-eqz v0, :cond_0

    const-string v0, "dump:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 360
    .local v0, "iterator":Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 361
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x0

    .line 362
    .local v3, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 363
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/String;

    .line 364
    iget-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Ljava/lang/String;

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 367
    :cond_1
    return-void
.end method

.method public whitelist enableVerboseLogging(I)V
    .locals 1
    .param p1, "level"    # I

    .line 353
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->DEBUG:Z

    .line 354
    return-void
.end method

.method public whitelist get5g160MSapAppWhiteList()[Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapApkWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist get5g160MSapChannel()I
    .locals 5

    .line 833
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapConfig:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 834
    const/4 v1, 0x0

    .line 836
    .local v1, "channel":I
    :try_start_0
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v1    # "channel":I
    .local v0, "channel":I
    goto :goto_0

    .line 837
    .end local v0    # "channel":I
    .restart local v1    # "channel":I
    :catch_0
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get5g160MSapChannel exception:value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapConfig:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusWifiRomUpdateHelper"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    return v1

    .line 842
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "channel":I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist get5g160MSapCountryWhiteList()[Ljava/lang/String;
    .locals 1

    .line 850
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapCountryWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist get5g160MSapFeature()Z
    .locals 2

    .line 819
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MSapConfig:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 820
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 822
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist get5g160MStationFeatureForPhoneClone()Z
    .locals 2

    .line 826
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplus5g160MStationFeatureForPhoneClone:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 827
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 829
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAllVideoApps()[Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mVideoApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getBooleanValue(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Z

    .line 313
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    .local v0, "value":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 315
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 316
    return p2

    .line 318
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 322
    goto :goto_0

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusWifiRomUpdateHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 323
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public whitelist getDownloadApps()[Ljava/lang/String;
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDownloadApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDualStaBlackListApps()[Ljava/lang/String;
    .locals 1

    .line 498
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaBlackList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDualStaBlackListCapHosts()[Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaCapHostBlackList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDualStaDisabledMcc()[Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaDisableMcc:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDualStaWhiteListApps()[Ljava/lang/String;
    .locals 1

    .line 489
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDualStaWhiteListAppsExp()[Ljava/lang/String;
    .locals 1

    .line 494
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDualStaAppsExp:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDynamicTddWhiteList()[Ljava/lang/String;
    .locals 1

    .line 869
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mDynamicTddWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFloatValue(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/Double;

    .line 326
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    .local v0, "value":Ljava/lang/String;
    move-object v1, p2

    .line 328
    .local v1, "result":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 329
    return-object p2

    .line 331
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 335
    goto :goto_0

    .line 332
    :catch_0
    move-exception v2

    .line 333
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusWifiRomUpdateHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object v1, p2

    .line 336
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v1
.end method

.method public whitelist getHybridBlackList()[Ljava/lang/String;
    .locals 1

    .line 861
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mHybridBlackList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getHybridTgpaApps()[Ljava/lang/String;
    .locals 1

    .line 857
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mHybridTgpaApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIOTConnectWhiteList()[Ljava/lang/String;
    .locals 1

    .line 785
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTConnectWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIOTPackageControlThreshold()[I
    .locals 1

    .line 789
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mIOTPackageControlThreshold:[I

    return-object v0
.end method

.method public whitelist getIntegerValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/Integer;

    .line 300
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    .local v0, "value":Ljava/lang/String;
    move-object v1, p2

    .line 302
    .local v1, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 303
    return-object p2

    .line 305
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 309
    goto :goto_0

    .line 306
    :catch_0
    move-exception v2

    .line 307
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusWifiRomUpdateHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    move-object v1, p2

    .line 310
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v1
.end method

.method public whitelist getLongValue(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/Long;

    .line 339
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 340
    .local v0, "value":Ljava/lang/String;
    move-object v1, p2

    .line 341
    .local v1, "result":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 342
    return-object p2

    .line 344
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 348
    goto :goto_0

    .line 345
    :catch_0
    move-exception v2

    .line 346
    .local v2, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusWifiRomUpdateHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    move-object v1, p2

    .line 349
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    :goto_0
    return-object v1
.end method

.method public whitelist getNullDataToCTSRouterBlackList()[Ljava/lang/String;
    .locals 1

    .line 758
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mNullDataToCTSRouterBlackList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNullDataToCTSRouterWhiteList()[Ljava/lang/String;
    .locals 1

    .line 752
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mNullDataToCTSRouterWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequestorApps()[Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRequestorApp:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRouterBoostDupPktGameBlackList()[Ljava/lang/String;
    .locals 1

    .line 724
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostDupPktGameBlackList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRouterBoostDupPktGameWhiteList()[Ljava/lang/String;
    .locals 1

    .line 720
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostDupPktGameWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRouterBoostVendorIECommSupportVersionList()[Ljava/lang/String;
    .locals 1

    .line 735
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommSupportVersionList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRouterBoostVendorIECommV1SupportOuiList()[Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommV1SupportOuiList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRouterBoostVendorIECommV2SupportOuiList()[Ljava/lang/String;
    .locals 1

    .line 739
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mRouterBoostVendorIECommV2SupportOuiList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getScreencastP2pOptEnabled()Z
    .locals 1

    .line 888
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplusScreencastP2pOptEnabled:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 889
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 891
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSkipDestroySocketApps()[Ljava/lang/String;
    .locals 1

    .line 522
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSkipDestroySocketApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaBlackListApps()[Ljava/lang/String;
    .locals 1

    .line 404
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaBlackList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaEnabledMcc()[Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaEnabledMCC:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaFastSwitchApps()[Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaFastSwitchApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaGameApps()[Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaGameAppsExp()[Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameAppsExp:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaGameParams()[Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaGameParams:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaIntervalParams()[Ljava/lang/String;
    .locals 1

    .line 466
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaIntervalParams:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaParams()[Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaParams:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaSpeedParams()[Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaSpeedParams:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaWhiteListApps()[Ljava/lang/String;
    .locals 1

    .line 395
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaApps:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaWhiteListAppsExp()[Ljava/lang/String;
    .locals 1

    .line 400
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaAppsExp:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSlaWifiScoreParams()[Ljava/lang/String;
    .locals 1

    .line 470
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSlaWifiScoreParams:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartBWParams()[I
    .locals 4

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sIsQcomPlatform = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sIsQcomPlatform:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " sIsMTKPlatform = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Landroid/net/wifi/OplusWifiRomUpdateHelper;->sIsMTKPlatform:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OplusWifiRomUpdateHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    if-eqz v1, :cond_0

    .line 687
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartBWParams:[I

    return-object v0

    .line 688
    :cond_0
    if-eqz v2, :cond_1

    .line 689
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mMtkSmartBWParams:[I

    return-object v0

    .line 691
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getSmartGearAppWhiteList()[Ljava/lang/String;
    .locals 1

    .line 710
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearAppWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartGearRouterWhiteList()[Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearRouterWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartGearSsidWhiteList()[Ljava/lang/String;
    .locals 1

    .line 706
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartGearSsidWhiteList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartMCCFileTransAppList()[Ljava/lang/String;
    .locals 1

    .line 931
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCFileTransAppList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartMCCGameModeSupportAppList()[Ljava/lang/String;
    .locals 1

    .line 935
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCGameModeSupportAppList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GFileTransMTK()[I
    .locals 1

    .line 947
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GFileTransQcom()[I
    .locals 1

    .line 987
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GFileTransQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GOthersMTK()[I
    .locals 1

    .line 955
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GOthersQcom()[I
    .locals 1

    .line 995
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GOthersQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GP2PFileTransMTK()[I
    .locals 1

    .line 951
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GP2PFileTransQcom()[I
    .locals 1

    .line 991
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GP2PFileTransQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GRealTimeGameMTK()[I
    .locals 1

    .line 943
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GRealTimeGameQcom()[I
    .locals 1

    .line 983
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GRealTimeGameQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GVideoMTK()[I
    .locals 1

    .line 939
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota2GVideoQcom()[I
    .locals 1

    .line 979
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota2GVideoQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GFileTransMTK()[I
    .locals 1

    .line 967
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GFileTransQcom()[I
    .locals 1

    .line 1007
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GFileTransQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GOthersMTK()[I
    .locals 1

    .line 975
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GOthersQcom()[I
    .locals 1

    .line 1015
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GOthersQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GP2PFileTransMTK()[I
    .locals 1

    .line 971
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GP2PFileTransQcom()[I
    .locals 1

    .line 1011
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GP2PFileTransQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GRealTimeGameMTK()[I
    .locals 1

    .line 963
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GRealTimeGameQcom()[I
    .locals 1

    .line 1003
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GRealTimeGameQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GVideoMTK()[I
    .locals 1

    .line 959
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoMTK:[I

    return-object v0
.end method

.method public whitelist getSmartMCCQuota5GVideoQcom()[I
    .locals 1

    .line 999
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCQuota5GVideoQcom:[I

    return-object v0
.end method

.method public whitelist getSmartMCCRealTimeGameAppList()[Ljava/lang/String;
    .locals 1

    .line 927
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCRealTimeGameAppList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSmartMCCVideoAppList()[Ljava/lang/String;
    .locals 1

    .line 923
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSmartMCCVideoAppList:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSnifferCaptureWithUdp()Z
    .locals 1

    .line 877
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mOplusSnifferCaptureWithUdp:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 878
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 880
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getSpeedRttParams()[I
    .locals 1

    .line 427
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mSpeedRttParams:[I

    return-object v0
.end method

.method public whitelist getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mKeyValuePair:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 296
    return-object p2

    .line 297
    :cond_0
    return-object v0
.end method

.method public whitelist getWechatLmParams()[Ljava/lang/String;
    .locals 1

    .line 530
    iget-object v0, p0, Landroid/net/wifi/OplusWifiRomUpdateHelper;->mLmParams:[Ljava/lang/String;

    return-object v0
.end method
