.class public Lcom/android/internal/os/BatteryStatsImplExtImpl;
.super Ljava/lang/Object;
.source "BatteryStatsImplExtImpl.java"

# interfaces
.implements Lcom/android/internal/os/IBatteryStatsImplExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;,
        Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;,
        Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;,
        Lcom/android/internal/os/BatteryStatsImplExtImpl$WorkHandler;
    }
.end annotation


# static fields
.field protected static blacklist ACTIVITY_MONITOR_MIN_TIME:I = 0x0

.field static final blacklist BATTERY_DROP_LEVEL_THRE:I = 0x5

.field protected static final blacklist BATTERY_REALTIME_BATTERY_LEVEL:Ljava/lang/String; = "/sys/class/power_supply/battery/capacity"

.field protected static final blacklist BATTERY_REALTIME_CAPACITY:Ljava/lang/String; = "/sys/class/power_supply/battery/batt_rm"

.field protected static blacklist DEBUG_DETAIL:Z = false

.field protected static blacklist DEBUG_UID_SCREEN_BASIC:Z = false

.field static final blacklist DELAY_SYSTEM_READY:J = 0x1388L

.field private static final blacklist DUMP_HISTORY_INTENT_O:Ljava/lang/String; = "oplus.intent.action.ACTION_OPLUS_POWER_CHECKIN_SAVED"

.field protected static blacklist HIGH_POWER_THRESHOLD:J = 0x0L

.field private static final blacklist MILLISECONDS_IN_HOUR:D = 3600000.0

.field private static final blacklist MILLISECONDS_IN_MINUTE:J = 0xea60L

.field protected static final blacklist MILLISECONDS_IN_YEAR:J = 0x757b12c00L

.field static final blacklist MSG_CHECK_AVERAGE_CURRENT:I = 0x100

.field static final blacklist MSG_NOTIFY_MOBILE_ACTIVTY_UPDATED:I = 0x1

.field static final blacklist MSG_NOTIFY_POWER_DRAIN_UPDATED:I = 0x2

.field static final blacklist MSG_NOTIFY_TOP_ACTIVITY_UPDATED:I = 0x3

.field static final blacklist MSG_NOTIFY_TRAFFIC_UPDATED:I = 0x4

.field static final blacklist MSG_REPORT_CPU_UPDATE_NEEDED:I = 0x1

.field static final blacklist MSG_SYSTEM_READY:I = 0x80

.field private static final blacklist NHS_MD_ACI_SAFE_PERMISSION:Ljava/lang/String; = "com.oplus.nhs.permission.NHS_MD_ACI_SAFE_PERMISSION"

.field static final blacklist ONE_HOUR_IN_MS:J = 0x36ee80L

.field private static final blacklist ONE_THOUSAND:I = 0x3e8

.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsImplExtImpl"

.field private static final blacklist TRAN_CODE:I = 0x3f5

.field private static final blacklist TRAN_FLAG:I = 0x0

.field private static final blacklist UPDATE_INTERVAL:J = 0xea60L

.field protected static final blacklist UPLOAD_ACTIVITY_BATTERY_RECORD:Ljava/lang/String; = "activity_battery_record"

.field protected static final blacklist UPLOAD_BATTERYSTATS_RESET:Ljava/lang/String; = "batterystats_reset"

.field protected static final blacklist UPLOAD_LOGTAG:Ljava/lang/String; = "20089"


# instance fields
.field blacklist DEBUG_SUPPER_APP:Z

.field private blacklist mBTHeadsetConnected:Z

.field private blacklist mBatteryStats:Landroid/os/BatteryStats;

.field private blacklist mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

.field private blacklist mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

.field private blacklist mBatteryStatsImplExt:Lcom/android/internal/os/IBatteryStatsImplExt;

.field private blacklist mBluetoothPowerDrainMaMs:J

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurEndcInfoSummary:Ljava/lang/String;

.field private blacklist mCurModemInfoSummary:Ljava/lang/String;

.field private blacklist mCurModemTxTimes:[I

.field private blacklist mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

.field private blacklist mCurSmartEndcStatus:Lcore/java/com/android/internal/os/SmartEndcStatus;

.field private blacklist mCurStepBatteryUpTime:J

.field private blacklist mCurrScreenBrightness:I

.field private blacklist mCurrentTopActivity:Ljava/lang/String;

.field private blacklist mDevicePowerDetailsDelta:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

.field private blacklist mGpsPowerDrainMaMs:J

.field private blacklist mLastEndcInfoSummary:Ljava/lang/String;

.field private blacklist mLastLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

.field private blacklist mLastModemInfoSummary:Ljava/lang/String;

.field private blacklist mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

.field private blacklist mLastStepBatteryUpTime:J

.field private blacklist mLocalHandler:Landroid/os/Handler;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMeaturing:Z

.field private blacklist mMobilePowerDrainMaMs:J

.field private blacklist mMobileRxTotalBytes:J

.field private blacklist mMobileTxTotalBytes:J

.field blacklist mOplusBatteryManager:Landroid/os/OplusBatteryManager;

.field private blacklist mOplusRpmManager:Lcom/android/internal/os/OplusRpmSubsystemManager;

.field private blacklist mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

.field private blacklist mPowerConstants:Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;

.field private blacklist mPowerDetailsReceiver:Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;

.field private blacklist mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private blacklist mScreenRefreshMode:I

.field private blacklist mThermalRecFile:Ljava/io/File;

.field private blacklist mVolumeMusicSpeaker:I

.field private blacklist mWifiApStateEnabled:Z

.field private blacklist mWifiPowerDrainMaMs:J

.field private blacklist mWifiRxTotalBytes:J

.field private blacklist mWifiTxTotalBytes:J

.field private blacklist mWiredHeadsetConnected:Z

.field blacklist pausedBatteryLevel:I

.field blacklist pausedElapsedRealtime:J

.field blacklist resumedBatteryLevel:I

.field blacklist resumedBatteryRealtimeCapacity:I

.field blacklist resumedClass:Ljava/lang/String;

.field blacklist resumedElapsedRealtime:J

.field blacklist resumedPackage:Ljava/lang/String;

.field blacklist resumedUid:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBTHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBTHeadsetConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryStatsExt(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Landroid/os/IBatteryStatsExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurEndcInfoSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurModemInfoSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurOplusDevicePowerDetails(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurSmartEndcStatus(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcore/java/com/android/internal/os/SmartEndcStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurSmartEndcStatus:Lcore/java/com/android/internal/os/SmartEndcStatus;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastEndcInfoSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOplusRpmManager(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/OplusRpmSubsystemManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusRpmManager:Lcom/android/internal/os/OplusRpmSubsystemManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenRefreshMode(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mScreenRefreshMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVolumeMusicSpeaker(Lcom/android/internal/os/BatteryStatsImplExtImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mVolumeMusicSpeaker:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiApStateEnabled(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mWifiApStateEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWiredHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mWiredHeadsetConnected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBTHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBTHeadsetConnected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurEndcInfoSummary:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurModemInfoSummary:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurSmartEndcStatus(Lcom/android/internal/os/BatteryStatsImplExtImpl;Lcore/java/com/android/internal/os/SmartEndcStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurSmartEndcStatus:Lcore/java/com/android/internal/os/SmartEndcStatus;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastEndcInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastEndcInfoSummary:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastModemInfoSummary(Lcom/android/internal/os/BatteryStatsImplExtImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastModemInfoSummary:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenRefreshMode(Lcom/android/internal/os/BatteryStatsImplExtImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mScreenRefreshMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVolumeMusicSpeaker(Lcom/android/internal/os/BatteryStatsImplExtImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mVolumeMusicSpeaker:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiApStateEnabled(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mWifiApStateEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWiredHeadsetConnected(Lcom/android/internal/os/BatteryStatsImplExtImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mWiredHeadsetConnected:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 202
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    .line 203
    sput-boolean v1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_UID_SCREEN_BASIC:Z

    .line 218
    const/16 v0, 0x14

    sput v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->ACTIVITY_MONITOR_MIN_TIME:I

    .line 219
    const-wide/16 v0, 0x320

    sput-wide v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->HIGH_POWER_THRESHOLD:J

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 4
    .param p1, "base"    # Ljava/lang/Object;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    .line 163
    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurrentTopActivity:Ljava/lang/String;

    .line 175
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurModemInfoSummary:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastModemInfoSummary:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurEndcInfoSummary:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastEndcInfoSummary:Ljava/lang/String;

    .line 180
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurModemTxTimes:[I

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mMeaturing:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLocalHandler:Landroid/os/Handler;

    .line 229
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mContext:Landroid/content/Context;

    .line 238
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    .line 239
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    .line 1078
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_SUPPER_APP:Z

    .line 1079
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedUid:I

    .line 1080
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryLevel:I

    .line 1081
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedElapsedRealtime:J

    .line 1082
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryRealtimeCapacity:I

    .line 1083
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedPackage:Ljava/lang/String;

    .line 1084
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedClass:Ljava/lang/String;

    .line 1085
    iput v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->pausedBatteryLevel:I

    .line 1086
    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->pausedElapsedRealtime:J

    .line 1087
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusBatteryManager:Landroid/os/OplusBatteryManager;

    .line 242
    move-object v0, p1

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 243
    return-void
.end method

.method private static blacklist byte2Hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 1785
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1786
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 1787
    .local v1, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1788
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 1789
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1790
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1792
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1787
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1794
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist computeDelta(Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;)V
    .locals 20
    .param p1, "current"    # Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;
    .param p2, "last"    # Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;
    .param p3, "delta"    # Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    .line 688
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-boolean v4, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    const-string v5, "BatteryStatsImplExtImpl"

    if-eqz v4, :cond_0

    .line 689
    const-string v4, "computeDelta start"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "last:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurStepBatteryUpTime:J

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastStepBatteryUpTime:J

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurStepBatteryUpTime:J

    .line 697
    invoke-virtual {v3, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->setTo(Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;)V

    .line 699
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    new-array v4, v4, [I

    .line 700
    .local v4, "lastModemTxTimes":[I
    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mTxTimeMs:[I

    .line 701
    .local v6, "curModemTxTimes":[I
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v7

    new-array v7, v7, [I

    .line 702
    .local v7, "detaModemTxTimes":[I
    const-wide/16 v8, 0x0

    .line 703
    .local v8, "detaTimeSec":J
    const-wide/16 v10, 0x0

    .line 704
    .local v10, "lastRefCounts":J
    const-wide/16 v12, 0x0

    .line 705
    .local v12, "curRefCounts":J
    const-wide/16 v14, 0x0

    .line 707
    .local v14, "refsPerSec":D
    move-wide/from16 v16, v8

    .end local v8    # "detaTimeSec":J
    .local v16, "detaTimeSec":J
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurStepBatteryUpTime:J

    move-wide/from16 v18, v10

    .end local v10    # "lastRefCounts":J
    .local v18, "lastRefCounts":J
    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastStepBatteryUpTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 708
    .end local v16    # "detaTimeSec":J
    .restart local v8    # "detaTimeSec":J
    const/4 v10, 0x0

    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([II)V

    .line 709
    invoke-static {v6, v10}, Ljava/util/Arrays;->fill([II)V

    .line 710
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([II)V

    .line 713
    iget-wide v10, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    .line 714
    .end local v12    # "curRefCounts":J
    .local v10, "curRefCounts":J
    iget-wide v12, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    .line 715
    .end local v18    # "lastRefCounts":J
    .local v12, "lastRefCounts":J
    const-wide/16 v16, 0x0

    cmp-long v16, v8, v16

    if-lez v16, :cond_2

    .line 716
    sub-long v16, v10, v12

    move-wide/from16 v18, v14

    .end local v14    # "refsPerSec":D
    .local v18, "refsPerSec":D
    div-long v14, v16, v8

    long-to-double v14, v14

    .line 717
    .end local v18    # "refsPerSec":D
    .restart local v14    # "refsPerSec":D
    sget-boolean v16, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v16, :cond_1

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    .end local v4    # "lastModemTxTimes":[I
    .local v16, "lastModemTxTimes":[I
    const-string v4, "ref lastRefCounts="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " RefCounts="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " deltaTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " refsPerSec="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 717
    .end local v16    # "lastModemTxTimes":[I
    .restart local v4    # "lastModemTxTimes":[I
    :cond_1
    move-object/from16 v16, v4

    .end local v4    # "lastModemTxTimes":[I
    .restart local v16    # "lastModemTxTimes":[I
    goto :goto_0

    .line 721
    .end local v16    # "lastModemTxTimes":[I
    .restart local v4    # "lastModemTxTimes":[I
    :cond_2
    move-object/from16 v16, v4

    move-wide/from16 v18, v14

    .end local v4    # "lastModemTxTimes":[I
    .end local v14    # "refsPerSec":D
    .restart local v16    # "lastModemTxTimes":[I
    .restart local v18    # "refsPerSec":D
    const-wide/16 v14, 0x0

    .line 723
    .end local v18    # "refsPerSec":D
    .restart local v14    # "refsPerSec":D
    :goto_0
    iput-wide v14, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshesPerSecond:D

    .line 726
    iget-object v0, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mTxTimeMs:[I

    .line 727
    .end local v6    # "curModemTxTimes":[I
    .local v0, "curModemTxTimes":[I
    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mTxTimeMs:[I

    .line 728
    .end local v16    # "lastModemTxTimes":[I
    .restart local v4    # "lastModemTxTimes":[I
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 729
    array-length v6, v0

    .line 730
    .local v6, "curLen":I
    array-length v1, v4

    .line 731
    .local v1, "lastLen":I
    if-ne v6, v1, :cond_5

    .line 732
    const/16 v16, 0x0

    move/from16 v17, v1

    move/from16 v1, v16

    .local v1, "i":I
    .local v17, "lastLen":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 733
    aget v16, v0, v1

    aget v18, v4, v1

    sub-int v16, v16, v18

    aput v16, v7, v1

    .line 734
    sget-boolean v16, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v16, :cond_3

    .line 735
    move/from16 v16, v6

    .end local v6    # "curLen":I
    .local v16, "curLen":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v18, v8

    .end local v8    # "detaTimeSec":J
    .local v18, "detaTimeSec":J
    const-string v8, "curModemTxTimes:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v0, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " lastModemTxTimes:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v4, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " detaModemTxTimes:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v7, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 734
    .end local v16    # "curLen":I
    .end local v18    # "detaTimeSec":J
    .restart local v6    # "curLen":I
    .restart local v8    # "detaTimeSec":J
    :cond_3
    move/from16 v16, v6

    move-wide/from16 v18, v8

    .line 732
    .end local v6    # "curLen":I
    .end local v8    # "detaTimeSec":J
    .restart local v16    # "curLen":I
    .restart local v18    # "detaTimeSec":J
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v6, v16

    move-wide/from16 v8, v18

    goto :goto_1

    .end local v16    # "curLen":I
    .end local v18    # "detaTimeSec":J
    .restart local v6    # "curLen":I
    .restart local v8    # "detaTimeSec":J
    :cond_4
    move/from16 v16, v6

    move-wide/from16 v18, v8

    .end local v6    # "curLen":I
    .end local v8    # "detaTimeSec":J
    .restart local v16    # "curLen":I
    .restart local v18    # "detaTimeSec":J
    goto :goto_3

    .line 731
    .end local v16    # "curLen":I
    .end local v17    # "lastLen":I
    .end local v18    # "detaTimeSec":J
    .local v1, "lastLen":I
    .restart local v6    # "curLen":I
    .restart local v8    # "detaTimeSec":J
    :cond_5
    move/from16 v17, v1

    move/from16 v16, v6

    move-wide/from16 v18, v8

    .end local v1    # "lastLen":I
    .end local v6    # "curLen":I
    .end local v8    # "detaTimeSec":J
    .restart local v16    # "curLen":I
    .restart local v17    # "lastLen":I
    .restart local v18    # "detaTimeSec":J
    goto :goto_3

    .line 728
    .end local v16    # "curLen":I
    .end local v17    # "lastLen":I
    .end local v18    # "detaTimeSec":J
    .restart local v8    # "detaTimeSec":J
    :cond_6
    move-wide/from16 v18, v8

    .line 740
    .end local v8    # "detaTimeSec":J
    .restart local v18    # "detaTimeSec":J
    :goto_3
    iput-object v7, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mDetaTxTimeMs:[I

    .line 743
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    .line 744
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    .line 745
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    .line 746
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    .line 747
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    .line 748
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    .line 749
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    .line 750
    iget-wide v8, v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    iput-wide v8, v3, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    .line 752
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_7

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delta:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v1, "computeDelta end"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_7
    return-void
.end method

.method private blacklist creatEndcStatusFormIntent(Landroid/content/Intent;)Lcore/java/com/android/internal/os/SmartEndcStatus;
    .locals 24
    .param p1, "action"    # Landroid/content/Intent;

    .line 615
    move-object/from16 v0, p1

    new-instance v21, Lcore/java/com/android/internal/os/SmartEndcStatus;

    move-object/from16 v1, v21

    .line 616
    const-string v2, "Switch"

    const/4 v15, 0x0

    invoke-virtual {v0, v2, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 617
    const-string v3, "EndcDura"

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v3, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 618
    const-string v5, "NoEndcDura"

    invoke-virtual {v0, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 619
    const-string v7, "EnEndcTime"

    invoke-virtual {v0, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 620
    const-string v11, "DisEndcTime"

    invoke-virtual {v0, v11, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 622
    const-string v11, "LteSpeedCntL0"

    invoke-virtual {v0, v11, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 623
    const-string v12, "LteSpeedCntL1"

    invoke-virtual {v0, v12, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 624
    const-string v13, "LteSpeedCntL2"

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 625
    const-string v14, "LteSpeedCntL3"

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 626
    move-object/from16 v22, v1

    const-string v1, "LteSpeedCntL4"

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move/from16 v23, v2

    move v2, v15

    move v15, v1

    .line 628
    const-string v1, "EnEndcSpeedHighCnt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 629
    const-string v1, "EnEndcSwitchOffCnt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 630
    const-string v1, "EnEndcLtePoorCnt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 631
    const-string v1, "EnEndcLteJamCnt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 632
    const-string v1, "EnEndcProhibitCnt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct/range {v1 .. v20}, Lcore/java/com/android/internal/os/SmartEndcStatus;-><init>(ZJJJJIIIIIIIIII)V

    move-object/from16 v1, v21

    .line 634
    .local v1, "status":Lcore/java/com/android/internal/os/SmartEndcStatus;
    return-object v1
.end method

.method private blacklist dumpThemalRawLockedInner(Ljava/io/PrintWriter;J)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "histStart"    # J

    .line 1586
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->startIteratingThermalHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/thermalstats.bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1589
    .local v0, "thermalRecFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1590
    const-string v1, "no raw file"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1592
    return-void

    .line 1594
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1596
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getThermalRawHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V

    .line 1597
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1600
    goto :goto_0

    .line 1598
    :catch_0
    move-exception v2

    .line 1599
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1604
    .end local v0    # "thermalRecFile":Ljava/io/File;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1601
    :catch_1
    move-exception v0

    .line 1602
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "BatteryStats"

    const-string v2, "Error reading thermalFile statistics"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1604
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1605
    goto :goto_3

    .line 1604
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1605
    throw v0

    .line 1607
    :cond_1
    :goto_3
    return-void
.end method

.method private blacklist dumpThermalHistoryLocked(Ljava/io/PrintWriter;J)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "histStart"    # J

    .line 1643
    new-instance v0, Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;

    invoke-direct {v0}, Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;-><init>()V

    .line 1644
    .local v0, "hprinter":Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;
    new-instance v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    .line 1645
    .local v1, "rec":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getNextThermalHistoryLocked(Landroid/os/BatteryStatsExtImpl$ThermalItem;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1646
    iget-wide v2, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    cmp-long v2, v2, p2

    if-ltz v2, :cond_0

    .line 1647
    invoke-virtual {v0, p1, v1}, Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    goto :goto_0

    .line 1650
    :cond_1
    return-void
.end method

.method private blacklist enCoderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "code"    # Ljava/lang/String;

    .line 1761
    const-string v0, "SHA-256"

    const/4 v1, 0x0

    .line 1762
    .local v1, "md1":Ljava/security/MessageDigest;
    const-string v2, "ro.build.version.release"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1763
    .local v2, "salt":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1764
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 1766
    .local v4, "strSalt":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v1, v5

    .line 1767
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 1768
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->byte2Hex([B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 1771
    goto :goto_0

    .line 1769
    :catch_0
    move-exception v5

    .line 1770
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1772
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    new-instance v5, Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v5, "sb1":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 1774
    .local v6, "strDes":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1776
    .local v7, "md2":Ljava/security/MessageDigest;
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    move-object v7, v0

    .line 1777
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1778
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->byte2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    .line 1781
    goto :goto_1

    .line 1779
    :catch_1
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 1782
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v6
.end method

.method private blacklist getSurfaceFlingerRefreshCounts()I
    .locals 6

    .line 638
    const/4 v0, 0x0

    .line 640
    .local v0, "counts":I
    :try_start_0
    const-string v1, "SurfaceFlinger"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 641
    .local v1, "flinger":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 643
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 644
    .local v3, "reply":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    const/16 v4, 0x3f5

    const/4 v5, 0x0

    invoke-interface {v1, v4, v2, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 646
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v0, v4

    .line 647
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 648
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    .end local v1    # "flinger":Landroid/os/IBinder;
    .end local v2    # "data":Landroid/os/Parcel;
    .end local v3    # "reply":Landroid/os/Parcel;
    :cond_0
    goto :goto_0

    .line 650
    :catch_0
    move-exception v1

    .line 651
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "BatteryStatsImplExtImpl"

    const-string v3, "get RefreshCounts failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v0, 0x0

    .line 654
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method private blacklist isScreenOn(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 953
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private blacklist printSizeValueLocal(Ljava/io/PrintWriter;J)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .line 1653
    long-to-float v0, p2

    .line 1654
    .local v0, "result":F
    const-string v1, ""

    .line 1655
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_0

    .line 1656
    const-string v1, "KB"

    .line 1657
    div-float/2addr v0, v4

    .line 1659
    :cond_0
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    .line 1660
    const-string v1, "MB"

    .line 1661
    div-float/2addr v0, v4

    .line 1663
    :cond_1
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_2

    .line 1664
    const-string v1, "GB"

    .line 1665
    div-float/2addr v0, v4

    .line 1667
    :cond_2
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3

    .line 1668
    const-string v1, "TB"

    .line 1669
    div-float/2addr v0, v4

    .line 1671
    :cond_3
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    .line 1672
    const-string v1, "PB"

    .line 1673
    div-float/2addr v0, v4

    .line 1675
    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1676
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1677
    return-void
.end method

.method private blacklist updateDevicePowerDetails(Z)V
    .locals 4
    .param p1, "computeDelta"    # Z

    .line 665
    const-string v0, "BatteryStatsImplExtImpl"

    const-string v1, "updateDevicePowerDetails"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusRpmManager:Lcom/android/internal/os/OplusRpmSubsystemManager;

    if-nez v2, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mCurrentTime:J

    .line 673
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getSurfaceFlingerRefreshCounts()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mRefreshCounts:J

    .line 674
    if-eqz p1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusRpmManager:Lcom/android/internal/os/OplusRpmSubsystemManager;

    invoke-virtual {v1}, Lcom/android/internal/os/OplusRpmSubsystemManager;->onBatteryDrained()V

    .line 677
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusRpmManager:Lcom/android/internal/os/OplusRpmSubsystemManager;

    invoke-virtual {v2}, Lcom/android/internal/os/OplusRpmSubsystemManager;->getLastStepRpmSuspendRatioSummary()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mLastStepRpmStatsSummary:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->setTo(Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;)V

    .line 680
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->setTo(Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;)V

    .line 682
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mDevicePowerDetailsDelta:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->computeDelta(Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;)V

    .line 684
    :cond_1
    monitor-exit v0

    .line 685
    return-void

    .line 668
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist addDevicePowerStatsDeltaString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "curStatSubsystemPowerState"    # Ljava/lang/String;

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->onBatteryStepDrained()V

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getDevicePowerStatsDeltaString()Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, "powerdetails":Ljava/lang/String;
    const-string v1, "BatteryStatsImplExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v1, "\n                 "

    .line 598
    .local v1, "prefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 599
    return-object p1
.end method

.method protected blacklist addThermalForeProc(JJLjava/lang/String;II)V
    .locals 8
    .param p1, "elapsedRealTime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "code"    # I

    .line 1030
    const/4 v0, -0x1

    if-eq v0, p7, :cond_1

    const v0, 0x8008

    if-eq p7, v0, :cond_1

    const v0, 0x8003

    if-ne p7, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1034
    .local v0, "handle":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1035
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v1, :cond_2

    .line 1036
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalForegroundApp(JJLjava/lang/String;I)V

    .line 1039
    :cond_2
    return-void
.end method

.method public blacklist addThermalForegroundApp(JJLjava/lang/String;II)V
    .locals 8
    .param p1, "elapsedRealTime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "code"    # I

    .line 1042
    const/4 v0, -0x1

    if-eq v0, p7, :cond_1

    const v0, 0x8008

    if-eq p7, v0, :cond_1

    const v0, 0x8003

    if-ne p7, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1046
    .local v0, "handle":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1047
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v1, :cond_2

    .line 1048
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalForegroundApp(JJLjava/lang/String;I)V

    .line 1051
    :cond_2
    return-void
.end method

.method public blacklist addThermalJobProc(JJLjava/lang/String;)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;

    .line 1419
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1420
    return-void

    .line 1422
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalJobProc(JJLjava/lang/String;)V

    .line 1423
    return-void
.end method

.method public blacklist addThermalNetState(JJZ)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "netState"    # Z

    .line 1450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1451
    return-void

    .line 1453
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalNetState(JJZ)V

    .line 1454
    return-void
.end method

.method public blacklist addThermalOnOffEvent(IJJZ)V
    .locals 7
    .param p1, "eventType"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "on"    # Z

    .line 1427
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1428
    return-void

    .line 1430
    :cond_0
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalOnOffEvent(IJJZ)V

    .line 1431
    return-void
.end method

.method public blacklist addThermalPhoneOnOff(JJZ)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 1457
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1458
    return-void

    .line 1460
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalPhoneOnOff(JJZ)V

    .line 1461
    return-void
.end method

.method public blacklist addThermalPhoneSignal(JJB)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "signal"    # B

    .line 1464
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1465
    return-void

    .line 1467
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalPhoneSignal(JJB)V

    .line 1468
    return-void
.end method

.method public blacklist addThermalPhoneState(JJB)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "state"    # B

    .line 1471
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1472
    return-void

    .line 1474
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalPhoneState(JJB)V

    .line 1475
    return-void
.end method

.method public blacklist addThermalScreenBrightnessEvent(JJII)V
    .locals 7
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "backlight"    # I
    .param p6, "delayTime"    # I

    .line 1435
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1436
    return-void

    .line 1438
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalScreenBrightnessEvent(JJII)V

    .line 1440
    return-void
.end method

.method public blacklist addThermalWifiRssi(JJI)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "wifiSignalStrengthBin"    # I

    .line 1492
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1493
    return-void

    .line 1495
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalWifiRssi(JJI)V

    .line 1496
    return-void
.end method

.method public blacklist addThermalWifiStatus(JJI)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "status"    # I

    .line 1485
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1486
    return-void

    .line 1488
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalWifiStatus(JJI)V

    .line 1489
    return-void
.end method

.method public blacklist addThermalnetSyncProc(JJLjava/lang/String;)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "procName"    # Ljava/lang/String;

    .line 1412
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1413
    return-void

    .line 1415
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalnetSyncProc(JJLjava/lang/String;)V

    .line 1416
    return-void
.end method

.method public blacklist backupThermalLogFile()V
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1400
    return-void

    .line 1402
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->backupThermalLogFile()V

    .line 1403
    return-void
.end method

.method public blacklist backupThermalStatsFile()V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->backupThermalStatsFile()V

    .line 1368
    :cond_0
    return-void
.end method

.method public blacklist clear()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->clear()V

    .line 319
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->clear()V

    .line 320
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->clear()V

    .line 321
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mDevicePowerDetailsDelta:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->clear()V

    .line 322
    return-void
.end method

.method public blacklist clearThermalAllHistory()V
    .locals 1

    .line 1332
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1333
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->clearThermalAllHistory()V

    .line 1335
    :cond_0
    return-void
.end method

.method public blacklist clearThermalStatsBuffer()V
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1507
    return-void

    .line 1509
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->clearThermalStatsBuffer()V

    .line 1510
    return-void
.end method

.method protected blacklist collectCheckinFile()V
    .locals 3

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "collectCheckinFile 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsImplExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getLowDischargeAmountSinceCharge()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 1159
    const-string v0, "collectCheckinFile 2"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1161
    .local v0, "parcel":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsImpl;->writeSummaryToParcel(Landroid/os/Parcel;Z)V

    .line 1162
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;-><init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/os/Parcel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1202
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    return-void
.end method

.method public blacklist collectCheckinFile(ILandroid/util/AtomicFile;Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;)V
    .locals 0
    .param p1, "lowDischargeAmountSinceCharge"    # I
    .param p2, "checkinFile"    # Landroid/util/AtomicFile;
    .param p3, "callback"    # Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->collectCheckinFile()V

    .line 1149
    return-void
.end method

.method public blacklist dumpHistory()V
    .locals 3

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsImplExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last0:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delta:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mDevicePowerDetailsDelta:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method public blacklist dumpThemalHeatDetailLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1370
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1371
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->dumpThemalHeatDetailLocked(Ljava/io/PrintWriter;)V

    .line 1373
    :cond_0
    return-void
.end method

.method public blacklist dumpThemalLocked(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "histStart"    # J

    .line 1566
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getHistoryTotalSize()I

    move-result v0

    int-to-long v0, v0

    .line 1567
    .local v0, "historyTotalSize":J
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getThermalHistoryUsedSize()I

    move-result v2

    int-to-long v2, v2

    .line 1568
    .local v2, "historyUsedSize":J
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->startIteratingThermalHistoryLocked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1570
    :try_start_0
    const-string v4, "Thermal History ("

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1571
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v2

    div-long/2addr v4, v0

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 1572
    const-string v4, "% used, "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1573
    invoke-direct {p0, p1, v2, v3}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->printSizeValueLocal(Ljava/io/PrintWriter;J)V

    .line 1574
    const-string v4, " used of "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1575
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->printSizeValueLocal(Ljava/io/PrintWriter;J)V

    .line 1576
    const-string v4, "):"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->dumpThermalHistoryLocked(Ljava/io/PrintWriter;J)V

    .line 1578
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1580
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1581
    goto :goto_0

    .line 1580
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1581
    throw v4

    .line 1583
    :cond_0
    :goto_0
    return-void
.end method

.method public blacklist dumpThemalRawLocked(Ljava/io/PrintWriter;J)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "histStart"    # J

    .line 1315
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1316
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalRecFile()V

    .line 1318
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->dumpThemalRawLockedInner(Ljava/io/PrintWriter;J)V

    .line 1319
    return-void
.end method

.method public blacklist dumpThemalRecLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .line 1610
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->startIteratingThermalHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1612
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/thermal/dcs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1613
    .local v0, "thermalDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "no history file"

    if-eqz v1, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1618
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1619
    .local v1, "files":[Ljava/io/File;
    array-length v3, v1

    if-gtz v3, :cond_1

    .line 1620
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1622
    return-void

    .line 1624
    :cond_1
    :try_start_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 1625
    .local v4, "file":Ljava/io/File;
    new-instance v5, Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;-><init>()V

    .line 1626
    .local v5, "hprinter":Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1628
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {p0, v6, p2, v5}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getThermalHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;)Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 1629
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1632
    goto :goto_1

    .line 1630
    :catch_0
    move-exception v7

    .line 1631
    .local v7, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 1624
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "hprinter":Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1637
    .end local v0    # "thermalDir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    goto :goto_3

    .line 1614
    .restart local v0    # "thermalDir":Ljava/io/File;
    :cond_3
    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1637
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1616
    return-void

    .line 1637
    .end local v0    # "thermalDir":Ljava/io/File;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1634
    :catch_1
    move-exception v0

    .line 1635
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v1, "BatteryStats"

    const-string v2, "Error reading thermalFile statistics"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1637
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1638
    goto :goto_5

    .line 1637
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->finishIteratingThermalHistoryLocked()V

    .line 1638
    throw v0

    .line 1640
    :cond_4
    :goto_5
    return-void
.end method

.method public blacklist dumpThermalConfig(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1521
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1522
    return-void

    .line 1524
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->dumpThermalConfig(Ljava/io/PrintWriter;)V

    .line 1525
    return-void
.end method

.method public blacklist finishIteratingThermalHistoryLocked()V
    .locals 1

    .line 1216
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1217
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->finishIteratingThermalHistoryLocked()V

    .line 1219
    :cond_0
    return-void
.end method

.method protected blacklist getBatteryRealtimeBatteryLevel()I
    .locals 5

    .line 1798
    const/4 v0, 0x0

    .line 1800
    .local v0, "realtimeBatteryBatteryLevel":I
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1801
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1804
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 1806
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1807
    .local v3, "tempString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1808
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1809
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v4

    .line 1814
    .end local v3    # "tempString":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1825
    :cond_1
    nop

    .line 1827
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1830
    :goto_1
    goto :goto_2

    .line 1828
    :catch_0
    move-exception v3

    .line 1829
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1825
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 1821
    :catch_1
    move-exception v3

    .line 1822
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1823
    const/4 v0, -0x1

    .line 1825
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    if-eqz v2, :cond_2

    .line 1827
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1818
    :catch_2
    move-exception v3

    .line 1819
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1820
    const/4 v0, -0x1

    .line 1825
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_2

    .line 1827
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1815
    :catch_3
    move-exception v3

    .line 1816
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1817
    const/4 v0, -0x1

    .line 1825
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_2

    .line 1827
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 1833
    :cond_2
    :goto_2
    return v0

    .line 1825
    :goto_3
    if-eqz v2, :cond_3

    .line 1827
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1830
    goto :goto_4

    .line 1828
    :catch_4
    move-exception v4

    .line 1829
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 1832
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_4
    throw v3
.end method

.method protected blacklist getBatteryRealtimeCapacity()I
    .locals 4

    .line 1092
    const-string v0, "BatteryStatsImplExtImpl"

    const/4 v1, -0x1

    .line 1094
    .local v1, "realtimeBatteryCapacity":I
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusBatteryManager:Landroid/os/OplusBatteryManager;

    if-nez v2, :cond_0

    .line 1095
    new-instance v2, Landroid/os/OplusBatteryManager;

    invoke-direct {v2}, Landroid/os/OplusBatteryManager;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusBatteryManager:Landroid/os/OplusBatteryManager;

    .line 1097
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusBatteryManager:Landroid/os/OplusBatteryManager;

    if-eqz v2, :cond_1

    .line 1098
    invoke-virtual {v2}, Landroid/os/OplusBatteryManager;->getPsyBatteryRm()I

    move-result v2

    move v1, v2

    goto :goto_0

    .line 1100
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot getBatteryRealtimeCapacity, mOplusBatteryManager = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusBatteryManager:Landroid/os/OplusBatteryManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    :goto_0
    goto :goto_1

    .line 1102
    :catch_0
    move-exception v2

    .line 1103
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "call getBatteryRealtimeCapacity failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1106
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    sget-boolean v2, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v2, :cond_2

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBatteryRealtimeCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    :cond_2
    return v1
.end method

.method public blacklist getBatteryStatsReady()Z
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getBatteryStatsReadyStatus()Z

    move-result v0

    return v0

    .line 1259
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDevicePowerStatsDeltaString()Ljava/lang/String;
    .locals 2

    .line 603
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mDevicePowerDetailsDelta:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    if-eqz v1, :cond_0

    .line 605
    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "powerdetails":Ljava/lang/String;
    monitor-exit v0

    return-object v1

    .line 609
    .end local v1    # "powerdetails":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 611
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getHistoryBufferSize()I
    .locals 2

    .line 964
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mConstants:Lcom/oplus/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Constants;

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Constants;->MAX_HISTORY_BUFFER:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public blacklist getMonitorAppLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1360
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1361
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->getMonitorAppLocked(Ljava/io/PrintWriter;)V

    .line 1363
    :cond_0
    return-void
.end method

.method public blacklist getNextThermalHistoryLocked(Landroid/os/BatteryStatsExtImpl$ThermalItem;J)Z
    .locals 1
    .param p1, "out"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p2, "histStart"    # J

    .line 1230
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1231
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/OplusThermalStatsHelper;->getNextThermalHistoryLocked(Landroid/os/BatteryStatsExtImpl$ThermalItem;J)Z

    move-result v0

    return v0

    .line 1233
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusThermalStatsHelper()Lcom/android/internal/os/OplusThermalStatsHelper;
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    return-object v0
.end method

.method public blacklist getPhoneTemp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1375
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1376
    return-void

    .line 1378
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->getPhoneTemp(Ljava/io/PrintWriter;)V

    .line 1379
    return-void
.end method

.method public blacklist getScreenBrightness()I
    .locals 1

    .line 1513
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1514
    const/4 v0, 0x0

    return v0

    .line 1517
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getScreenBrightness()I

    move-result v0

    return v0
.end method

.method public blacklist getThermalHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;)Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .locals 1
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "printer"    # Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1238
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/OplusThermalStatsHelper;->getThermalHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;)Landroid/os/BatteryStatsExtImpl$ThermalItem;

    move-result-object v0

    return-object v0

    .line 1241
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getThermalHistoryUsedSize()I
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1223
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getThermalHistoryUsedSize()I

    move-result v0

    return v0

    .line 1225
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getThermalRawHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1246
    const/4 v0, 0x0

    .line 1247
    .local v0, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 1248
    if-eqz p2, :cond_0

    .line 1249
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_0

    .line 1253
    :cond_1
    return-void
.end method

.method public blacklist getWifiSignalStrengthBin()I
    .locals 2

    .line 968
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mWifiSignalStrengthBin:Lcom/oplus/reflect/RefInt;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist initBatteryStatsImplExtImpl(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 2
    .param p1, "battStatsImpl"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    .line 251
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 252
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStats:Landroid/os/BatteryStats;

    .line 254
    sget-object v0, Landroid/os/MirrorBatteryStats;->mBatteryStatsExt:Lcom/oplus/internal/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/oplus/internal/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBatteryStatsExt;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    .line 255
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mBatteryStatsImplExt:Lcom/oplus/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IBatteryStatsImplExt;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImplExt:Lcom/android/internal/os/IBatteryStatsImplExt;

    .line 257
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStats:Landroid/os/BatteryStats;

    invoke-interface {v0, v1}, Landroid/os/IBatteryStatsExt;->setInBatteryStatsImplInstance(Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public blacklist initBatteryStatsImplExtImpl(Lcom/android/internal/os/BatteryStatsImpl;Ljava/io/File;Landroid/os/Handler;)V
    .locals 3
    .param p1, "battStatsImpl"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 263
    const-string v0, "BatteryStatsImplExtImpl"

    if-nez p2, :cond_0

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    .line 265
    const-string v1, "systemDir IS NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "thermalstats.bin"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    .line 268
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const-string v1, "thermalstats.bin creat success"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    const-string v1, "thermalstats.bin creat failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    iput-object p3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLocalHandler:Landroid/os/Handler;

    .line 275
    new-instance v0, Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    invoke-direct {v0, p0, p3, v1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper;-><init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    .line 280
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 281
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStats:Landroid/os/BatteryStats;

    .line 283
    sget-object v0, Landroid/os/MirrorBatteryStats;->mBatteryStatsExt:Lcom/oplus/internal/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/oplus/internal/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBatteryStatsExt;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    .line 284
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mBatteryStatsImplExt:Lcom/oplus/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IBatteryStatsImplExt;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImplExt:Lcom/android/internal/os/IBatteryStatsImplExt;

    .line 285
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStats:Landroid/os/BatteryStats;

    invoke-interface {v0, v1}, Landroid/os/IBatteryStatsExt;->setInBatteryStatsImplInstance(Ljava/lang/Object;)V

    .line 291
    new-instance v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;-><init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mPowerConstants:Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;

    .line 292
    new-instance v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    .line 293
    new-instance v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    .line 294
    new-instance v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLastLastOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    .line 295
    new-instance v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    invoke-direct {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mDevicePowerDetailsDelta:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    .line 296
    new-instance v0, Lcore/java/com/android/internal/os/SmartEndcStatus;

    invoke-direct {v0}, Lcore/java/com/android/internal/os/SmartEndcStatus;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurSmartEndcStatus:Lcore/java/com/android/internal/os/SmartEndcStatus;

    .line 298
    return-void
.end method

.method public blacklist isScreenOn()Z
    .locals 2

    .line 947
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mScreenState:Lcom/oplus/reflect/RefInt;

    if-eqz v0, :cond_0

    .line 948
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mScreenState:Lcom/oplus/reflect/RefInt;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 949
    .local v0, "state":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->isScreenOn(I)Z

    move-result v1

    return v1
.end method

.method public blacklist logSwitch(Z)V
    .locals 2
    .param p1, "en"    # Z

    .line 958
    sput-boolean p1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    .line 959
    sput-boolean p1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_UID_SCREEN_BASIC:Z

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oplusLogSwitch: en="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsImplExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    return-void
.end method

.method public blacklist noteActivityLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 11
    .param p1, "uid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isOnBattery"    # Z
    .param p4, "historyCur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p5, "pausedElapsedRealtime1"    # J
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "currentTopActivity"    # Ljava/lang/String;
    .param p9, "resumed"    # Z
    .param p10, "context"    # Landroid/content/Context;

    .line 1711
    move-object v9, p0

    move-object/from16 v10, p10

    if-eqz v10, :cond_0

    .line 1712
    iget-object v0, v9, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1713
    iput-object v10, v9, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mContext:Landroid/content/Context;

    .line 1716
    :cond_0
    if-eqz p9, :cond_1

    .line 1717
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->noteActivityResumedLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;Ljava/lang/String;)V

    goto :goto_0

    .line 1720
    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->noteActivityPausedLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;)V

    .line 1722
    :goto_0
    return-void
.end method

.method public blacklist noteActivityPausedLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isOnBattery"    # Z
    .param p4, "mHistoryCur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p5, "pausedElapsedRealtime1"    # J
    .param p7, "handler"    # Landroid/os/Handler;

    .line 1727
    const/16 v0, 0x100

    invoke-virtual {p7, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1728
    invoke-virtual {p7, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1733
    :cond_0
    if-eqz p3, :cond_3

    iget v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedUid:I

    if-ne p1, v0, :cond_3

    .line 1734
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getBatteryRealtimeBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->pausedBatteryLevel:I

    .line 1735
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->pausedElapsedRealtime:J

    .line 1736
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedElapsedRealtime:J

    sub-long v0, p5, v0

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 1738
    .local v0, "activityFocusedTimeInMin":J
    iget-boolean v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_SUPPER_APP:Z

    const-string v3, "BatteryStatsImplExtImpl"

    if-eqz v2, :cond_1

    .line 1739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pausedBatteryLevel:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->pausedBatteryLevel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " activityFocusedTimeInMin:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_1
    sget v2, Lcom/android/internal/os/BatteryStatsImplExtImpl;->ACTIVITY_MONITOR_MIN_TIME:I

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_3

    .line 1742
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1743
    .local v2, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1744
    .local v4, "encodedResumedPackage":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedPackage:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->enCoderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1745
    const-string v5, "appname"

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1746
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedClass:Ljava/lang/String;

    const-string v6, "activity"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "duration"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "startlevel"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->pausedBatteryLevel:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "endlevel"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    iget v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryRealtimeCapacity:I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getBatteryRealtimeCapacity()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "deltaBC"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_2

    .line 1752
    const/4 v3, 0x0

    const-string v6, "20089"

    const-string v7, "activity_battery_record"

    invoke-static {v5, v6, v7, v2, v3}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    goto :goto_0

    .line 1754
    :cond_2
    const-string v5, "noteRecordSensorForOppoLocked ,but context is null!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    .end local v0    # "activityFocusedTimeInMin":J
    .end local v2    # "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "encodedResumedPackage":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist noteActivityResumedLocked(ILandroid/content/ComponentName;ZLandroid/os/BatteryStats$HistoryItem;JLandroid/os/Handler;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "isOnBattery"    # Z
    .param p4, "historyCur"    # Landroid/os/BatteryStats$HistoryItem;
    .param p5, "pausedElapsedRealtime1"    # J
    .param p7, "handler"    # Landroid/os/Handler;
    .param p8, "currentTopActivity"    # Ljava/lang/String;

    .line 1683
    if-eqz p2, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->recordResumedApk(Ljava/lang/String;)V

    .line 1686
    :cond_0
    if-eqz p3, :cond_3

    if-eqz p2, :cond_3

    .line 1687
    iput p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedUid:I

    .line 1688
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getBatteryRealtimeBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryLevel:I

    .line 1689
    iput-wide p5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedElapsedRealtime:J

    .line 1690
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedPackage:Ljava/lang/String;

    .line 1691
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedClass:Ljava/lang/String;

    .line 1692
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getBatteryRealtimeCapacity()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryRealtimeCapacity:I

    .line 1693
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_SUPPER_APP:Z

    if-eqz v0, :cond_1

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumedUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resumedBatteryLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  resumedPackage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  resumedBatteryRealtimeCapacity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryRealtimeCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsImplExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_1
    const/16 v0, 0x100

    invoke-virtual {p7, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1697
    invoke-virtual {p7, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1699
    :cond_2
    invoke-virtual {p7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1700
    .local v0, "msg_checkAverageCurrent":Landroid/os/Message;
    sget v1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->ACTIVITY_MONITOR_MIN_TIME:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p7, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1703
    .end local v0    # "msg_checkAverageCurrent":Landroid/os/Message;
    :cond_3
    if-eqz p2, :cond_4

    .line 1704
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p8

    .line 1705
    invoke-virtual {p0, p8}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->recordResumeActivity(Ljava/lang/String;)V

    .line 1707
    :cond_4
    return-void
.end method

.method public blacklist noteConnectivityChangedLocked(ILjava/lang/String;JJ)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "uptime"    # J

    .line 1056
    const/4 v0, -0x1

    .line 1057
    .local v0, "netConnectType":I
    const-string v1, "DISCONNECTED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1058
    const/4 v0, -0x1

    .line 1059
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v1, :cond_2

    .line 1060
    const/4 v6, 0x0

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalConnectType(JJB)V

    goto :goto_0

    .line 1063
    :cond_0
    const-string v1, "CONNECTED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1064
    const/4 v0, 0x1

    .line 1065
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v1, :cond_2

    .line 1066
    const/4 v6, 0x1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalConnectType(JJB)V

    goto :goto_0

    .line 1069
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 1070
    const/4 v0, 0x0

    .line 1072
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v1, :cond_3

    .line 1073
    invoke-virtual {v1, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->setConnectyType(I)V

    .line 1075
    :cond_3
    return-void
.end method

.method public blacklist notePhoneDataConnectionStateLocked(JJI)V
    .locals 6
    .param p1, "elapsedTime"    # J
    .param p3, "upTime"    # J
    .param p5, "dataType"    # I

    .line 1478
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1479
    return-void

    .line 1481
    :cond_0
    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->notePhoneDataConnectionStateLocked(JJI)V

    .line 1482
    return-void
.end method

.method public blacklist noteScreenBrightnessModeChangedLock(Z)V
    .locals 1
    .param p1, "isAuto"    # Z

    .line 1264
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->noteScreenBrightnessModeChangedLock(Z)V

    .line 1267
    :cond_0
    return-void
.end method

.method protected blacklist onBatterySendBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "statusIntent"    # Landroid/content/Intent;

    .line 972
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mCallback:Lcom/oplus/reflect/RefObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mCallback:Lcom/oplus/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    .line 973
    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mCallback:Lcom/oplus/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;->batterySendBroadcast(Landroid/content/Intent;)V

    .line 976
    :cond_0
    return-void
.end method

.method public blacklist onBatteryStatsMessageHandle(Landroid/os/Message;)Z
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 981
    if-nez p1, :cond_0

    .line 982
    const/4 v0, 0x0

    return v0

    .line 984
    :cond_0
    const/4 v0, 0x0

    .line 985
    .local v0, "handled":Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    .line 996
    :sswitch_0
    const-wide/16 v1, 0x0

    .line 997
    .local v1, "resumedTimeInMs":J
    sget-object v3, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mClock:Lcom/oplus/reflect/RefObject;

    if-eqz v3, :cond_1

    .line 998
    sget-object v3, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mClock:Lcom/oplus/reflect/RefObject;

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v4}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/Clock;

    invoke-virtual {v3}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedElapsedRealtime:J

    sub-long v1, v3, v5

    .line 1000
    :cond_1
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedBatteryRealtimeCapacity:I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getBatteryRealtimeCapacity()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1001
    .local v3, "deltaBC":I
    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    int-to-long v4, v3

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    div-long/2addr v4, v1

    .line 1002
    .local v4, "averageCurrent":J
    :goto_0
    iget-boolean v6, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_SUPPER_APP:Z

    if-eqz v6, :cond_3

    .line 1003
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resumedTimeInMs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  deltaBC="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  averageCurrent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BatteryStatsImplExtImpl"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_3
    sget-wide v6, Lcom/android/internal/os/BatteryStatsImplExtImpl;->HIGH_POWER_THRESHOLD:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 1007
    new-instance v6, Landroid/content/Intent;

    const-string v7, "oplus.intent.action.ACTION_HIGH_POWER_SCENE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1008
    .local v6, "highPowerSceneIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->resumedPackage:Ljava/lang/String;

    const-string v8, "appName"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v7, "averageCurrent"

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1010
    const-string v7, "com.oplus.powermonitor"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;

    invoke-direct {v8, p0, v6}, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;-><init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/content/Intent;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1018
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 1020
    .end local v6    # "highPowerSceneIntent":Landroid/content/Intent;
    :cond_4
    const/4 v0, 0x1

    .line 1021
    goto :goto_1

    .line 989
    .end local v1    # "resumedTimeInMs":J
    .end local v3    # "deltaBC":I
    .end local v4    # "averageCurrent":J
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->setBatteryStatsReady(Z)V

    .line 990
    :cond_5
    const/4 v0, 0x1

    .line 991
    nop

    .line 1026
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist onBatteryStepDrained()V
    .locals 1

    .line 658
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->updateDevicePowerDetails(Z)V

    .line 659
    return-void
.end method

.method public blacklist onChagrgeStepChanged()V
    .locals 0

    .line 662
    return-void
.end method

.method public blacklist onSystemServicesReady(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 1116
    const-string v0, "BatteryStatsImplExtImpl"

    const-string v1, "systemReady......."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    if-eqz p1, :cond_0

    .line 1118
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mContext:Landroid/content/Context;

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLocalHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1121
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    if-eqz v0, :cond_1

    .line 1122
    invoke-interface {v0, p1}, Landroid/os/IBatteryStatsExt;->setContext(Landroid/content/Context;)V

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsExt:Landroid/os/IBatteryStatsExt;

    if-eqz v0, :cond_2

    .line 1127
    invoke-interface {v0}, Landroid/os/IBatteryStatsExt;->registerRomUpdate()V

    .line 1131
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_3

    .line 1132
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->onSystemReady(Landroid/content/Context;)V

    .line 1137
    :cond_3
    new-instance v0, Lcom/android/internal/os/OplusRpmSubsystemManager;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLocalHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/OplusRpmSubsystemManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusRpmManager:Lcom/android/internal/os/OplusRpmSubsystemManager;

    .line 1138
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mPowerConstants:Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsConstants;->startObserving(Landroid/content/Context;Landroid/content/ContentResolver;)V

    .line 1141
    :cond_4
    new-instance v0, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;-><init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mPowerDetailsReceiver:Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;

    .line 1142
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl$PowerDetailsReceiver;->register()V

    .line 1144
    return-void
.end method

.method public blacklist printChargeMapLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1387
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1388
    return-void

    .line 1390
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->printChargeMapLocked(Ljava/io/PrintWriter;)V

    .line 1391
    return-void
.end method

.method public blacklist printThermalHeatThreshold(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1393
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1394
    return-void

    .line 1396
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->printThermalHeatThreshold(Ljava/io/PrintWriter;)V

    .line 1397
    return-void
.end method

.method public blacklist printThermalUploadTemp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1381
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1382
    return-void

    .line 1384
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->printThermalUploadTemp(Ljava/io/PrintWriter;)V

    .line 1385
    return-void
.end method

.method public blacklist readThermalRecFile()Z
    .locals 9

    .line 1528
    const/4 v0, 0x1

    .line 1529
    .local v0, "needReadThermalRecFile":Z
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1530
    const/4 v0, 0x1

    goto :goto_0

    .line 1532
    :cond_0
    const/4 v0, 0x0

    .line 1535
    :goto_0
    if-nez v0, :cond_1

    .line 1536
    const/4 v1, 0x0

    return v1

    .line 1538
    :cond_1
    const/4 v1, 0x0

    .line 1540
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1541
    .local v2, "time":J
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mThermalRecFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v4

    .line 1542
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v4}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getThermalHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;)Landroid/os/BatteryStatsExtImpl$ThermalItem;

    move-result-object v4

    .line 1543
    .local v4, "historyItem":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1544
    const/4 v1, 0x0

    .line 1547
    const-string v5, "BatteryStatsImplExtImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readThermal history file lost time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1554
    nop

    .end local v2    # "time":J
    .end local v4    # "historyItem":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    if-eqz v1, :cond_2

    .line 1556
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1559
    :goto_1
    goto :goto_2

    .line 1557
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1554
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 1548
    :catch_1
    move-exception v2

    .line 1549
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "BatteryStats"

    const-string v4, "Error reading thermalFile statistics"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1552
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->clearThermalStatsBuffer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1554
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 1556
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1562
    :cond_2
    :goto_2
    const/4 v2, 0x1

    return v2

    .line 1554
    :goto_3
    if-eqz v1, :cond_3

    .line 1556
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1559
    goto :goto_4

    .line 1557
    :catch_2
    move-exception v3

    .line 1561
    :cond_3
    :goto_4
    throw v2
.end method

.method public blacklist recordBluetoothPowerDrainMaMs(J)V
    .locals 4
    .param p1, "powerdrains"    # J

    .line 334
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "BatteryStatsImplExtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordBluetoothPowerDrainMaMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBluetoothPowerDrainMaMs:J

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist recordBrightness(I)V
    .locals 2
    .param p1, "level"    # I

    .line 370
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iput p1, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mBrightness:I

    .line 372
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist recordGpsPowerDrainMaMs(J)V
    .locals 3
    .param p1, "powerdrains"    # J

    .line 361
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "BatteryStatsImplExtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordGpsPowerDrainMaMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iput-wide p1, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mGpsPowerDrainMaMs:J

    .line 366
    monitor-exit v0

    .line 367
    return-void

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist recordMobilePowerDrainMaMs(J)V
    .locals 4
    .param p1, "powerdrains"    # J

    .line 343
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "BatteryStatsImplExtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordMobilePowerDrainMaMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobilePowerDrainMaMs:J

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist recordNetworkActivityBytes(IJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J

    .line 382
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_0

    .line 384
    const-string v1, "BatteryStatsImplExtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordNetworkActivityBytes type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  deltaBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiTxTotalBytes:J

    .line 398
    goto :goto_0

    .line 394
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiRxTotalBytes:J

    .line 395
    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileTxTotalBytes:J

    .line 392
    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mMobileRxTotalBytes:J

    .line 389
    nop

    .line 402
    :goto_0
    monitor-exit v0

    .line 403
    return-void

    .line 402
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist recordResumeActivity(Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Ljava/lang/String;

    .line 376
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iput-object p1, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mActivtiyName:Ljava/lang/String;

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist recordWifiPowerDrainMaMs(J)V
    .locals 4
    .param p1, "powerdrains"    # J

    .line 352
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "BatteryStatsImplExtImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordWifiPowerDrainMaMs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mCurOplusDevicePowerDetails:Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;

    iget-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    add-long/2addr v2, p1

    iput-wide v2, v1, Lcom/android/internal/os/BatteryStatsImplExtImpl$DevicePowerDetails;->mWifiPowerDrainMaMs:J

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist schedulerUpdateCpu(J)V
    .locals 3
    .param p1, "delay"    # J

    .line 1297
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mHandler:Lcom/oplus/reflect/RefObject;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1298
    sget-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mHandler:Lcom/oplus/reflect/RefObject;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mBatteryStatsImpl:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v2}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1299
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1301
    :cond_0
    return-void
.end method

.method public blacklist setHeatBetweenTime(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # I

    .line 1350
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1351
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper;->setHeatBetweenTime(Ljava/io/PrintWriter;I)V

    .line 1353
    :cond_0
    return-void
.end method

.method public blacklist setMonitorAppLimitTime(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "limitTime"    # I

    .line 1355
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper;->setMonitorAppLimitTime(Ljava/io/PrintWriter;I)V

    .line 1358
    :cond_0
    return-void
.end method

.method public blacklist setScreenBrightness(I)V
    .locals 1
    .param p1, "value"    # I

    .line 1443
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1444
    return-void

    .line 1446
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->setScreenBrightness(I)V

    .line 1447
    return-void
.end method

.method public blacklist setThermalConfig()V
    .locals 1

    .line 1405
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1406
    return-void

    .line 1408
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->setThermalConfig()V

    .line 1409
    return-void
.end method

.method public blacklist setThermalCpuLoading(IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "load1"    # I
    .param p2, "load5"    # I
    .param p3, "load15"    # I
    .param p4, "cpuLoading"    # I
    .param p5, "maxCpu"    # I
    .param p6, "cpuProc"    # Ljava/lang/String;
    .param p7, "simpleTopProc"    # Ljava/lang/String;

    .line 1323
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1324
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->setThermalCpuLoading(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_0
    return-void
.end method

.method public blacklist setThermalHeatThreshold(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "threshold"    # I

    .line 1345
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1346
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper;->setThermalHeatThreshold(Ljava/io/PrintWriter;I)V

    .line 1348
    :cond_0
    return-void
.end method

.method public blacklist setThermalState(Ljava/lang/Object;)V
    .locals 2
    .param p1, "thermalState"    # Ljava/lang/Object;

    .line 1287
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_0

    .line 1288
    const-string v0, "BatteryStatsImplExtImpl"

    const-string v1, "setThermalState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_1

    .line 1292
    move-object v1, p1

    check-cast v1, Landroid/os/OplusThermalState;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->setThermalState(Landroid/os/OplusThermalState;)V

    .line 1294
    :cond_1
    return-void
.end method

.method public blacklist startIteratingThermalHistoryLocked()Z
    .locals 1

    .line 1208
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1209
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->startIteratingThermalHistoryLocked()Z

    move-result v0

    return v0

    .line 1211
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleThermalDebugSwith(Ljava/io/PrintWriter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "on"    # I

    .line 1337
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper;->toggleThermalDebugSwith(Ljava/io/PrintWriter;I)V

    .line 1340
    :cond_0
    return-void
.end method

.method public blacklist updateCpuStatsNow(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1342
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->schedulerUpdateCpu(J)V

    .line 1343
    return-void
.end method

.method public blacklist updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V
    .locals 4
    .param p1, "deltaInfo"    # Landroid/telephony/ModemActivityInfo;

    .line 407
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    if-nez p1, :cond_0

    .line 409
    :try_start_0
    monitor-exit v0

    return-void

    .line 411
    :cond_0
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsImplExtImpl;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1

    .line 412
    const-string v1, "BatteryStatsImplExtImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMobileRadioState delta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v1

    new-array v1, v1, [I

    .line 415
    .local v1, "tmpDeltaTxtimes":[I
    const/4 v2, 0x0

    .local v2, "i0":I
    :goto_0
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 429
    .end local v1    # "tmpDeltaTxtimes":[I
    .end local v2    # "i0":I
    :cond_2
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist writeThermalRecFile()V
    .locals 1

    .line 1499
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl;->mOplusThermalStatsHelper:Lcom/android/internal/os/OplusThermalStatsHelper;

    if-nez v0, :cond_0

    .line 1500
    return-void

    .line 1502
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalRecFile()V

    .line 1503
    return-void
.end method
