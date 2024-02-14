.class Lcom/android/internal/os/OplusThermalStatsHelper;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;,
        Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;,
        Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics;,
        Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;,
        Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_THERMAL_SCENE:Ljava/lang/String; = "oplus.intent.action.ACTION_THERMAL_SCENE"

.field private static final blacklist ALARM_TEMP_UPLOAD:I = 0x38

.field private static final blacklist ALARM_WAKEUP:Ljava/lang/String; = "oplus.android.internal.thermalupload.ALARM_WAKEUP"

.field private static final blacklist APP_ID:Ljava/lang/String; = "20139"

.field private static final blacklist AUDIOON_CHECK:I = 0x34

.field private static final blacklist BATTERY_INFO:I = 0x42

.field public static final blacklist BATTERY_PLUGGED_NONE:I = 0x0

.field private static final blacklist BINARY_BASE:I = 0xffff

.field private static final blacklist CAMERAON_CHECK:I = 0x33

.field private static final blacklist CHARGED_CURRENT_THRESHOLD:I = -0xc8

.field private static final blacklist CHARGE_MAP:Ljava/lang/String; = "id_charge_map"

.field private static final blacklist CMD_UPDATE_TIME:I = 0x43

.field private static final blacklist COEFFICIENT_TEN:I = 0xa

.field private static final blacklist COMMON_WRITE:I = 0x3f

.field private static final blacklist COMPAONENT_SAFE_PERMISSION:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field private static final blacklist CONNECTTYPE_CHECK:I = 0x3a

.field private static final blacklist CPUGROUND_TIME_THRESHOLD:I = 0x258

.field private static final blacklist CPU_IDLE_CHECK_ENVI_COUNT:I = 0x3

.field private static final blacklist CPU_IDLE_LESS_LOADING:I = 0x64

.field private static final blacklist CPU_LOADING_THRESHOLD:I = 0x96

.field static blacklist DEBUG_THERMAL_TEMP:Z = false

.field private static final blacklist DELAY_CHECK:I = 0xfa0

.field private static final blacklist EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field private static final blacklist EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field private static final blacklist FLASHLIGHTON_CHECK:I = 0x37

.field private static final blacklist FOREGROUND_TIME_THRESHOLD:I = 0x258

.field private static final blacklist GPSON_CHECK:I = 0x36

.field private static final blacklist HEAT_ANALYSIS_DELAY:I = 0xafc80

.field private static final blacklist HEAT_LOG_ID:Ljava/lang/String; = "040201"

.field private static final blacklist HEAT_RATIO_THRESHOLD:I = 0x1f4

.field private static final blacklist HEAT_REASON_ANALIZY:I = 0x3b

.field private static final blacklist HEAT_REASON_BACKGROUD:I = 0x1

.field private static final blacklist HEAT_REASON_BACKGROUD_CHARGED:I = 0x2

.field private static final blacklist HEAT_REASON_FOREGROUND:I = 0x3

.field private static final blacklist HEAT_REASON_FOREGROUND_CHARGED:I = 0x4

.field private static final blacklist HEAT_REASON_MULTI:I = 0x5

.field private static final blacklist HEAT_REASON_MULTI_CHARGED:I = 0x6

.field private static final blacklist HEAT_REASON_MULTI_EVI:I = 0x7

.field private static final blacklist HEAT_REASON_MULTI_EVI_CHARGED:I = 0x8

.field private static final blacklist HEAT_REASON_UNKONW:I = 0x270f

.field private static final blacklist HEAT_TIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd-HH-mm-ss"

.field private static final blacklist HOLD_HEAT_TINE:I = 0x1b7740

.field private static final blacklist HOUR_COEFFICIENT:I = 0x3c

.field private static final blacklist INIT_THERMAL_PAR:I = 0x3e

.field private static final blacklist INT_MILLISECOND:I = 0x3e8

.field private static final blacklist INVALID_DATA:I = -0x3ff

.field private static final blacklist IS_CHARGED_THRESHOLD:I = 0xfa

.field private static final blacklist IS_MULTIRESON_THRESHOLD:I = 0x2ee

.field private static final blacklist KEY_2GTIME_RATIO:Ljava/lang/String; = "2GTimeRatio"

.field private static final blacklist KEY_3GTIME_RATIO:Ljava/lang/String; = "3GTimeRatio"

.field private static final blacklist KEY_4GTIME_RATIO:Ljava/lang/String; = "4GTimeRatio"

.field private static final blacklist KEY_APP_CPU:Ljava/lang/String; = "AppCpu"

.field private static final blacklist KEY_AUDIOTIMERATIO:Ljava/lang/String; = "audioTimeRatio"

.field private static final blacklist KEY_AUTOBRIGHTNESS:Ljava/lang/String; = "AutoBrightness"

.field private static final blacklist KEY_BACKLIGHT:Ljava/lang/String; = "backlight"

.field private static final blacklist KEY_BATTEMP:Ljava/lang/String; = "batTemp"

.field private static final blacklist KEY_BATTEMPMAP:Ljava/lang/String; = "batTempMap"

.field private static final blacklist KEY_BATTERYRM:Ljava/lang/String; = "batteryRm"

.field private static final blacklist KEY_BATTERY_CURRENT:Ljava/lang/String; = "batteryCurrent"

.field private static final blacklist KEY_BATTERY_VOLTAGE:Ljava/lang/String; = "batteryVoltage"

.field private static final blacklist KEY_CAMERATIMERATIO:Ljava/lang/String; = "cameraTimeRatio"

.field private static final blacklist KEY_CHARGE:Ljava/lang/String; = "Charge"

.field private static final blacklist KEY_CHARGEPLUG:Ljava/lang/String; = "chargePlug"

.field private static final blacklist KEY_CHARGETIME:Ljava/lang/String; = "chargeTime"

.field private static final blacklist KEY_CPU:Ljava/lang/String; = "Cpu"

.field private static final blacklist KEY_CPUFRE:Ljava/lang/String; = "cpuFreq"

.field private static final blacklist KEY_CPULOADING:Ljava/lang/String; = "cpuLoading"

.field private static final blacklist KEY_CURRENT:Ljava/lang/String; = "current"

.field private static final blacklist KEY_DOUBLE_BARS:Ljava/lang/String; = "--"

.field private static final blacklist KEY_ENDBATRM:Ljava/lang/String; = "EndBatRm"

.field private static final blacklist KEY_ENDTIME:Ljava/lang/String; = "endTime"

.field private static final blacklist KEY_ENVITEMP:Ljava/lang/String; = "enviTemp"

.field private static final blacklist KEY_EQUAL_SIGN:Ljava/lang/String; = "="

.field private static final blacklist KEY_FASTCHARGE:Ljava/lang/String; = "fastCharge"

.field private static final blacklist KEY_FCC:Ljava/lang/String; = "fcc"

.field private static final blacklist KEY_FLASHLIGHTTIMERATIO:Ljava/lang/String; = "flashlightTimeRatio"

.field private static final blacklist KEY_FLASHON:Ljava/lang/String; = "FlashOn"

.field private static final blacklist KEY_FOREPROCVERSION:Ljava/lang/String; = "foreProcVersion"

.field private static final blacklist KEY_FORE_PROC:Ljava/lang/String; = "foreProc"

.field private static final blacklist KEY_FORE_PROC_TIME_RATIO:Ljava/lang/String; = "foreProcTimeRatio"

.field private static final blacklist KEY_GPSTIMERATIO:Ljava/lang/String; = "gpsTimeRatio"

.field private static final blacklist KEY_HEATRATIO:Ljava/lang/String; = "heatRatio"

.field private static final blacklist KEY_HEATTHRESHOLD:Ljava/lang/String; = "heatThreshold"

.field private static final blacklist KEY_HEAT_REASON:Ljava/lang/String; = "heatReason"

.field private static final blacklist KEY_HEAT_TIME:Ljava/lang/String; = "heatTime"

.field private static final blacklist KEY_HOUR:Ljava/lang/String; = "hour"

.field private static final blacklist KEY_INVALID:Ljava/lang/String; = "invalid"

.field private static final blacklist KEY_JOB_PROC:Ljava/lang/String; = "jobProc"

.field private static final blacklist KEY_JOB_TIME_RATIO:Ljava/lang/String; = "jobTimeRatio"

.field private static final blacklist KEY_KEY:Ljava/lang/String; = "key"

.field private static final blacklist KEY_LAST_SAMEPLE_WALL_TIME:Ljava/lang/String; = "lastSamepleWallTime"

.field private static final blacklist KEY_MAXBATTEMP:Ljava/lang/String; = "maxBatTemp"

.field private static final blacklist KEY_MAXPHONETEMP:Ljava/lang/String; = "maxPhoneTemp"

.field private static final blacklist KEY_MAXTEMP:Ljava/lang/String; = "maxTemp"

.field private static final blacklist KEY_MINTEMP:Ljava/lang/String; = "minTemp"

.field private static final blacklist KEY_NETMOBILE:Ljava/lang/String; = "NetMobile"

.field private static final blacklist KEY_NETNONE:Ljava/lang/String; = "NetNone"

.field private static final blacklist KEY_NETWIFI:Ljava/lang/String; = "NetWifi"

.field private static final blacklist KEY_PACKAGE:Ljava/lang/String; = "package"

.field private static final blacklist KEY_PHONEONTIMERATI:Ljava/lang/String; = "phoneOnTimeRatio"

.field private static final blacklist KEY_PHONESIGNAL:Ljava/lang/String; = "phoneSignal"

.field private static final blacklist KEY_PHONE_HEAT_MAP:Ljava/lang/String; = "phoneHeatMap"

.field private static final blacklist KEY_PLUGTYPE:Ljava/lang/String; = "plugType"

.field private static final blacklist KEY_REASON:Ljava/lang/String; = "reason"

.field private static final blacklist KEY_SCREENONTIME:Ljava/lang/String; = "screenOnTime"

.field private static final blacklist KEY_SIMPLETOPPRO:Ljava/lang/String; = "simpleTopPro"

.field private static final blacklist KEY_STARTBATRM:Ljava/lang/String; = "StartBatRm"

.field private static final blacklist KEY_STARTHOUR:Ljava/lang/String; = "startHour"

.field private static final blacklist KEY_STARTLEVEL:Ljava/lang/String; = "startLevel"

.field private static final blacklist KEY_STARTTEMP:Ljava/lang/String; = "startTemp"

.field private static final blacklist KEY_STARTTIME:Ljava/lang/String; = "startTime"

.field private static final blacklist KEY_SYNC_PROCC:Ljava/lang/String; = "syncProcc"

.field private static final blacklist KEY_SYNC_TIME_RATIO:Ljava/lang/String; = "syncTimeRatio"

.field private static final blacklist KEY_TEMP:Ljava/lang/String; = "temp"

.field private static final blacklist KEY_TEMPTIME:Ljava/lang/String; = "tempTime"

.field private static final blacklist KEY_TIME:Ljava/lang/String; = "Time"

.field private static final blacklist KEY_TOPCPURATIO:Ljava/lang/String; = "topcpuRatio"

.field private static final blacklist KEY_TOP_CPU_PROC:Ljava/lang/String; = "topcpuproc"

.field private static final blacklist KEY_TOP_CPU_TIME_RATIO:Ljava/lang/String; = "topcpuTimeRatio"

.field private static final blacklist KEY_TOTALTIME:Ljava/lang/String; = "totalTime"

.field private static final blacklist KEY_UNKNOW:Ljava/lang/String; = "9999"

.field private static final blacklist KEY_UPLOADLOG:Ljava/lang/String; = "uploadLog"

.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "ro.build.version.release"

.field private static final blacklist KEY_VOLUME:Ljava/lang/String; = "Volume"

.field private static final blacklist KEY_VOLUME_LEVEL:Ljava/lang/String; = "volumeLevel"

.field private static final blacklist KEY_WIFISIGNAL:Ljava/lang/String; = "wifiSignal"

.field private static final blacklist KEY_WIFITIMERATIO:Ljava/lang/String; = "wifiTimeRatio"

.field private static final blacklist LONG_MILLISECOND:J = 0x3e8L

.field private static final blacklist MAX_HEAT_ANALIZY_SIZE:I = 0x190

.field private static final blacklist MAX_HISTORY_BUFFER:I = 0x20000

.field private static final blacklist MAX_TIME_MINUTE_VALUE:I = 0x7d0

.field private static final blacklist MINUTE_COEFFICIENT:I = 0x3c

.field private static final blacklist MONITOR_START_TIME:I = 0x493e0

.field private static final blacklist MSG_REPORT_UPDATE_CPU:I = 0x5

.field private static final blacklist NOT_CHARGED_CURRENT_THRESHOLD:I = 0x1f4

.field private static final blacklist OFF_SET:I = 0x10

.field private static final blacklist ONE_HUNDRED:I = 0x64

.field private static final blacklist ONE_MINUTE_MILLISECOND:J = 0xea60L

.field private static final blacklist PACKAGE_POWER_MONITOR:Ljava/lang/String; = "com.oplus.powermonitor"

.field private static final blacklist RESET_ALARM:I = 0x3c

.field private static final blacklist SYNC_TO_THERMAL_FILE:I = 0x40

.field public static final blacklist TAG:Ljava/lang/String; = "OplusThermalStats"

.field private static final blacklist TEMP_SCALE_VALUE:I = 0xa

.field public static final blacklist THERMAL_EVENT_AUDIO:I = 0x3

.field public static final blacklist THERMAL_EVENT_BASE:I = 0x1

.field public static final blacklist THERMAL_EVENT_CAMERA:I = 0x2

.field public static final blacklist THERMAL_EVENT_FLASH_LIGHT:I = 0x6

.field public static final blacklist THERMAL_EVENT_GPS:I = 0x5

.field public static final blacklist THERMAL_EVENT_VIDEO:I = 0x4

.field private static final blacklist THERMAL_HEAT_EVENT:Ljava/lang/String; = "id_thermal_heat"

.field private static final blacklist THERMAL_INFO_DCS:Ljava/lang/String; = "/data/oplus/psw/dcs/"

.field private static final blacklist THERMAL_MONITOR_APP:Ljava/lang/String; = "id_thermal_monitor_app"

.field private static final blacklist THERMAL_RATIO:I = 0x41

.field private static final blacklist THERMAL_TAG:Ljava/lang/String; = "20139"

.field private static final blacklist THERMAL_TEMP_EVENT:Ljava/lang/String; = "id_thermal_temp"

.field private static final blacklist THREAD_NAME:Ljava/lang/String; = "ThermalStatsHelper"

.field private static final blacklist UNKONW_INITIAL_VALUE:I = 0x270f

.field private static final blacklist UPDATE_BRIGHTNESS:I = 0x39

.field private static final blacklist UPDATE_TIME_INTERVAL:I = 0xdbba0

.field private static final blacklist UPDATE_VOLUME:I = 0x3d

.field private static final blacklist VARIABLE_INITIAL_VALUE:Ljava/lang/String; = "null"

.field private static final blacklist VIDEOON_CHECK:I = 0x35

.field private static final blacklist VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"

.field private static final blacklist WAKELOCK_KEY:Ljava/lang/String; = "thermalUpload"


# instance fields
.field private blacklist cpuFreqReader:Lcom/android/internal/os/OplusCpuFreqReader;

.field private blacklist isThermalFreatureOn:Z

.field private blacklist mAlarmManager:Landroid/app/AlarmManager;

.field private blacklist mBatTempMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mBatteryFcc:I

.field private blacklist mBatteryStatsReady:Z

.field private blacklist mCaptureCpuFeqElapsRealtime:J

.field private blacklist mCaptureCpuFeqInterVal:J

.field private blacklist mChargeUploadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCpuFreqValues:Ljava/lang/String;

.field private blacklist mCpuFreqValuesNeedUpload:Ljava/lang/String;

.field blacklist mCpuIdleCheckCount:I

.field blacklist mCpuLoadRecInterv:I

.field blacklist mCpuLoadRecThreshold:I

.field private blacklist mCurrentForeApk:Ljava/lang/String;

.field private blacklist mEnviThermalHourMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mGlobalBatTemp:I

.field blacklist mGlobalBatteryCurrent:I

.field blacklist mGlobalBatteryRealtimeCapacity:I

.field blacklist mGlobalBatteryVoltage:I

.field blacklist mGlobalChargeId:I

.field blacklist mGlobalFast2Normal:I

.field blacklist mGlobalFastCharge:Z

.field blacklist mGlobalFastCharger:Z

.field blacklist mGlobalMaxBatTemp:I

.field blacklist mGlobalMaxPhoneTemp:I

.field blacklist mGlobalPlugType:I

.field blacklist mGlobalScreenBrightnessMode:Z

.field blacklist mGlobalVolumeLevel:I

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mHaveCaptured:Z

.field blacklist mHeatHoldTimeThreshold:I

.field blacklist mHeatHoldUploadTime:I

.field blacklist mHeatIncRatioStartTime:J

.field blacklist mHeatIncRatioThreshold:I

.field private blacklist mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

.field blacklist mHeatRecInterv:I

.field blacklist mHeatThreshold:I

.field private blacklist mHoldHeat:Z

.field blacklist mHoldHeatElapsedRealtime:J

.field blacklist mHoldHeatTime:I

.field private blacklist mHoraeThermalHelper:Lcom/oplus/util/OplusHoraeThermalHelper;

.field private blacklist mIsSupportHorae:Z

.field private blacklist mIteratingThermalHistory:Z

.field private blacklist mLastDaySuperFluousTime:J

.field blacklist mLastFast2Normal:I

.field private blacklist mLastForeApk:Ljava/lang/String;

.field blacklist mLastPhoneTemp:I

.field blacklist mLastPhoneTemp1:I

.field blacklist mLastPhoneTemp2:I

.field blacklist mLastPhoneTemp3:I

.field blacklist mLessHeatThreshold:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMaxApkTemp:I

.field private blacklist mMaxDayThermal:Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

.field private blacklist mMonitorAppLimitTime:I

.field private blacklist mMonitorAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMoreHeatThreshold:I

.field private blacklist mNetConnectType:I

.field blacklist mNumThermalHistoryItems:I

.field private blacklist mPackageManger:Landroid/content/pm/PackageManager;

.field private blacklist mPowerManager:Landroid/os/PowerManager;

.field blacklist mPreHeatThreshold:I

.field private blacklist mReceiver:Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

.field blacklist mRecordThermalHistory:Z

.field private blacklist mResumedApk:Ljava/lang/String;

.field private blacklist mResumedApkStartTime:J

.field private blacklist mScreenBrightness:I

.field private blacklist mSimpleTopProInterVal:J

.field private blacklist mSimpleTopProcesses:Ljava/lang/String;

.field private blacklist mSimpleTopProcessesNeedUpload:Ljava/lang/String;

.field private blacklist mStartAnalizyHeat:Z

.field private final blacklist mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

.field private blacklist mSystemDir:Ljava/io/File;

.field private blacklist mTempChargeUploadMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTempMonitorAppMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mThermalBatteryTemp:Z

.field private final blacklist mThermalBuilder:Ljava/lang/StringBuilder;

.field blacklist mThermalCaptureLog:Z

.field blacklist mThermalCaptureLogThreshold:I

.field blacklist mThermalFeatureOn:Z

.field private blacklist mThermalHistory:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private final blacklist mThermalHistoryBuffer:Landroid/os/Parcel;

.field blacklist mThermalHistoryBufferLastPos:I

.field final blacklist mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private final blacklist mThermalHistoryLastLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private final blacklist mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private final blacklist mThermalHistoryLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private final blacklist mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

.field private blacklist mThermalHourMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mThermalMonitorApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mThermalRecFile:Ljava/io/File;

.field private blacklist mThermalTempMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mThermalUploadDcs:Z

.field blacklist mThermalUploadErrLog:Z

.field blacklist mThermalUploadLog:Z

.field private blacklist mTop5AppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mTopCpuRecInterv:I

.field blacklist mTopCpuRecThreshold:I

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mWakeupIntent:Landroid/app/PendingIntent;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCpuFreqValuesNeedUpload(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuFreqValuesNeedUpload:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeatReasonDetails(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageManger(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPackageManger:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPowerManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mReceiver:Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimpleTopProcessesNeedUpload(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProcessesNeedUpload:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSystemDir(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSystemDir:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmThermalRecFile(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalRecFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mWakeupIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/app/AlarmManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPackageManger(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPackageManger:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPowerManager(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/os/PowerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mReceiver:Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStartAnalizyHeat(Lcom/android/internal/os/OplusThermalStatsHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mWakeupIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcopyFile(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/io/File;Ljava/io/File;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/os/OplusThermalStatsHelper;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$menCoderString(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->enCoderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetStampThermalHeat(Lcom/android/internal/os/OplusThermalStatsHelper;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->getStampThermalHeat(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minitUploadAlarm(Lcom/android/internal/os/OplusThermalStatsHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->initUploadAlarm()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 382
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/os/Handler;Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImplExtImpl;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "thermalRecFile"    # Ljava/io/File;
    .param p4, "systemDir"    # Ljava/io/File;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 90
    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper;->getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoraeThermalHelper:Lcom/oplus/util/OplusHoraeThermalHelper;

    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mIsSupportHorae:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryStatsReady:Z

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    .line 286
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    .line 287
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    .line 288
    new-instance v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v2}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 289
    new-instance v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v2}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 290
    new-instance v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v2}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 291
    new-instance v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v2}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 292
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    .line 293
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeat:Z

    .line 299
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mReceiver:Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    .line 300
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    .line 301
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    .line 302
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    .line 303
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppMap:Ljava/util/Map;

    .line 304
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    .line 305
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    .line 306
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mChargeUploadMap:Ljava/util/Map;

    .line 307
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    .line 308
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mNetConnectType:I

    .line 309
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSystemDir:Ljava/io/File;

    .line 311
    new-instance v3, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    invoke-direct {v3, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    iput-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMaxDayThermal:Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    .line 312
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    .line 313
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCurrentForeApk:Ljava/lang/String;

    .line 314
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastForeApk:Ljava/lang/String;

    .line 315
    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMaxApkTemp:I

    .line 316
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApk:Ljava/lang/String;

    .line 317
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    .line 318
    iput-wide v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastDaySuperFluousTime:J

    .line 321
    const v0, 0x249f00

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppLimitTime:I

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalMonitorApp:Ljava/util/ArrayList;

    .line 331
    new-instance v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v0}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 333
    const-string v0, "invalid"

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProcessesNeedUpload:Ljava/lang/String;

    .line 336
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHaveCaptured:Z

    .line 338
    const-wide/32 v5, 0x1d4c0

    iput-wide v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCaptureCpuFeqInterVal:J

    .line 339
    iput-wide v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProInterVal:J

    .line 340
    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBufferLastPos:I

    .line 344
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMoreHeatThreshold:I

    .line 345
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    .line 346
    const/16 v0, 0x1a4

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLessHeatThreshold:I

    .line 347
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPreHeatThreshold:I

    .line 348
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioThreshold:I

    .line 349
    const v0, 0x1b7740

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBatteryTemp:Z

    .line 351
    const v0, 0x15f90

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldUploadTime:I

    .line 352
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatRecInterv:I

    .line 353
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuLoadRecThreshold:I

    .line 354
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuLoadRecInterv:I

    .line 355
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTopCpuRecThreshold:I

    .line 356
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTopCpuRecInterv:I

    .line 357
    const/16 v0, -0x3ff

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastPhoneTemp:I

    .line 358
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastPhoneTemp1:I

    .line 359
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastPhoneTemp2:I

    .line 360
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastPhoneTemp3:I

    .line 361
    iput-wide v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioStartTime:J

    .line 362
    iput-wide v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatElapsedRealtime:J

    .line 363
    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    .line 364
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    .line 365
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatTemp:I

    .line 366
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalPlugType:I

    .line 367
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryRealtimeCapacity:I

    .line 368
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryVoltage:I

    .line 369
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFastCharge:Z

    .line 370
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryFcc:I

    .line 371
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalChargeId:I

    .line 372
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFast2Normal:I

    .line 373
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastFast2Normal:I

    .line 374
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalScreenBrightnessMode:Z

    .line 375
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFastCharger:Z

    .line 378
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxPhoneTemp:I

    .line 379
    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxBatTemp:I

    .line 381
    new-instance v0, Lcom/android/internal/os/OplusCpuFreqReader;

    invoke-direct {v0}, Lcom/android/internal/os/OplusCpuFreqReader;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->cpuFreqReader:Lcom/android/internal/os/OplusCpuFreqReader;

    .line 1223
    new-instance v0, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-direct {v0, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    .line 4087
    new-instance v0, Lcom/android/internal/os/OplusThermalStatsHelper$10;

    invoke-direct {v0, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$10;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mComparator:Ljava/util/Comparator;

    .line 216
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    .line 217
    iput-object p3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalRecFile:Ljava/io/File;

    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThermalStatsHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 219
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 220
    iput-object p4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSystemDir:Ljava/io/File;

    .line 221
    new-instance v0, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/OplusThermalStatsHelper$WorkHandler;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    .line 222
    return-void
.end method

.method private blacklist addThermalScreenBrightness(JJI)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "backlight"    # I

    .line 2402
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2403
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2405
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p5, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BILandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2406
    return-void
.end method

.method private blacklist addThermalScreenBrightnessDelayed(JJII)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "backlight"    # I
    .param p6, "delayTime"    # I

    .line 2394
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2395
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2396
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2397
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2398
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    int-to-long v2, p6

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2399
    return-void
.end method

.method private blacklist addhistorySizeValue(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "size"    # J

    .line 3687
    long-to-float v0, p2

    .line 3688
    .local v0, "result":F
    const-string v1, ""

    .line 3689
    .local v1, "suffix":Ljava/lang/String;
    const/high16 v2, 0x46200000    # 10240.0f

    cmpl-float v3, v0, v2

    const/high16 v4, 0x44800000    # 1024.0f

    if-ltz v3, :cond_0

    .line 3690
    const-string v1, "KB"

    .line 3691
    div-float/2addr v0, v4

    .line 3693
    :cond_0
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_1

    .line 3694
    const-string v1, "MB"

    .line 3695
    div-float/2addr v0, v4

    .line 3697
    :cond_1
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_2

    .line 3698
    const-string v1, "GB"

    .line 3699
    div-float/2addr v0, v4

    .line 3701
    :cond_2
    cmpl-float v3, v0, v2

    if-ltz v3, :cond_3

    .line 3702
    const-string v1, "TB"

    .line 3703
    div-float/2addr v0, v4

    .line 3705
    :cond_3
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_4

    .line 3706
    const-string v1, "PB"

    .line 3707
    div-float/2addr v0, v4

    .line 3709
    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3710
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    return-void
.end method

.method private blacklist buildThermalBatteryInfo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)I
    .locals 3
    .param p1, "t"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 2317
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    shl-int/lit8 v0, v0, 0x19

    const/high16 v1, -0x2000000

    and-int/2addr v0, v1

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    shl-int/lit8 v1, v1, 0xf

    const v2, 0x1ff8000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iget v1, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0x7ffe

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist buildThermalTempInfo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)J
    .locals 7
    .param p1, "t"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 2323
    iget v0, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    int-to-long v0, v0

    const-wide/16 v2, 0xfff

    and-long/2addr v0, v2

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    iget v4, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x24

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget v4, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    iget v4, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    int-to-long v4, v4

    and-long/2addr v2, v4

    const/16 v4, 0xc

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget v2, p1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static blacklist byte2Hex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3207
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 3208
    .local v1, "temp":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 3209
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3210
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3211
    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3213
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3215
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private blacklist calculateEnviTemp(II)V
    .locals 7
    .param p1, "load5"    # I
    .param p2, "load15"    # I

    .line 1602
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    if-eqz v0, :cond_1

    .line 1603
    :cond_0
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    .line 1605
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1606
    .local v2, "elapsedRealtime":J
    const-wide/32 v4, 0xdbba0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 1607
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    .line 1609
    :cond_2
    const/4 v0, 0x1

    const/16 v4, 0x64

    if-gt p1, v4, :cond_3

    if-gt p2, v4, :cond_3

    .line 1610
    iget v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    goto :goto_0

    .line 1612
    :cond_3
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    .line 1615
    :goto_0
    iget v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_4

    .line 1616
    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuIdleCheckCount:I

    .line 1617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1618
    .local v4, "uptime":J
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatTemp:I

    iput v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 1619
    const/16 v1, 0x18

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {p0, v1, v6, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 1621
    .end local v4    # "uptime":J
    :cond_4
    return-void
.end method

.method private blacklist cancleUploadAlarm()V
    .locals 2

    .line 3041
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$5;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$5;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3061
    return-void
.end method

.method private blacklist checkCurrentTimeChanged(JJ)Z
    .locals 8
    .param p1, "currentTime"    # J
    .param p3, "lastCurrentTime"    # J

    .line 1389
    const-wide/32 v0, 0x6ddd00

    .line 1390
    .local v0, "TWO_HOUR":J
    const-wide/32 v2, 0x57b12c00

    .line 1391
    .local v2, "ONE_YEAR":J
    sub-long v4, p3, p1

    const-wide/32 v6, 0x6ddd00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const-wide/32 v4, 0x57b12c00

    cmp-long v4, p3, v4

    if-lez v4, :cond_0

    .line 1392
    const/4 v4, 0x1

    return v4

    .line 1394
    :cond_0
    const/4 v4, 0x0

    return v4
.end method

.method private blacklist collectChargeMap(Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 19
    .param p1, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p2, "last"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 2088
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-wide v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v5, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    sub-long/2addr v3, v5

    .line 2089
    .local v3, "deltaTime":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 2090
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 2091
    :cond_0
    const-wide/32 v5, 0xa4cb80

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 2092
    const-wide/16 v3, 0x0

    .line 2094
    :cond_1
    :goto_0
    iget v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    iget v6, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    const-string v7, "startHour"

    const-string v8, "startLevel"

    const-string v9, "StartBatRm"

    const-string v10, "startTemp"

    const-string v12, "startTime"

    const-string v13, "chargeTime"

    const-string v14, "screenOnTime"

    const-string v15, "maxTemp"

    const-string v11, "minTemp"

    if-eq v5, v6, :cond_8

    .line 2095
    const/4 v5, 0x0

    iput v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastFast2Normal:I

    .line 2096
    iget v5, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    if-nez v5, :cond_2

    .line 2097
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 2098
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 2099
    .local v5, "instance":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 2100
    .local v6, "hour":I
    iget-object v14, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    move-object/from16 v16, v5

    .end local v5    # "instance":Ljava/util/Calendar;
    .local v16, "instance":Ljava/util/Calendar;
    iget v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    move-wide/from16 v17, v3

    .end local v3    # "deltaTime":J
    .local v17, "deltaTime":J
    int-to-long v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v14, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget-wide v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    sub-long/2addr v4, v8

    iget-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    int-to-long v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget-wide v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    .end local v6    # "hour":I
    .end local v16    # "instance":Ljava/util/Calendar;
    goto/16 :goto_5

    .line 2109
    .end local v17    # "deltaTime":J
    .restart local v3    # "deltaTime":J
    :cond_2
    move-wide/from16 v17, v3

    .end local v3    # "deltaTime":J
    .restart local v17    # "deltaTime":J
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2110
    iget-wide v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 2111
    .local v3, "chargeTime":J
    iget v5, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    if-lez v5, :cond_4

    .line 2112
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2113
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2115
    :cond_3
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2116
    .local v5, "screenOnTime":J
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    add-long v8, v17, v5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2119
    .end local v5    # "screenOnTime":J
    :cond_4
    :goto_1
    const-wide/32 v5, 0x1d4c0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_7

    .line 2120
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "endTemp"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2122
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "EndBatRm"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2123
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "endLevel"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2124
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget-wide v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    sub-long/2addr v6, v8

    iget-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "endTime"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2125
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "chargePlug"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2126
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2127
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2128
    .local v5, "minTemp":J
    iget v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v7, v7

    cmp-long v7, v7, v5

    if-gez v7, :cond_5

    .line 2129
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2132
    .end local v5    # "minTemp":J
    :cond_5
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2133
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v5, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2134
    .local v5, "maxTemp":J
    iget v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v7, v7

    cmp-long v7, v7, v5

    if-lez v7, :cond_6

    .line 2135
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    .end local v5    # "maxTemp":J
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getUploadChargeMap()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mChargeUploadMap:Ljava/util/Map;

    .line 2139
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->startUploadChargeMap()V

    .line 2142
    .end local v3    # "chargeTime":J
    :cond_7
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    goto/16 :goto_5

    .line 2145
    .end local v17    # "deltaTime":J
    .local v3, "deltaTime":J
    :cond_8
    move-wide/from16 v17, v3

    .end local v3    # "deltaTime":J
    .restart local v17    # "deltaTime":J
    iget v3, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    if-eqz v3, :cond_10

    .line 2146
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2147
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 2148
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 2149
    .local v3, "instance":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 2150
    .local v4, "hour":I
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    move-object/from16 v16, v3

    .end local v3    # "instance":Ljava/util/Calendar;
    .restart local v16    # "instance":Ljava/util/Calendar;
    int-to-long v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v5, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2151
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2152
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2153
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget-wide v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    sub-long/2addr v5, v8

    iget-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    add-long/2addr v5, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2154
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    int-to-long v5, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2155
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2156
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2157
    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget-wide v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2159
    .end local v4    # "hour":I
    .end local v16    # "instance":Ljava/util/Calendar;
    :cond_9
    move-object/from16 v2, p2

    iget v3, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    if-lez v3, :cond_b

    .line 2160
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2161
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2163
    :cond_a
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2164
    .local v3, "screenOnTime":J
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    add-long v6, v17, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2167
    .end local v3    # "screenOnTime":J
    :cond_b
    :goto_2
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2168
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2169
    .local v3, "minTemp":J
    iget v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v5, v5

    cmp-long v5, v5, v3

    if-gez v5, :cond_d

    .line 2170
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2172
    .end local v3    # "minTemp":J
    :cond_c
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2173
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2174
    .local v3, "maxTemp":J
    iget v5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v5, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_e

    .line 2175
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2172
    .end local v3    # "maxTemp":J
    :cond_d
    :goto_3
    nop

    .line 2178
    :cond_e
    :goto_4
    iget v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastFast2Normal:I

    iget v4, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFast2Normal:I

    if-eq v3, v4, :cond_f

    .line 2179
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "f2nTemp"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "f2nLevel"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2181
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "f2nbatRm"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    iget-object v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    iget-wide v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "f2nTime"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2184
    :cond_f
    iget v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFast2Normal:I

    iput v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastFast2Normal:I

    .line 2187
    :cond_10
    :goto_5
    return-void
.end method

.method private blacklist collectMoinitAppMap(Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 25
    .param p1, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p2, "last"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 1912
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalMonitorApp:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1913
    iget-wide v4, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v6, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    sub-long/2addr v4, v6

    .line 1914
    .local v4, "deltaTime":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 1915
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 1916
    :cond_0
    const-wide/32 v8, 0xa4cb80

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    .line 1917
    const-wide/16 v4, 0x0

    .line 1919
    :cond_1
    :goto_0
    const-wide/16 v8, 0x0

    .line 1920
    .local v8, "tempTime":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "--"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "Time"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1921
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1923
    :cond_2
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    add-long v13, v4, v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v0, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1924
    iget-boolean v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    const-string v10, "FlashOn"

    if-eqz v0, :cond_4

    .line 1925
    const-wide/16 v8, 0x0

    .line 1926
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1928
    :try_start_0
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v8, v13

    .line 1931
    goto :goto_1

    .line 1929
    :catch_0
    move-exception v0

    .line 1930
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1933
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-long v14, v4, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    :cond_4
    iget v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    if-eqz v0, :cond_6

    .line 1936
    const-wide/16 v8, 0x0

    .line 1937
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Charge"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1939
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v8, v15

    .line 1942
    goto :goto_2

    .line 1940
    :catch_1
    move-exception v0

    .line 1941
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1944
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    add-long v14, v4, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    :cond_6
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "StartBatRm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1947
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v14, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    :cond_7
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EndBatRm"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v14, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "maxPhoneTemp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1951
    const-wide/16 v15, 0x0

    .line 1952
    .local v15, "phoneTemp":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1953
    .end local v15    # "phoneTemp":J
    .local v6, "phoneTemp":J
    iget v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    move-wide v15, v8

    .end local v8    # "tempTime":J
    .local v15, "tempTime":J
    int-to-long v8, v0

    cmp-long v0, v8, v6

    if-lez v0, :cond_8

    .line 1954
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    int-to-long v13, v9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1956
    .end local v6    # "phoneTemp":J
    :cond_8
    goto :goto_3

    .line 1957
    .end local v15    # "tempTime":J
    .restart local v8    # "tempTime":J
    :cond_9
    move-wide v15, v8

    .end local v8    # "tempTime":J
    .restart local v15    # "tempTime":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    :goto_3
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "maxBatTemp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1960
    const-wide/16 v8, 0x0

    .line 1962
    .local v8, "batTemp":J
    :try_start_2
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v8, v13

    .line 1965
    goto :goto_4

    .line 1963
    :catch_2
    move-exception v0

    .line 1964
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1966
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    iget v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v13, v0

    cmp-long v0, v13, v8

    if-lez v0, :cond_a

    .line 1967
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v13, v7

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1969
    .end local v8    # "batTemp":J
    :cond_a
    goto :goto_5

    .line 1970
    :cond_b
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    :goto_5
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "AppCpu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1973
    const-wide/16 v8, 0x0

    .line 1975
    .local v8, "tempAppCpu":J
    :try_start_3
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-wide v8, v13

    .line 1978
    goto :goto_6

    .line 1976
    :catch_3
    move-exception v0

    .line 1977
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1979
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    int-to-long v13, v13

    mul-long/2addr v13, v4

    add-long/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v0, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    .end local v8    # "tempAppCpu":J
    goto :goto_7

    .line 1981
    :cond_c
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    int-to-long v8, v8

    mul-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    :goto_7
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Cpu"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1984
    const-wide/16 v13, 0x0

    .line 1986
    .local v13, "tempAppCpu":J
    :try_start_4
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-wide/from16 v13, v19

    .line 1989
    goto :goto_8

    .line 1987
    :catch_4
    move-exception v0

    .line 1988
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1990
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    move-object/from16 v19, v10

    int-to-long v9, v9

    mul-long/2addr v9, v4

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1991
    .end local v13    # "tempAppCpu":J
    goto :goto_9

    .line 1992
    :cond_d
    move-object/from16 v19, v10

    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    int-to-long v9, v9

    mul-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1994
    :goto_9
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "backlight"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1995
    const-wide/16 v13, 0x0

    .line 1997
    .local v13, "tempBacklight":J
    :try_start_5
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-wide/from16 v13, v20

    .line 2000
    goto :goto_a

    .line 1998
    :catch_5
    move-exception v0

    .line 1999
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2001
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    int-to-long v9, v9

    mul-long/2addr v9, v4

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2002
    .end local v13    # "tempBacklight":J
    goto :goto_b

    .line 2003
    :cond_e
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    int-to-long v9, v9

    mul-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    :goto_b
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "Volume"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2006
    const-wide/16 v13, 0x0

    .line 2007
    .restart local v13    # "tempBacklight":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2008
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    int-to-long v9, v9

    mul-long/2addr v9, v4

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    .end local v13    # "tempBacklight":J
    goto :goto_c

    .line 2010
    :cond_f
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    int-to-long v9, v9

    mul-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    :goto_c
    iget-byte v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    if-nez v0, :cond_11

    .line 2013
    const-wide/16 v9, 0x0

    .line 2014
    .end local v15    # "tempTime":J
    .local v9, "tempTime":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "NetMobile"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2016
    :try_start_6
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-wide v9, v14

    .line 2019
    goto :goto_d

    .line 2017
    :catch_6
    move-exception v0

    .line 2018
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2021
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_d
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-long v13, v9, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v0, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v15, v9

    .line 2023
    .end local v9    # "tempTime":J
    .restart local v15    # "tempTime":J
    :cond_11
    iget-byte v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    const/4 v6, 0x1

    if-ne v0, v6, :cond_13

    .line 2024
    const-wide/16 v9, 0x0

    .line 2025
    .end local v15    # "tempTime":J
    .restart local v9    # "tempTime":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NetWifi"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2026
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_e

    .line 2025
    :cond_12
    move-wide v15, v9

    .line 2028
    .end local v9    # "tempTime":J
    .restart local v15    # "tempTime":J
    :goto_e
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-long v13, v15, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    :cond_13
    iget-byte v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    const/4 v9, -0x1

    if-ne v0, v9, :cond_15

    .line 2031
    const-wide/16 v9, 0x0

    .line 2032
    .end local v15    # "tempTime":J
    .restart local v9    # "tempTime":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NetNone"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2033
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-wide v15, v9

    goto :goto_f

    .line 2032
    :cond_14
    move-wide v15, v9

    .line 2035
    .end local v9    # "tempTime":J
    .restart local v15    # "tempTime":J
    :goto_f
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-long v13, v15, v4

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    :cond_15
    iget-boolean v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    if-ne v0, v6, :cond_17

    .line 2038
    const-wide/16 v9, 0x0

    .line 2039
    .end local v15    # "tempTime":J
    .restart local v9    # "tempTime":J
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v13, "AutoBrightness"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2041
    :try_start_7
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-wide v9, v14

    .line 2044
    move-wide v15, v9

    goto :goto_10

    .line 2042
    :catch_7
    move-exception v0

    .line 2043
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2046
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_16
    move-wide v15, v9

    .end local v9    # "tempTime":J
    .restart local v15    # "tempTime":J
    :goto_10
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-long v9, v15, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    :cond_17
    iget-object v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    iget-object v6, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2050
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2051
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 2052
    .local v9, "totalTime":J
    const/4 v0, 0x1

    .line 2053
    .local v0, "isValidateMap":Z
    iget v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppLimitTime:I

    int-to-long v12, v6

    cmp-long v6, v9, v12

    if-ltz v6, :cond_1c

    .line 2054
    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v13, v19

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-wide/16 v19, 0x64

    if-eqz v6, :cond_18

    .line 2055
    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2056
    .local v12, "flashOnTime":J
    mul-long v21, v12, v19

    div-long v21, v21, v9

    const-wide/16 v23, 0x14

    cmp-long v6, v21, v23

    if-lez v6, :cond_18

    .line 2057
    const/4 v0, 0x0

    .line 2060
    .end local v12    # "flashOnTime":J
    :cond_18
    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "--AppCpu"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 2061
    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2062
    .local v12, "cpu":J
    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2063
    .local v6, "appCpu":J
    const-wide/16 v17, 0x0

    cmp-long v8, v12, v17

    if-lez v8, :cond_19

    .line 2064
    mul-long v19, v19, v6

    div-long v19, v19, v12

    const-wide/16 v17, 0xa

    cmp-long v8, v19, v17

    if-gez v8, :cond_1a

    .line 2065
    const/4 v0, 0x0

    goto :goto_11

    .line 2068
    :cond_19
    const/4 v0, 0x0

    .line 2070
    :cond_1a
    :goto_11
    if-eqz v0, :cond_1b

    .line 2071
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    iget-object v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    invoke-direct {v1, v8, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->getMonitorAppMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppMap:Ljava/util/Map;

    .line 2072
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->startUploadMonitorApp()V

    .line 2075
    .end local v6    # "appCpu":J
    .end local v12    # "cpu":J
    :cond_1b
    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    if-eqz v6, :cond_1c

    .line 2076
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_12
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2077
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTempMonitorAppMap "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ":"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "OplusThermalStats"

    invoke-static {v11, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_12

    .line 2082
    .end local v0    # "isValidateMap":Z
    .end local v9    # "totalTime":J
    :cond_1c
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2085
    .end local v4    # "deltaTime":J
    .end local v15    # "tempTime":J
    :cond_1d
    return-void
.end method

.method private blacklist collectThermalTempMap(Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 23
    .param p1, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p2, "last"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 2189
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "hour"

    iget-wide v5, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    sub-long/2addr v5, v7

    .line 2190
    .local v5, "deltaTime":J
    iget v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iput v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mMaxApkTemp:I

    .line 2191
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 2192
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 2193
    :cond_0
    const-wide/32 v7, 0xa4cb80

    cmp-long v0, v5, v7

    if-lez v0, :cond_1

    .line 2194
    const-wide/16 v5, 0x0

    .line 2196
    :cond_1
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 2197
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    iget-wide v8, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v10, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    sub-long/2addr v8, v10

    iget-wide v10, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    add-long/2addr v8, v10

    .line 2198
    .local v8, "currentTime":J
    iget-wide v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    sub-long/2addr v10, v12

    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    add-long/2addr v10, v12

    .line 2199
    .local v10, "lastcurrentTime":J
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 2200
    .local v13, "hour":Ljava/lang/Integer;
    const/4 v14, -0x1

    .line 2202
    .local v14, "lasthour":I
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v13, v0

    .line 2203
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 2204
    iget v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v15, 0x168

    if-le v0, v15, :cond_2

    :try_start_1
    iget v15, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2220
    :catch_0
    move-exception v0

    move-object/from16 v18, v7

    goto/16 :goto_4

    .line 2204
    :cond_2
    :goto_1
    move v0, v15

    .line 2205
    .local v0, "intPhoneTemp":I
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v15, v14, :cond_3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-eq v15, v12, :cond_3

    if-eq v14, v12, :cond_3

    .line 2206
    iget-object v15, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v7

    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    .local v18, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2207
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2205
    .end local v18    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v7    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    move-object/from16 v18, v7

    .line 2210
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v18    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_2
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v14, :cond_7

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_7

    if-eq v14, v12, :cond_7

    .line 2211
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2212
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2214
    :cond_5
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2215
    .local v7, "tmpTemp":I
    if-ge v7, v0, :cond_6

    .line 2216
    iget-object v12, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v19, v7

    .end local v7    # "tmpTemp":I
    .local v19, "tmpTemp":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v7, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 2215
    .end local v19    # "tmpTemp":I
    .restart local v7    # "tmpTemp":I
    :cond_6
    move/from16 v19, v7

    .line 2222
    .end local v0    # "intPhoneTemp":I
    .end local v7    # "tmpTemp":I
    :cond_7
    :goto_3
    goto :goto_5

    .line 2220
    :catch_1
    move-exception v0

    goto :goto_4

    .end local v18    # "sdf":Ljava/text/SimpleDateFormat;
    .local v7, "sdf":Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v0

    move-object/from16 v18, v7

    .line 2221
    .end local v7    # "sdf":Ljava/text/SimpleDateFormat;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2226
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_4
    iget v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 2227
    .local v0, "intEnviTemp":I
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v14, :cond_8

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_8

    if-eq v14, v12, :cond_8

    .line 2228
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2229
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2232
    :cond_8
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v14, :cond_a

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_a

    if-eq v14, v12, :cond_a

    .line 2233
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2234
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v7, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 2236
    :cond_9
    iget-object v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2237
    .local v7, "tmpTemp":I
    if-ge v7, v0, :cond_a

    .line 2238
    iget-object v12, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v4, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2244
    .end local v0    # "intEnviTemp":I
    .end local v7    # "tmpTemp":I
    :cond_a
    :goto_6
    goto :goto_7

    .line 2242
    :catch_3
    move-exception v0

    .line 2243
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2247
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    iget v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    const/16 v4, 0x3c

    const/16 v7, 0x24

    const-wide/16 v15, 0x2710

    const/16 v12, -0x3ff

    if-eq v0, v12, :cond_e

    move-object/from16 v17, v13

    .end local v13    # "hour":Ljava/lang/Integer;
    .local v17, "hour":Ljava/lang/Integer;
    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    cmp-long v12, v12, v15

    if-lez v12, :cond_f

    .line 2248
    const-string v12, ""

    .line 2249
    .local v12, "phoneTemp":Ljava/lang/String;
    iget v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    div-int/lit8 v13, v13, 0xa

    if-gt v13, v7, :cond_b

    .line 2250
    const-string v12, "36"

    goto :goto_8

    .line 2251
    :cond_b
    iget v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    div-int/lit8 v13, v13, 0xa

    if-lt v13, v4, :cond_c

    .line 2252
    const-string v12, "60"

    goto :goto_8

    .line 2254
    :cond_c
    iget v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    div-int/lit8 v13, v13, 0xa

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 2256
    :goto_8
    iget-object v13, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 2257
    iget-object v13, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 2258
    .local v19, "tempTime":J
    iget-object v13, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    iget-object v13, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    add-long v21, v5, v19

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2260
    .end local v19    # "tempTime":J
    goto :goto_9

    .line 2261
    :cond_d
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 2247
    .end local v12    # "phoneTemp":Ljava/lang/String;
    .end local v17    # "hour":Ljava/lang/Integer;
    .restart local v13    # "hour":Ljava/lang/Integer;
    :cond_e
    move-object/from16 v17, v13

    .line 2265
    .end local v13    # "hour":Ljava/lang/Integer;
    .restart local v17    # "hour":Ljava/lang/Integer;
    :cond_f
    :goto_9
    iget v0, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    const/16 v12, -0x3ff

    if-eq v0, v12, :cond_13

    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    cmp-long v0, v12, v15

    if-lez v0, :cond_13

    .line 2266
    const-string v0, ""

    .line 2267
    .local v0, "batTemp":Ljava/lang/String;
    iget v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    div-int/lit8 v12, v12, 0xa

    if-gt v12, v7, :cond_10

    .line 2268
    const-string v0, "36"

    goto :goto_a

    .line 2269
    :cond_10
    iget v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    div-int/lit8 v7, v7, 0xa

    if-lt v7, v4, :cond_11

    .line 2270
    const-string v0, "60"

    goto :goto_a

    .line 2272
    :cond_11
    iget v4, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    div-int/lit8 v4, v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 2274
    :goto_a
    iget-object v4, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2275
    iget-object v4, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2276
    .local v12, "tempTime":J
    iget-object v4, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2277
    iget-object v4, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    add-long v15, v5, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2278
    .end local v12    # "tempTime":J
    goto :goto_b

    .line 2279
    :cond_12
    iget-object v4, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2314
    .end local v0    # "batTemp":Ljava/lang/String;
    :cond_13
    :goto_b
    return-void
.end method

.method private blacklist copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "srcFile"    # Ljava/io/File;
    .param p2, "destFile"    # Ljava/io/File;

    .line 2942
    const/16 v0, 0x1000

    .line 2944
    .local v0, "SIZE":I
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2945
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2946
    .local v2, "bis":Ljava/io/BufferedInputStream;
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2947
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 2949
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2950
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2951
    .local v4, "bos":Ljava/io/BufferedOutputStream;
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 2952
    .local v5, "readByte":[B
    :goto_0
    invoke-virtual {v2, v5}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 2953
    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    goto :goto_0

    .line 2955
    :cond_1
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2956
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 2957
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 2958
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 2959
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "bos":Ljava/io/BufferedOutputStream;
    .end local v5    # "readByte":[B
    nop

    .line 2964
    const/4 v1, 0x1

    return v1

    .line 2960
    :catch_0
    move-exception v1

    .line 2961
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 2962
    const/4 v2, 0x0

    return v2
.end method

.method private blacklist enCoderMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3169
    .local p1, "codemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "SHA-256"

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    .line 3170
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3172
    .local v3, "salt":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 3173
    .local v4, "sbSalt":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 3174
    .local v5, "mdSalt":Ljava/security/MessageDigest;
    const/4 v6, 0x0

    .line 3176
    .local v6, "strSalt":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    move-object v5, v0

    .line 3177
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 3178
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->byte2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 3181
    goto :goto_0

    .line 3179
    :catch_0
    move-exception v0

    .line 3180
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 3182
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    .line 3183
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 3184
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 3185
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v11, "--"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 3186
    .local v12, "str":[Ljava/lang/String;
    array-length v0, v12

    const/4 v13, 0x2

    if-ge v0, v13, :cond_0

    .line 3187
    goto :goto_1

    .line 3189
    :cond_0
    const/4 v0, 0x0

    aget-object v13, v12, v0

    .line 3190
    .local v13, "encodekey":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 3191
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 3192
    .local v15, "md":Ljava/security/MessageDigest;
    const/16 v16, 0x0

    .line 3194
    .local v16, "strDes":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    move-object v15, v0

    .line 3195
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 3196
    invoke-virtual {v15}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->byte2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v16, v0

    .line 3197
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    .end local v16    # "strDes":Ljava/lang/String;
    .local v1, "strDes":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v11, 0x1

    aget-object v11, v12, v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3200
    goto :goto_3

    .line 3198
    :catch_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_2

    .end local v1    # "strDes":Ljava/lang/String;
    .restart local v16    # "strDes":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    .end local v16    # "strDes":Ljava/lang/String;
    .restart local v1    # "strDes":Ljava/lang/String;
    goto :goto_2

    .end local v1    # "strDes":Ljava/lang/String;
    .restart local v16    # "strDes":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v17, v1

    .line 3199
    .restart local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 3202
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v12    # "str":[Ljava/lang/String;
    .end local v13    # "encodekey":Ljava/lang/String;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "md":Ljava/security/MessageDigest;
    .end local v16    # "strDes":Ljava/lang/String;
    :goto_3
    move-object/from16 v1, v17

    goto/16 :goto_1

    .line 3203
    :cond_1
    return-object v2
.end method

.method private blacklist enCoderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "code"    # Ljava/lang/String;

    .line 3541
    const-string v0, "SHA-256"

    const/4 v1, 0x0

    .line 3542
    .local v1, "md1":Ljava/security/MessageDigest;
    const-string v2, "ro.build.version.release"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3543
    .local v2, "salt":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3544
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 3546
    .local v4, "strSalt":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v1, v5

    .line 3547
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 3548
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->byte2Hex([B)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 3551
    goto :goto_0

    .line 3549
    :catch_0
    move-exception v5

    .line 3550
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 3552
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

    .line 3553
    .local v5, "sb1":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 3554
    .local v6, "strDes":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3556
    .local v7, "md2":Ljava/security/MessageDigest;
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    move-object v7, v0

    .line 3557
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 3558
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->byte2Hex([B)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    .line 3561
    goto :goto_1

    .line 3559
    :catch_1
    move-exception v0

    .line 3560
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 3562
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    return-object v6
.end method

.method private blacklist eventTypeToMessageID(I)I
    .locals 1
    .param p1, "thermalEventType"    # I

    .line 2541
    packed-switch p1, :pswitch_data_0

    .line 2553
    const/4 v0, -0x1

    return v0

    .line 2551
    :pswitch_0
    const/16 v0, 0x37

    return v0

    .line 2549
    :pswitch_1
    const/16 v0, 0x36

    return v0

    .line 2547
    :pswitch_2
    const/16 v0, 0x35

    return v0

    .line 2545
    :pswitch_3
    const/16 v0, 0x34

    return v0

    .line 2543
    :pswitch_4
    const/16 v0, 0x33

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getAppInfoByName(Ljava/lang/String;)Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    .locals 3
    .param p1, "apk"    # Ljava/lang/String;

    .line 4149
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    .line 4150
    .local v1, "info":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    iget-object v2, v1, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    .line 4151
    return-object v1

    .line 4153
    .end local v1    # "info":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    :cond_0
    goto :goto_0

    .line 4156
    :cond_1
    goto :goto_1

    .line 4154
    :catch_0
    move-exception v0

    .line 4155
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4157
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getAppNameByApk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "apk"    # Ljava/lang/String;

    .line 4233
    const/4 v0, 0x0

    .line 4234
    .local v0, "name":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 4235
    return-object v0

    .line 4238
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4239
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4240
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 4243
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 4241
    :catch_0
    move-exception v1

    .line 4242
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 4244
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_1

    move-object v1, p1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method private blacklist getMonitorAppMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 44
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3565
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/32 v2, 0x36ee80

    .line 3566
    .local v2, "ONE_HOUR_MILLS":J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3568
    .local v4, "monitorAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v5, 0x0

    .line 3569
    .local v5, "time":J
    const-wide/16 v7, 0x0

    .line 3570
    .local v7, "volume":J
    const-wide/16 v9, 0x0

    .line 3571
    .local v9, "chargeTime":J
    const-wide/16 v11, 0x0

    .line 3572
    .local v11, "endBatRm":J
    const-wide/16 v13, 0x0

    .line 3573
    .local v13, "backlight":J
    const-wide/16 v15, 0x0

    .line 3574
    .local v15, "startBatRm":J
    const-wide/16 v17, 0x0

    .line 3575
    .local v17, "phoneTemp":J
    const-wide/16 v19, 0x0

    .line 3576
    .local v19, "batTemp":J
    const-wide/16 v21, 0x0

    .line 3577
    .local v21, "netMobileTime":J
    const-wide/16 v23, 0x0

    .line 3578
    .local v23, "netWifiTime":J
    const-wide/16 v25, 0x0

    .line 3579
    .local v25, "netNoneTime":J
    const-wide/16 v27, 0x0

    .line 3580
    .local v27, "autoBrightTime":J
    const/16 v29, 0x0

    .line 3582
    .local v29, "isCharge":Z
    move-wide/from16 v30, v5

    .end local v5    # "time":J
    .local v30, "time":J
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v32, v7

    .end local v7    # "volume":J
    .local v32, "volume":J
    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Time"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3583
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .end local v30    # "time":J
    .restart local v5    # "time":J
    goto :goto_0

    .line 3582
    .end local v5    # "time":J
    .restart local v30    # "time":J
    :cond_0
    move-wide/from16 v5, v30

    .line 3585
    .end local v30    # "time":J
    .restart local v5    # "time":J
    :goto_0
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    move-wide/from16 v30, v9

    .end local v9    # "chargeTime":J
    .local v30, "chargeTime":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Charge"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3586
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .end local v30    # "chargeTime":J
    .restart local v9    # "chargeTime":J
    goto :goto_1

    .line 3585
    .end local v9    # "chargeTime":J
    .restart local v30    # "chargeTime":J
    :cond_1
    move-wide/from16 v9, v30

    .line 3588
    .end local v30    # "chargeTime":J
    .restart local v9    # "chargeTime":J
    :goto_1
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    move-wide/from16 v30, v11

    .end local v11    # "endBatRm":J
    .local v30, "endBatRm":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Volume"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3589
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    move-wide/from16 v32, v11

    .line 3591
    :cond_2
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "backlight"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3592
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 3594
    :cond_3
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "StartBatRm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3595
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 3597
    :cond_4
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "EndBatRm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3598
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .end local v30    # "endBatRm":J
    .restart local v11    # "endBatRm":J
    goto :goto_2

    .line 3597
    .end local v11    # "endBatRm":J
    .restart local v30    # "endBatRm":J
    :cond_5
    move-wide/from16 v11, v30

    .line 3600
    .end local v30    # "endBatRm":J
    .restart local v11    # "endBatRm":J
    :goto_2
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    move-wide/from16 v30, v13

    .end local v13    # "backlight":J
    .local v30, "backlight":J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "maxPhoneTemp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3601
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 3603
    :cond_6
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "maxBatTemp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 3604
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 3606
    :cond_7
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NetWifi"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3607
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 3609
    :cond_8
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "NetMobile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 3610
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 3612
    :cond_9
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "AutoBrightness"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 3613
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempMonitorAppMap:Ljava/util/Map;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 3616
    :cond_a
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_b

    .line 3617
    const/4 v7, 0x0

    return-object v7

    .line 3619
    :cond_b
    const-wide/16 v7, 0x64

    mul-long v13, v9, v7

    div-long/2addr v13, v5

    const-wide/16 v34, 0x50

    cmp-long v13, v13, v34

    const-string v14, "False"

    const-string v7, "True"

    const-string v8, "9999"

    const-wide/16 v38, 0x14

    const-string v0, "--Charge"

    move-object/from16 v40, v14

    const-string v14, "--Current"

    if-lez v13, :cond_c

    .line 3620
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v40

    move-wide/from16 v40, v2

    goto :goto_3

    .line 3622
    :cond_c
    const-wide/16 v36, 0x64

    mul-long v41, v9, v36

    div-long v41, v41, v5

    cmp-long v13, v41, v38

    if-gez v13, :cond_d

    .line 3623
    sub-long v41, v15, v11

    mul-long v41, v41, v2

    div-long v41, v41, v5

    .line 3624
    .local v41, "current":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3625
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, v40

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3626
    .end local v41    # "current":J
    move-wide/from16 v40, v2

    goto :goto_3

    .line 3627
    :cond_d
    move-object/from16 v13, v40

    move-wide/from16 v40, v2

    .end local v2    # "ONE_HOUR_MILLS":J
    .local v40, "ONE_HOUR_MILLS":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3630
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--Time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0xea60

    div-long v2, v5, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3631
    const-wide/16 v2, 0x64

    mul-long v42, v21, v2

    div-long v42, v42, v5

    cmp-long v0, v42, v34

    const-string v2, "--NetType"

    if-lez v0, :cond_e

    .line 3632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mobile"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3633
    :cond_e
    const-wide/16 v36, 0x64

    mul-long v42, v23, v36

    div-long v42, v42, v5

    cmp-long v0, v42, v34

    if-lez v0, :cond_f

    .line 3634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Wifi"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3635
    :cond_f
    const-wide/16 v36, 0x64

    mul-long v42, v25, v36

    div-long v42, v42, v5

    cmp-long v0, v42, v34

    if-lez v0, :cond_10

    .line 3636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "None"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 3638
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unkown"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3640
    :goto_4
    const-wide/16 v2, 0x64

    mul-long v42, v27, v2

    div-long v42, v42, v5

    cmp-long v0, v42, v34

    const-string v2, "--AutoBright"

    if-lez v0, :cond_11

    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3642
    :cond_11
    const-wide/16 v7, 0x64

    mul-long v7, v7, v27

    div-long/2addr v7, v5

    cmp-long v0, v7, v38

    if-gez v0, :cond_12

    .line 3643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 3645
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unkown"

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3647
    :goto_5
    div-long v32, v32, v5

    .line 3648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--Volume"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3649
    div-long v13, v30, v5

    .line 3650
    .end local v30    # "backlight":J
    .restart local v13    # "backlight":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--BackLight"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--MaxPhoneTemp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--MaxBatTemp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "--VerisonName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p2

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3654
    return-object v4
.end method

.method public static blacklist getNetWorkClass(I)B
    .locals 1
    .param p0, "mobieNetworkType"    # I

    .line 3723
    packed-switch p0, :pswitch_data_0

    .line 3746
    const/4 v0, 0x0

    return v0

    .line 3743
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 3740
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 3729
    :pswitch_2
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getStampThermalHeat(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3522
    .local p1, "mHeatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3523
    .local v0, "stampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3524
    .local v1, "allTime":I
    const/16 v2, 0x24

    .line 3525
    .local v2, "maxPhoneTemp":I
    const/16 v3, 0x24

    .line 3526
    .local v3, "maxBatTemp":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3527
    .local v4, "heatStr":Ljava/lang/StringBuilder;
    const-string v5, "key"

    const-string v6, "HeatMap"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3529
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3530
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 3534
    :cond_0
    goto :goto_1

    .line 3532
    :catch_0
    move-exception v5

    .line 3533
    .local v5, "exception":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 3535
    .end local v5    # "exception":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "phoneHeatMap"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v7, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "heatTime"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3537
    return-object v0
.end method

.method private blacklist getStampThermalTemp()Ljava/util/Map;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3384
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3385
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 3386
    .local v3, "stampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 3387
    .local v4, "allTime":I
    const/16 v5, 0x24

    .line 3388
    .local v5, "maxPhoneTemp":I
    const/16 v6, 0x24

    .line 3389
    .local v6, "maxBatTemp":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    .line 3390
    .local v7, "phonetempStr":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    .line 3393
    .local v8, "battempStr":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 3395
    .local v9, "stampHourtempStr":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .line 3396
    .local v10, "stampHourEnviTempStr":Ljava/lang/StringBuilder;
    const-string v0, "key"

    const-string v11, "TempMap"

    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3398
    const/16 v11, 0x7d0

    const-wide/32 v12, 0xea60

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v15, v0

    .line 3401
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3402
    goto :goto_0

    .line 3405
    :cond_0
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "maxPhoneTemp":I
    .end local v6    # "maxBatTemp":I
    .local v18, "maxPhoneTemp":I
    .local v19, "maxBatTemp":I
    :try_start_2
    div-long v5, v16, v12
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    long-to-int v5, v5

    .line 3406
    .local v5, "tmpValue":I
    const/4 v6, 0x0

    .line 3407
    .local v6, "tmpTemp":I
    add-int/2addr v4, v5

    .line 3408
    if-lez v5, :cond_1

    if-ge v5, v11, :cond_1

    .line 3411
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "phonetemp"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ":"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ";"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3412
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3416
    .end local v6    # "tmpTemp":I
    .local v0, "tmpTemp":I
    goto :goto_1

    .line 3413
    .end local v0    # "tmpTemp":I
    .restart local v6    # "tmpTemp":I
    :catch_0
    move-exception v0

    .line 3415
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3418
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "tmpValue":I
    .end local v6    # "tmpTemp":I
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    move/from16 v5, v18

    move/from16 v6, v19

    const/16 v11, 0x7d0

    goto :goto_0

    .line 3419
    :catch_1
    move-exception v0

    goto :goto_2

    .line 3421
    .end local v18    # "maxPhoneTemp":I
    .end local v19    # "maxBatTemp":I
    .local v5, "maxPhoneTemp":I
    .local v6, "maxBatTemp":I
    :cond_2
    move/from16 v18, v5

    move/from16 v19, v6

    .end local v5    # "maxPhoneTemp":I
    .end local v6    # "maxBatTemp":I
    .restart local v18    # "maxPhoneTemp":I
    .restart local v19    # "maxBatTemp":I
    goto :goto_3

    .line 3419
    .end local v18    # "maxPhoneTemp":I
    .end local v19    # "maxBatTemp":I
    .restart local v5    # "maxPhoneTemp":I
    .restart local v6    # "maxBatTemp":I
    :catch_2
    move-exception v0

    move/from16 v18, v5

    move/from16 v19, v6

    .line 3420
    .end local v5    # "maxPhoneTemp":I
    .end local v6    # "maxBatTemp":I
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "maxPhoneTemp":I
    .restart local v19    # "maxBatTemp":I
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3422
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_3
    const-string v0, "phoneTempMap"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3427
    :try_start_6
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v5, v18

    .end local v18    # "maxPhoneTemp":I
    .restart local v5    # "maxPhoneTemp":I
    :goto_4
    :try_start_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3428
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ";"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3429
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-le v11, v5, :cond_3

    .line 3430
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move v5, v11

    .line 3432
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    goto :goto_4

    .line 3433
    :cond_4
    const-string v0, "hourtempMap"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3436
    goto :goto_6

    .line 3434
    :catch_3
    move-exception v0

    goto :goto_5

    .end local v5    # "maxPhoneTemp":I
    .restart local v18    # "maxPhoneTemp":I
    :catch_4
    move-exception v0

    move/from16 v5, v18

    .line 3435
    .end local v18    # "maxPhoneTemp":I
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "maxPhoneTemp":I
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3437
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_6
    const/16 v6, 0xa

    .line 3438
    .local v6, "ten":I
    const-string v0, "maxPhoneTemp"

    div-int v11, v5, v6

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3439
    const/16 v11, -0x32

    .line 3441
    .local v11, "maxEviTemp":I
    :try_start_9
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 3442
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3443
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v12, v11, :cond_5

    .line 3444
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v11, v12

    .line 3446
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    const-wide/32 v12, 0xea60

    goto :goto_7

    .line 3447
    :cond_6
    const-string v0, "hourEnvitempMap"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3450
    goto :goto_8

    .line 3448
    :catch_5
    move-exception v0

    .line 3449
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3451
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_8
    const-string v0, "maxEnvitemp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3454
    :try_start_b
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_a
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v13, v19

    .end local v19    # "maxBatTemp":I
    .local v13, "maxBatTemp":I
    :goto_9
    :try_start_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v14, v0

    .line 3455
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move v15, v5

    move/from16 v21, v6

    const-wide/32 v19, 0xea60

    .end local v5    # "maxPhoneTemp":I
    .end local v6    # "ten":I
    .local v15, "maxPhoneTemp":I
    .local v21, "ten":I
    :try_start_d
    div-long v5, v17, v19
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    long-to-int v5, v5

    .line 3456
    .local v5, "tmpValue":I
    const/4 v6, 0x0

    .line 3457
    .local v6, "tmpTemp":I
    add-int/2addr v4, v5

    .line 3458
    if-lez v5, :cond_7

    move/from16 v17, v4

    const/16 v4, 0x7d0

    .end local v4    # "allTime":I
    .local v17, "allTime":I
    if-ge v5, v4, :cond_8

    .line 3460
    :try_start_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "battemp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 3462
    :try_start_f
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move v6, v0

    .line 3466
    goto :goto_a

    .line 3463
    :catch_6
    move-exception v0

    .line 3465
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 3467
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_a
    if-ge v13, v6, :cond_8

    .line 3468
    move v0, v6

    move v13, v0

    .end local v13    # "maxBatTemp":I
    .local v0, "maxBatTemp":I
    goto :goto_b

    .line 3472
    .end local v0    # "maxBatTemp":I
    .end local v5    # "tmpValue":I
    .end local v6    # "tmpTemp":I
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v13    # "maxBatTemp":I
    :catch_7
    move-exception v0

    move v6, v13

    move/from16 v4, v17

    goto :goto_c

    .line 3458
    .end local v17    # "allTime":I
    .restart local v4    # "allTime":I
    .restart local v5    # "tmpValue":I
    .restart local v6    # "tmpTemp":I
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_7
    move/from16 v17, v4

    .line 3471
    .end local v4    # "allTime":I
    .end local v5    # "tmpValue":I
    .end local v6    # "tmpTemp":I
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v17    # "allTime":I
    :cond_8
    :goto_b
    move v5, v15

    move/from16 v4, v17

    move/from16 v6, v21

    goto :goto_9

    .line 3472
    .end local v17    # "allTime":I
    .restart local v4    # "allTime":I
    :catch_8
    move-exception v0

    move v6, v13

    goto :goto_c

    .line 3474
    .end local v15    # "maxPhoneTemp":I
    .end local v21    # "ten":I
    .local v5, "maxPhoneTemp":I
    .local v6, "ten":I
    :cond_9
    move v15, v5

    move/from16 v21, v6

    .end local v5    # "maxPhoneTemp":I
    .end local v6    # "ten":I
    .restart local v15    # "maxPhoneTemp":I
    .restart local v21    # "ten":I
    goto :goto_d

    .line 3472
    .end local v15    # "maxPhoneTemp":I
    .end local v21    # "ten":I
    .restart local v5    # "maxPhoneTemp":I
    .restart local v6    # "ten":I
    :catch_9
    move-exception v0

    move v15, v5

    move/from16 v21, v6

    move v6, v13

    .end local v5    # "maxPhoneTemp":I
    .end local v6    # "ten":I
    .restart local v15    # "maxPhoneTemp":I
    .restart local v21    # "ten":I
    goto :goto_c

    .end local v13    # "maxBatTemp":I
    .end local v15    # "maxPhoneTemp":I
    .end local v21    # "ten":I
    .restart local v5    # "maxPhoneTemp":I
    .restart local v6    # "ten":I
    .restart local v19    # "maxBatTemp":I
    :catch_a
    move-exception v0

    move v15, v5

    move/from16 v21, v6

    move/from16 v6, v19

    .line 3473
    .end local v5    # "maxPhoneTemp":I
    .end local v19    # "maxBatTemp":I
    .local v0, "exception":Ljava/lang/NumberFormatException;
    .local v6, "maxBatTemp":I
    .restart local v15    # "maxPhoneTemp":I
    .restart local v21    # "ten":I
    :goto_c
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move v13, v6

    .line 3475
    .end local v0    # "exception":Ljava/lang/NumberFormatException;
    .end local v6    # "maxBatTemp":I
    .restart local v13    # "maxBatTemp":I
    :goto_d
    iget-object v0, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApk:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 3476
    invoke-direct {v1, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getAppInfoByName(Ljava/lang/String;)Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    move-result-object v0

    .line 3477
    .local v0, "currentinfo":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    if-eqz v0, :cond_b

    .line 3478
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    add-long v5, v5, v16

    move-object v12, v7

    move-object v14, v8

    .end local v7    # "phonetempStr":Ljava/lang/StringBuilder;
    .end local v8    # "battempStr":Ljava/lang/StringBuilder;
    .local v12, "phonetempStr":Ljava/lang/StringBuilder;
    .local v14, "battempStr":Ljava/lang/StringBuilder;
    iget-wide v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 3479
    iget v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v6, v6, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    if-ge v5, v6, :cond_a

    .line 3480
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v5, v5, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iput v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 3482
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mSTime:Ljava/lang/Long;

    goto :goto_e

    .line 3484
    .end local v12    # "phonetempStr":Ljava/lang/StringBuilder;
    .end local v14    # "battempStr":Ljava/lang/StringBuilder;
    .restart local v7    # "phonetempStr":Ljava/lang/StringBuilder;
    .restart local v8    # "battempStr":Ljava/lang/StringBuilder;
    :cond_b
    move-object v12, v7

    move-object v14, v8

    .end local v7    # "phonetempStr":Ljava/lang/StringBuilder;
    .end local v8    # "battempStr":Ljava/lang/StringBuilder;
    .restart local v12    # "phonetempStr":Ljava/lang/StringBuilder;
    .restart local v14    # "battempStr":Ljava/lang/StringBuilder;
    new-instance v5, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    invoke-direct {v5, v1}, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    move-object v0, v5

    .line 3485
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApk:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    .line 3486
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 3487
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v5, v5, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iput v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 3488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mSTime:Ljava/lang/Long;

    .line 3489
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3491
    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    sub-long/2addr v5, v7

    iput-wide v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastDaySuperFluousTime:J

    .line 3492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    .line 3493
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    iget-object v6, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_f

    .line 3475
    .end local v0    # "currentinfo":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    .end local v12    # "phonetempStr":Ljava/lang/StringBuilder;
    .end local v14    # "battempStr":Ljava/lang/StringBuilder;
    .restart local v7    # "phonetempStr":Ljava/lang/StringBuilder;
    .restart local v8    # "battempStr":Ljava/lang/StringBuilder;
    :cond_c
    move-object v12, v7

    move-object v14, v8

    .line 3495
    .end local v7    # "phonetempStr":Ljava/lang/StringBuilder;
    .end local v8    # "battempStr":Ljava/lang/StringBuilder;
    .restart local v12    # "phonetempStr":Ljava/lang/StringBuilder;
    .restart local v14    # "battempStr":Ljava/lang/StringBuilder;
    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3496
    .local v0, "top5Appinfo":Ljava/lang/StringBuilder;
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 3497
    iget-object v5, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 3498
    .local v5, "size":I
    const/4 v6, 0x4

    .line 3499
    .local v6, "maxAppNum":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_10
    if-ge v7, v5, :cond_e

    .line 3500
    iget-object v8, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    .line 3501
    .local v8, "info":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    move/from16 v16, v5

    .end local v5    # "size":I
    .local v16, "size":I
    iget-object v5, v8, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/android/internal/os/OplusThermalStatsHelper;->getAppNameByApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    .line 3502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->tostring()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    if-lt v7, v6, :cond_d

    .line 3504
    goto :goto_11

    .line 3499
    .end local v8    # "info":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    :cond_d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v5, v16

    goto :goto_10

    .end local v16    # "size":I
    .restart local v5    # "size":I
    :cond_e
    move/from16 v16, v5

    .line 3508
    .end local v5    # "size":I
    .end local v7    # "i":I
    .restart local v16    # "size":I
    :goto_11
    const-string v1, "TOP5APP"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3510
    const-string v1, "maxBatTemp"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    const-string v1, "tempTime"

    const-string v5, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v5, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    const/16 v1, 0xfa0

    .line 3513
    .local v1, "oneDayTimeLimmit":I
    if-le v4, v1, :cond_f

    .line 3514
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 3515
    monitor-exit v2

    return-object v3

    .line 3517
    :cond_f
    monitor-exit v2

    return-object v3

    .line 3518
    .end local v0    # "top5Appinfo":Ljava/lang/StringBuilder;
    .end local v1    # "oneDayTimeLimmit":I
    .end local v3    # "stampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "allTime":I
    .end local v6    # "maxAppNum":I
    .end local v9    # "stampHourtempStr":Ljava/lang/StringBuilder;
    .end local v10    # "stampHourEnviTempStr":Ljava/lang/StringBuilder;
    .end local v11    # "maxEviTemp":I
    .end local v12    # "phonetempStr":Ljava/lang/StringBuilder;
    .end local v13    # "maxBatTemp":I
    .end local v14    # "battempStr":Ljava/lang/StringBuilder;
    .end local v15    # "maxPhoneTemp":I
    .end local v16    # "size":I
    .end local v21    # "ten":I
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    throw v0
.end method

.method private blacklist getUploadChargeMap()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3332
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3333
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3335
    .local v1, "chargeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTempChargeUploadMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3336
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "chargeTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/32 v5, 0xea60

    if-eqz v4, :cond_0

    .line 3337
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3338
    .local v7, "chargeTime":J
    const-string v4, "chargeTime"

    div-long v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3339
    nop

    .end local v7    # "chargeTime":J
    goto/16 :goto_3

    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "startTime"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3340
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3341
    .local v4, "startTime":J
    const-string v6, "startTime"

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v7, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3342
    nop

    .end local v4    # "startTime":J
    goto/16 :goto_3

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "endTime"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3343
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3344
    .local v4, "endTime":J
    const-string v6, "endTime"

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-static {v7, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3345
    nop

    .end local v4    # "endTime":J
    goto/16 :goto_3

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "chargePlug"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3346
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 3347
    .local v4, "plug":I
    packed-switch v4, :pswitch_data_0

    .line 3362
    :pswitch_0
    const-string v5, "chargePlug"

    goto :goto_1

    .line 3359
    :pswitch_1
    const-string v5, "chargePlug"

    const-string v6, "wireless"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3360
    goto :goto_2

    .line 3356
    :pswitch_2
    const-string v5, "chargePlug"

    const-string v6, "usb"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3357
    goto :goto_2

    .line 3349
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFastCharger:Z

    if-eqz v5, :cond_3

    .line 3350
    const-string v5, "chargePlug"

    const-string v6, "ac_fast"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3352
    :cond_3
    const-string v5, "chargePlug"

    const-string v6, "ac_normal"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3354
    goto :goto_2

    .line 3362
    :goto_1
    const-string v6, "none"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3365
    .end local v4    # "plug":I
    :goto_2
    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "screenOnTime"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3366
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3367
    .local v7, "screenOnTime":J
    const-string v4, "screenOnTime"

    div-long v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3368
    nop

    .end local v7    # "screenOnTime":J
    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "f2nTime"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3369
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 3370
    .local v7, "f2nTime":J
    const-string v4, "f2nTime"

    div-long v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3371
    nop

    .end local v7    # "f2nTime":J
    goto :goto_3

    .line 3372
    :cond_6
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3374
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_3
    goto/16 :goto_0

    .line 3377
    :cond_7
    goto :goto_4

    .line 3375
    :catch_0
    move-exception v2

    .line 3376
    .local v2, "exception":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3378
    .end local v2    # "exception":Ljava/lang/NumberFormatException;
    :goto_4
    const-string v2, "chargeId"

    iget v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalChargeId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    monitor-exit v0

    return-object v1

    .line 3380
    .end local v1    # "chargeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist getUploadThermalTemp()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3241
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3242
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3245
    .local v1, "upLoadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3247
    .local v2, "uploadHourtempStr":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 3248
    .local v3, "allTime":I
    const/16 v4, 0x24

    .line 3249
    .local v4, "maxPhoneTemp":I
    const/16 v5, 0x24

    .line 3251
    .local v5, "maxBatTemp":I
    const/16 v6, 0x7d0

    const-wide/32 v7, 0xea60

    :try_start_1
    iget-object v9, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3252
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    div-long/2addr v11, v7

    long-to-int v11, v11

    .line 3253
    .local v11, "tmpValue":I
    const/4 v12, 0x0

    .line 3254
    .local v12, "tmpTemp":I
    add-int/2addr v3, v11

    .line 3255
    if-lez v11, :cond_0

    if-ge v11, v6, :cond_0

    .line 3256
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "phonetemp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3258
    :try_start_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v12, v13

    .line 3262
    goto :goto_1

    .line 3259
    :catch_0
    move-exception v13

    .line 3261
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 3263
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_1
    if-ge v4, v12, :cond_0

    .line 3264
    move v4, v12

    .line 3267
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "tmpValue":I
    .end local v12    # "tmpTemp":I
    :cond_0
    goto :goto_0

    .line 3268
    :cond_1
    const-string v9, "maxPhoneTemp"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3271
    goto :goto_2

    .line 3269
    :catch_1
    move-exception v9

    .line 3270
    .local v9, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3274
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :goto_2
    :try_start_5
    iget-object v9, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3275
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    div-long/2addr v11, v7

    long-to-int v11, v11

    .line 3276
    .restart local v11    # "tmpValue":I
    const/4 v12, 0x0

    .line 3277
    .restart local v12    # "tmpTemp":I
    add-int/2addr v3, v11

    .line 3278
    if-lez v11, :cond_2

    if-ge v11, v6, :cond_2

    .line 3279
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "battemp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v1, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3281
    :try_start_6
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v12, v13

    .line 3285
    goto :goto_4

    .line 3282
    :catch_2
    move-exception v13

    .line 3284
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 3286
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_4
    if-ge v5, v12, :cond_2

    .line 3287
    move v5, v12

    .line 3290
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v11    # "tmpValue":I
    .end local v12    # "tmpTemp":I
    :cond_2
    goto :goto_3

    .line 3291
    :cond_3
    const-string v6, "maxBatTemp"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 3294
    goto :goto_5

    .line 3292
    :catch_3
    move-exception v6

    .line 3293
    .local v6, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 3298
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_5
    :try_start_9
    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3299
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_6

    .line 3301
    :cond_4
    const-string v6, "hourtempMap"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3302
    const-string v6, "Upload hourtemp"

    const-string v7, "put hourtemp in upLoadMap"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 3305
    goto :goto_7

    .line 3303
    :catch_4
    move-exception v6

    .line 3304
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 3320
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :goto_7
    const/16 v6, 0xfa0

    if-le v3, v6, :cond_5

    .line 3321
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3322
    monitor-exit v0

    return-object v1

    .line 3324
    :cond_5
    const-string v6, "holdtimeThreshold"

    iget v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3325
    const-string v6, "moreHeatThreshold"

    iget v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMoreHeatThreshold:I

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3326
    const-string v6, "heatThreshold"

    iget v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3327
    const-string v6, "lessHeatThreshold"

    iget v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLessHeatThreshold:I

    div-int/lit8 v7, v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3328
    monitor-exit v0

    return-object v1

    .line 3329
    .end local v1    # "upLoadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "uploadHourtempStr":Ljava/lang/StringBuilder;
    .end local v3    # "allTime":I
    .end local v4    # "maxPhoneTemp":I
    .end local v5    # "maxBatTemp":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v1
.end method

.method private blacklist initUploadAlarm()V
    .locals 2

    .line 2987
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$4;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$4;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3038
    return-void
.end method

.method private blacklist readThermalBatteryInfo(ILandroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 1
    .param p1, "batteryLevelInt"    # I
    .param p2, "out"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 2329
    const/high16 v0, -0x2000000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0x19

    iput v0, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    .line 2330
    const v0, 0x1ff8000

    and-int/2addr v0, p1

    ushr-int/lit8 v0, v0, 0xf

    iput v0, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    .line 2331
    and-int/lit16 v0, p1, 0x7ffe

    ushr-int/lit8 v0, v0, 0x1

    iput v0, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    .line 2332
    return-void
.end method

.method private blacklist readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V
    .locals 4
    .param p1, "templong"    # J
    .param p3, "out"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 2335
    const/16 v0, 0x30

    shr-long v0, p1, v0

    const-wide/16 v2, 0xfff

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v0

    iput v0, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp3:I

    .line 2336
    const/16 v0, 0x24

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v0

    iput v0, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp2:I

    .line 2337
    const/16 v0, 0x18

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v0

    iput v0, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp1:I

    .line 2338
    const/16 v0, 0xc

    shr-long v0, p1, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v0

    iput v0, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 2339
    and-long v0, p1, v2

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v0

    iput v0, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    .line 2340
    return-void
.end method

.method private blacklist setThermalInfo(IIIIII)V
    .locals 24
    .param p1, "plug"    # I
    .param p2, "batTemp"    # I
    .param p3, "level"    # I
    .param p4, "batRm"    # I
    .param p5, "phoneTemp"    # I
    .param p6, "envitemp"    # I

    .line 1270
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    sget-boolean v4, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    const-string v5, "OplusThermalStats"

    if-eqz v4, :cond_0

    .line 1271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setThermalInfo plug:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  phoneTemp:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v6, p5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  batTemp:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  level:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  mThermalFeatureOn="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "  mHeatThreshold:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1270
    :cond_0
    move/from16 v6, p5

    .line 1273
    :goto_0
    iget-boolean v4, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v4, :cond_1

    .line 1274
    return-void

    .line 1276
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1277
    .local v7, "currentTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1278
    .local v9, "elapsedRealtime":J
    const/4 v4, 0x0

    .line 1279
    .local v4, "addBatInfo":Z
    const/4 v11, 0x0

    .line 1280
    .local v11, "addThermalRatio":Z
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-wide v12, v12, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-direct {v0, v7, v8, v12, v13}, Lcom/android/internal/os/OplusThermalStatsHelper;->checkCurrentTimeChanged(JJ)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1281
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1282
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1284
    :cond_2
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0xfa0

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1286
    :cond_3
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-wide v12, v12, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    sub-long v12, v7, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0xdbba0

    cmp-long v12, v12, v14

    const-wide/16 v13, 0x0

    if-lez v12, :cond_4

    .line 1287
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v15, 0x43

    invoke-virtual {v12, v15, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1289
    :cond_4
    iget-object v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoraeThermalHelper:Lcom/oplus/util/OplusHoraeThermalHelper;

    invoke-virtual {v12}, Lcom/oplus/util/OplusHoraeThermalHelper;->getThermalStatus()I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_5

    const/4 v12, 0x1

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    .line 1290
    .local v12, "isSupportHorae":Z
    :goto_1
    iget-boolean v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBatteryTemp:Z

    if-eqz v15, :cond_6

    if-nez v12, :cond_6

    .line 1291
    move/from16 v6, p2

    .line 1293
    .end local p5    # "phoneTemp":I
    .local v6, "phoneTemp":I
    :cond_6
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput v1, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    .line 1294
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput v2, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batTemp:I

    .line 1295
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput v3, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    .line 1296
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    move/from16 v13, p4

    iput v13, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batRm:I

    .line 1297
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput v6, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 1298
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    move/from16 v14, p6

    iput v14, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 1299
    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v15, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    move/from16 v18, v4

    .end local v4    # "addBatInfo":Z
    .local v18, "addBatInfo":Z
    const/16 v4, -0x3ff

    if-eq v15, v4, :cond_8

    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v15, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->chargePlug:I

    if-ne v15, v1, :cond_8

    iget-object v15, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v15, v15, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    sub-int/2addr v15, v6

    .line 1301
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v4, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatRecInterv:I

    if-gt v15, v4, :cond_8

    iget-object v4, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v4, v4, Landroid/os/BatteryStatsExtImpl$ThermalItem;->batPercent:I

    if-eq v4, v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, 0x1

    .line 1303
    .end local v18    # "addBatInfo":Z
    .restart local v4    # "addBatInfo":Z
    :goto_3
    move-wide/from16 v18, v7

    .end local v7    # "currentTime":J
    .local v18, "currentTime":J
    iget-wide v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioStartTime:J

    sub-long v7, v9, v7

    const-wide/32 v20, 0xea60

    cmp-long v7, v7, v20

    if-ltz v7, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    .line 1305
    .end local v11    # "addThermalRatio":Z
    .local v7, "addThermalRatio":Z
    :goto_4
    sget-boolean v8, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v8, :cond_a

    .line 1306
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addThermalRatio:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "  mHeatIncRatioStartTime:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v15, v12

    .end local v12    # "isSupportHorae":Z
    .local v15, "isSupportHorae":Z
    iget-wide v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioStartTime:J

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1305
    .end local v15    # "isSupportHorae":Z
    .restart local v12    # "isSupportHorae":Z
    :cond_a
    move v15, v12

    .line 1308
    .end local v12    # "isSupportHorae":Z
    .restart local v15    # "isSupportHorae":Z
    :goto_5
    if-eqz v7, :cond_e

    .line 1309
    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastPhoneTemp:I

    const/16 v11, -0x3ff

    if-eq v8, v11, :cond_b

    .line 1310
    iget-object v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    sub-int v8, v6, v8

    const v12, 0xea60

    mul-int/2addr v8, v12

    move/from16 p5, v7

    .end local v7    # "addThermalRatio":Z
    .local p5, "addThermalRatio":Z
    int-to-long v7, v8

    iget-wide v12, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioStartTime:J

    sub-long v12, v9, v12

    div-long/2addr v7, v12

    long-to-int v7, v7

    int-to-byte v7, v7

    iput-byte v7, v11, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    .line 1311
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x41

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6

    .line 1309
    .end local p5    # "addThermalRatio":Z
    .restart local v7    # "addThermalRatio":Z
    :cond_b
    move/from16 p5, v7

    .line 1313
    .end local v7    # "addThermalRatio":Z
    .restart local p5    # "addThermalRatio":Z
    :goto_6
    iput v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastPhoneTemp:I

    .line 1314
    iput-wide v9, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioStartTime:J

    .line 1315
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-byte v7, v7, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    const/4 v8, 0x4

    if-ge v7, v8, :cond_d

    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v7, v7, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPreHeatThreshold:I

    if-le v7, v8, :cond_c

    goto :goto_7

    :cond_c
    const-wide/16 v11, 0x0

    goto :goto_8

    .line 1317
    :cond_d
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "REPORT_UPDATE_CPU  ->  phoneTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v8, v8, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  preHeatThreshold:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPreHeatThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    const-wide/16 v11, 0x0

    invoke-virtual {v7, v11, v12}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->schedulerUpdateCpu(J)V

    goto :goto_8

    .line 1308
    .end local p5    # "addThermalRatio":Z
    .restart local v7    # "addThermalRatio":Z
    :cond_e
    move/from16 p5, v7

    const-wide/16 v11, 0x0

    .line 1322
    .end local v7    # "addThermalRatio":Z
    .restart local p5    # "addThermalRatio":Z
    :goto_8
    if-eqz v4, :cond_f

    .line 1323
    iget-object v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x42

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1326
    :cond_f
    iget v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    if-lt v6, v7, :cond_17

    const-wide/32 v7, 0x493e0

    cmp-long v7, v9, v7

    if-lez v7, :cond_17

    .line 1328
    sget-boolean v7, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v7, :cond_10

    .line 1329
    const-string v7, "thermal monitoring ..."

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_10
    iget v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    if-gez v7, :cond_11

    .line 1332
    const/4 v7, 0x0

    iput v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    goto :goto_9

    .line 1334
    :cond_11
    iget-wide v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatElapsedRealtime:J

    sub-long v20, v9, v11

    const-wide/32 v22, 0x1b7740

    cmp-long v8, v20, v22

    if-gez v8, :cond_12

    const-wide/16 v16, 0x0

    cmp-long v8, v11, v16

    if-lez v8, :cond_12

    .line 1335
    int-to-long v7, v7

    sub-long v11, v9, v11

    add-long/2addr v7, v11

    long-to-int v7, v7

    iput v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    .line 1338
    :cond_12
    :goto_9
    iput-wide v9, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatElapsedRealtime:J

    .line 1339
    sget-boolean v7, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v7, :cond_13

    .line 1340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mHoldHeatTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mStartAnalizyHeat="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  mHeatHoldUploadTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldUploadTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    :cond_13
    iget-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    if-nez v5, :cond_14

    iget-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeat:Z

    if-nez v5, :cond_14

    iget v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    iget v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldUploadTime:I

    if-le v5, v7, :cond_14

    .line 1343
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeat:Z

    .line 1344
    iput-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    .line 1345
    iput v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxPhoneTemp:I

    .line 1346
    iput v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxBatTemp:I

    .line 1347
    const-wide/32 v7, 0xafc80

    sub-long v7, v9, v7

    .line 1348
    .local v7, "analizyStart":J
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-virtual {v5}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->clear()V

    .line 1349
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1350
    .local v5, "msg":Landroid/os/Message;
    const/16 v11, 0x3b

    iput v11, v5, Landroid/os/Message;->what:I

    .line 1351
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1352
    iget-object v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget v11, v11, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mAnalizyPosition:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iput v11, v5, Landroid/os/Message;->arg1:I

    .line 1353
    iget-object v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iput v6, v11, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mPhoneTemp:I

    .line 1354
    iget-object v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iput v2, v11, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->mBatTemp:I

    .line 1355
    iget-object v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1357
    .end local v5    # "msg":Landroid/os/Message;
    .end local v7    # "analizyStart":J
    :cond_14
    iget v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxPhoneTemp:I

    if-ge v5, v6, :cond_15

    .line 1358
    iput v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxPhoneTemp:I

    .line 1360
    :cond_15
    iget v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxBatTemp:I

    if-ge v5, v2, :cond_16

    .line 1361
    iput v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxBatTemp:I

    .line 1363
    :cond_16
    iget-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeat:Z

    if-eqz v5, :cond_1d

    iget-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    if-nez v5, :cond_1d

    .line 1364
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxPhoneTemp:I

    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalMaxBatTemp:I

    invoke-virtual {v5, v7, v8}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->putHeatMaxTemp(II)V

    goto/16 :goto_a

    .line 1366
    :cond_17
    iget-wide v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatElapsedRealtime:J

    sub-long v7, v9, v7

    iget v11, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    int-to-long v11, v11

    cmp-long v7, v7, v11

    if-lez v7, :cond_19

    .line 1367
    sget-boolean v7, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v7, :cond_18

    .line 1368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneTemp monitor exit, phone temp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mHeatHoldTimeThreshold:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_18
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeat:Z

    .line 1371
    const/4 v7, -0x1

    iput v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    .line 1372
    const-wide/16 v7, 0x0

    iput-wide v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatElapsedRealtime:J

    .line 1373
    iput-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHaveCaptured:Z

    goto :goto_a

    .line 1375
    :cond_19
    sget-boolean v7, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v7, :cond_1a

    .line 1376
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneTemp is decreasing, phoneTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_1a
    iget-boolean v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeat:Z

    if-eqz v7, :cond_1c

    iget-boolean v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    if-nez v7, :cond_1c

    iget v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    if-lez v7, :cond_1c

    .line 1379
    sget-boolean v7, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v7, :cond_1b

    .line 1380
    const-string v7, "uploadHeatEvent now"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :cond_1b
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-virtual {v5}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->uploadHeatEvent()V

    .line 1384
    :cond_1c
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoldHeatTime:I

    .line 1386
    :cond_1d
    :goto_a
    return-void
.end method

.method private blacklist symbolInt(I)I
    .locals 2
    .param p1, "tempInt"    # I

    .line 3714
    const v0, 0x8000

    and-int v1, p1, v0

    if-ne v1, v0, :cond_0

    .line 3715
    const v0, 0xffff

    sub-int v0, p1, v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    .line 3716
    :cond_0
    and-int/lit16 v0, p1, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_1

    .line 3717
    add-int/lit16 v0, p1, -0xfff

    add-int/lit8 p1, v0, -0x1

    .line 3719
    :cond_1
    :goto_0
    return p1
.end method


# virtual methods
.method public blacklist addThermalAudioOnff(JJZ)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 2490
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2491
    return-void

    .line 2493
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2494
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2495
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2496
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2497
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2498
    return-void
.end method

.method public blacklist addThermalCameraOnff(JJZ)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 2479
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2480
    return-void

    .line 2482
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2483
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2484
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2485
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2486
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2487
    return-void
.end method

.method public blacklist addThermalConnectType(JJB)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "type"    # B

    .line 2468
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2469
    return-void

    .line 2471
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2472
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2473
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2474
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2475
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2476
    return-void
.end method

.method public blacklist addThermalDetalToStringBuilder(BZZ)V
    .locals 2
    .param p1, "info"    # B
    .param p2, "isAdd"    # Z
    .param p3, "isEnd"    # Z

    .line 1882
    if-eqz p2, :cond_1

    .line 1883
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1884
    if-eqz p3, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1887
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist addThermalDetalToStringBuilder(IZZ)V
    .locals 2
    .param p1, "info"    # I
    .param p2, "isAdd"    # Z
    .param p3, "isEnd"    # Z

    .line 1862
    if-eqz p2, :cond_1

    .line 1863
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1864
    if-eqz p3, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist addThermalDetalToStringBuilder(JZZ)V
    .locals 2
    .param p1, "info"    # J
    .param p3, "isAdd"    # Z
    .param p4, "isEnd"    # Z

    .line 1872
    if-eqz p3, :cond_1

    .line 1873
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1874
    if-eqz p4, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1877
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "isAdd"    # Z
    .param p3, "isEnd"    # Z

    .line 1892
    if-eqz p2, :cond_1

    .line 1893
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1894
    if-eqz p3, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist addThermalDetalToStringBuilder(ZZZ)V
    .locals 2
    .param p1, "info"    # Z
    .param p2, "isAdd"    # Z
    .param p3, "isEnd"    # Z

    .line 1902
    if-eqz p2, :cond_1

    .line 1903
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1904
    if-eqz p3, :cond_0

    .line 1905
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1907
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist addThermalFlashLightOnff(JJZ)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 2523
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2524
    return-void

    .line 2526
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2527
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2528
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2529
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2530
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2531
    return-void
.end method

.method public blacklist addThermalForegroundApp(JJLjava/lang/String;I)V
    .locals 6
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "proc"    # Ljava/lang/String;
    .param p6, "uid"    # I

    .line 2594
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2595
    return-void

    .line 2597
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const-string v0, "null"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2598
    :cond_2
    const-string v0, "0000"

    .line 2599
    .local v0, "versionName":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {p5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2600
    .local v1, "procString":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_4

    .line 2602
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPackageManger:Landroid/content/pm/PackageManager;

    aget-object v4, v1, v2

    const/4 v5, -0x2

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2603
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_3

    .line 2604
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 2608
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_0

    .line 2606
    :catch_0
    move-exception v3

    .line 2607
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting package info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v1, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OplusThermalStats"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object p5, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 2611
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object v0, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    .line 2612
    const/16 v2, 0x11

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2614
    .end local v0    # "versionName":Ljava/lang/String;
    .end local v1    # "procString":[Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public blacklist addThermalGpsOnff(JJZ)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 2512
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2513
    return-void

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2516
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2517
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2518
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2519
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2520
    return-void
.end method

.method public blacklist addThermalHistoryBufferLocked(BILandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V
    .locals 8
    .param p1, "cmd"    # B
    .param p2, "backlight"    # I
    .param p3, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p4, "isAdd"    # Z

    .line 1624
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1625
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mIteratingThermalHistory:Z

    if-eqz v1, :cond_0

    .line 1627
    monitor-exit v0

    return-void

    .line 1629
    :cond_0
    iput-byte p1, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 1630
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 1631
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 1632
    iput p2, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 1633
    if-eqz p1, :cond_1

    const/16 v1, 0x13

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-ne p1, v1, :cond_2

    .line 1634
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 1635
    iget-wide v1, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iput-wide v1, p3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    .line 1637
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBufferLastPos:I

    .line 1638
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v1, v2}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1639
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v1, p3}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1640
    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    move-object v2, p0

    move v3, p1

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalHistoryDelta(BLandroid/os/Parcel;Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 1641
    monitor-exit v0

    .line 1642
    return-void

    .line 1641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V
    .locals 10
    .param p1, "cmd"    # B
    .param p2, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p3, "isAdd"    # Z

    .line 1645
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mScreenBrightness:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1646
    .local v0, "backlight":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1647
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mIteratingThermalHistory:Z

    const/16 v3, 0x13

    if-eqz v2, :cond_1

    iget-byte v2, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    if-eq v2, v3, :cond_1

    .line 1649
    monitor-exit v1

    return-void

    .line 1651
    :cond_1
    iput-byte p1, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 1653
    iput v0, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 1654
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 1655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 1656
    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_2

    const/16 v2, 0x19

    if-ne p1, v2, :cond_3

    .line 1657
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 1658
    iget-wide v2, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iput-wide v2, p2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    .line 1660
    :cond_3
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBufferLastPos:I

    .line 1661
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v2, v3}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1662
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v2, p2}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1663
    iget-boolean v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadDcs:Z

    if-eqz v2, :cond_4

    .line 1664
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->collectThermalTempMap(Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1666
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStartAnalizyHeat:Z

    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 1667
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->addToHeatItem(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1669
    :cond_5
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->collectMoinitAppMap(Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1670
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->collectChargeMap(Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 1671
    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    iget-object v7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v8, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    move-object v4, p0

    move v5, p1

    move v9, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalHistoryDelta(BLandroid/os/Parcel;Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 1672
    monitor-exit v1

    .line 1673
    return-void

    .line 1672
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist addThermalJobProc(JJLjava/lang/String;)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "proc"    # Ljava/lang/String;

    .line 2574
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2575
    return-void

    .line 2577
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const-string v0, "null"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2578
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 2579
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2581
    :cond_3
    return-void
.end method

.method public blacklist addThermalNetState(JJZ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "netState"    # Z

    .line 2460
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2461
    return-void

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    .line 2464
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2465
    return-void
.end method

.method public blacklist addThermalOnOffEvent(IJJZ)V
    .locals 5
    .param p1, "eventType"    # I
    .param p2, "elapsedRealtime"    # J
    .param p4, "uptime"    # J
    .param p6, "on"    # Z

    .line 2558
    invoke-direct {p0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper;->eventTypeToMessageID(I)I

    move-result v0

    .line 2559
    .local v0, "messageId":I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 2560
    const-string v1, "OplusThermalStats"

    const-string v2, "addThermalOnOffEvent, unsupport event type!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    return-void

    .line 2563
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v1, :cond_1

    .line 2564
    return-void

    .line 2566
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2567
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 2568
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 2569
    iput p6, v1, Landroid/os/Message;->arg1:I

    .line 2570
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2571
    return-void
.end method

.method public blacklist addThermalPhoneOnOff(JJZ)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 2432
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2433
    return-void

    .line 2435
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    .line 2436
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2437
    return-void
.end method

.method public blacklist addThermalPhoneSignal(JJB)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "signal"    # B

    .line 2450
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2451
    return-void

    .line 2453
    :cond_0
    if-ltz p5, :cond_1

    const/4 v0, 0x4

    if-gt p5, v0, :cond_1

    .line 2454
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-byte p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    .line 2455
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2457
    :cond_1
    return-void
.end method

.method public blacklist addThermalPhoneState(JJB)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "state"    # B

    .line 2440
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2441
    return-void

    .line 2443
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-byte v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    if-eq p5, v0, :cond_1

    .line 2444
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-byte p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    .line 2445
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2447
    :cond_1
    return-void
.end method

.method public blacklist addThermalScreenBrightnessEvent(JJII)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "backlight"    # I
    .param p6, "delayTime"    # I

    .line 2382
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2383
    return-void

    .line 2385
    :cond_0
    if-gtz p6, :cond_1

    .line 2386
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalScreenBrightness(JJI)V

    goto :goto_0

    .line 2388
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalScreenBrightnessDelayed(JJII)V

    .line 2390
    :goto_0
    return-void
.end method

.method public blacklist addThermalVideoOnff(JJZ)V
    .locals 4
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "onOff"    # Z

    .line 2501
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2502
    return-void

    .line 2504
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x35

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2505
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2506
    .local v0, "msg":Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2507
    iput p5, v0, Landroid/os/Message;->arg1:I

    .line 2508
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2509
    return-void
.end method

.method public blacklist addThermalWifiRssi(JJI)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "wifiSignalStrengthBin"    # I

    .line 2422
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2423
    return-void

    .line 2425
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    if-eq v0, p5, :cond_1

    .line 2426
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 2427
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2429
    :cond_1
    return-void
.end method

.method public blacklist addThermalWifiStatus(JJI)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "status"    # I

    .line 2409
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2410
    return-void

    .line 2412
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 2413
    if-eqz p5, :cond_2

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    goto :goto_0

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getWifiSignalStrengthBin()I

    move-result v1

    iput v1, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    goto :goto_1

    .line 2414
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 2418
    :goto_1
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2419
    return-void
.end method

.method public blacklist addThermalnetSyncProc(JJLjava/lang/String;)V
    .locals 3
    .param p1, "elapsedRealtime"    # J
    .param p3, "uptime"    # J
    .param p5, "proc"    # Ljava/lang/String;

    .line 2584
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 2585
    return-void

    .line 2587
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    const-string v0, "null"

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2588
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object p5, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 2589
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2591
    :cond_3
    return-void
.end method

.method public blacklist backupThermalLogFile()V
    .locals 2

    .line 3106
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$8;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$8;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3118
    return-void
.end method

.method public blacklist backupThermalStatsFile()V
    .locals 2

    .line 3085
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$7;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$7;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3103
    return-void
.end method

.method public blacklist clearHistoryBuffer()V
    .locals 3

    .line 2369
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2370
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2371
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2372
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getHistoryBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2373
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBufferLastPos:I

    .line 2374
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    if-eqz v1, :cond_0

    .line 2375
    invoke-virtual {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->clear()V

    .line 2377
    :cond_0
    monitor-exit v0

    .line 2378
    return-void

    .line 2377
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist clearThermalAllHistory()V
    .locals 2

    .line 3064
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$6;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$6;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3082
    return-void
.end method

.method public blacklist clearThermalStatsBuffer()V
    .locals 3

    .line 2343
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2344
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2345
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataSize(I)V

    .line 2346
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->getHistoryBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataCapacity(I)V

    .line 2347
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalTempMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2348
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatTempMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2349
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2350
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCurrentForeApk:Ljava/lang/String;

    .line 2351
    iput-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastForeApk:Ljava/lang/String;

    .line 2352
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mEnviThermalHourMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2355
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHourMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 2362
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastWritten:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    if-eqz v1, :cond_0

    .line 2363
    invoke-virtual {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->clear()V

    .line 2365
    :cond_0
    monitor-exit v0

    .line 2366
    return-void

    .line 2365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dumpThemalHeatDetailLocked(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3121
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatReasonDetails:Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/OplusThermalStatsHelper$HeatReasonDetails;->dumpThemalHeatDetailLocked(Ljava/io/PrintWriter;)V

    .line 3122
    return-void
.end method

.method public blacklist dumpThermalConfig(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal config version is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/OplusThermalManager;->mConfigVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Horae is enabled? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/oplus/util/OplusHoraeThermalHelper;->getInstance()Lcom/oplus/util/OplusHoraeThermalHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->getCurrentThermal()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is use battery temp? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/OplusThermalManager;->mThermalBatteryTemp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal information source path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/OplusThermalManager;->mThermalHeatPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal information source path1 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/OplusThermalManager;->mThermalHeatPath1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal information source path2 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/OplusThermalManager;->mThermalHeatPath2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal information source path3 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/OplusThermalManager;->mThermalHeatPath3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    return-void
.end method

.method public blacklist finishIteratingThermalHistoryLocked()V
    .locals 2

    .line 3783
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3784
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mIteratingThermalHistory:Z

    .line 3785
    return-void
.end method

.method public blacklist getBatteryStatsReadyStatus()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryStatsReady:Z

    return v0
.end method

.method public blacklist getConnectyType()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mNetConnectType:I

    return v0
.end method

.method public blacklist getMonitorAppLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1480
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalMonitorApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1481
    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMonitorApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_0

    .line 1483
    :cond_0
    return-void
.end method

.method public blacklist getNextThermalHistoryLocked(Landroid/os/BatteryStatsExtImpl$ThermalItem;J)Z
    .locals 4
    .param p1, "out"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p2, "histStart"    # J

    .line 3790
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 3791
    .local v0, "pos":I
    if-nez v0, :cond_0

    .line 3792
    invoke-virtual {p1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->clear()V

    .line 3794
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 3795
    .local v1, "end":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 3796
    return v3

    .line 3799
    :cond_2
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStatsExtImpl$ThermalItem;J)V

    .line 3800
    return v2
.end method

.method public blacklist getPhoneTemp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3237
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3238
    return-void
.end method

.method public blacklist getScreenBrightness()I
    .locals 1

    .line 239
    iget v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mScreenBrightness:I

    return v0
.end method

.method public blacklist getThermalHistoryFromFile(Ljava/io/BufferedReader;Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;)Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .locals 21
    .param p1, "reader"    # Ljava/io/BufferedReader;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "printer"    # Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2629
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v0, 0x0

    .line 2630
    .local v0, "line":Ljava/lang/String;
    new-instance v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    move-object v10, v1

    .line 2631
    .local v10, "cur":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    new-instance v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-direct {v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;-><init>()V

    move-object v11, v1

    .line 2632
    .local v11, "last":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    .end local v0    # "line":Ljava/lang/String;
    .local v12, "line":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 2633
    const-string v0, " "

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2635
    .local v13, "tmp":[Ljava/lang/String;
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, v13, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v14, v1

    .line 2636
    .local v14, "tempInt":I
    and-int/lit16 v1, v14, 0x3fff

    iput v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 2637
    shr-int/lit8 v1, v14, 0xe

    and-int/lit16 v1, v1, 0x3ff

    iput v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    .line 2638
    shr-int/lit8 v1, v14, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 2639
    iget-byte v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    move v15, v1

    .line 2640
    .local v15, "cmd":B
    const/4 v1, 0x1

    aget-object v2, v13, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2641
    .local v2, "tempLong":J
    const/4 v4, 0x5

    shr-long v5, v2, v4

    iput-wide v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 2642
    const-wide/16 v5, 0x1f

    and-long/2addr v5, v2

    const/4 v0, 0x4

    shr-long/2addr v5, v0

    const-wide/16 v16, 0x1

    cmp-long v5, v5, v16

    if-nez v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    .line 2643
    const-wide/16 v5, 0xf

    and-long/2addr v5, v2

    const/16 v18, 0x3

    shr-long v5, v5, v18

    cmp-long v5, v5, v16

    if-nez v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    .line 2644
    const-wide/16 v5, 0x7

    and-long/2addr v5, v2

    const/4 v4, 0x2

    shr-long/2addr v5, v4

    cmp-long v5, v5, v16

    if-nez v5, :cond_2

    move v5, v1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    .line 2645
    const-wide/16 v5, 0x3

    and-long/2addr v5, v2

    shr-long/2addr v5, v1

    cmp-long v5, v5, v16

    if-nez v5, :cond_3

    move v5, v1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    .line 2646
    and-long v5, v2, v16

    cmp-long v5, v5, v16

    if-nez v5, :cond_4

    move v5, v1

    goto :goto_5

    :cond_4
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    .line 2647
    aget-object v5, v13, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    move-wide/from16 v16, v5

    .line 2648
    .end local v2    # "tempLong":J
    .local v16, "tempLong":J
    const/16 v2, 0x8

    shr-long v5, v16, v2

    iput-wide v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 2649
    const-wide/16 v5, 0x7f

    and-long v5, v16, v5

    long-to-int v3, v5

    iput v3, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 2650
    const-wide/16 v5, 0x80

    and-long v19, v16, v5

    cmp-long v3, v19, v5

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_6

    :cond_5
    const/4 v3, 0x0

    :goto_6
    iput-boolean v3, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    .line 2651
    if-nez v15, :cond_6

    .line 2652
    aget-object v1, v13, v18

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 2653
    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    goto/16 :goto_7

    .line 2654
    :cond_6
    if-ne v15, v1, :cond_7

    .line 2655
    aget-object v1, v13, v18

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2656
    .local v1, "batteryLevel":I
    invoke-direct {v7, v1, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalBatteryInfo(ILandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2657
    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2658
    .local v2, "thermalLevel":J
    invoke-direct {v7, v2, v3, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2659
    .end local v1    # "batteryLevel":I
    .end local v2    # "thermalLevel":J
    goto/16 :goto_7

    :cond_7
    if-ne v15, v4, :cond_8

    .line 2660
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2661
    .local v0, "thermalLevel":J
    invoke-direct {v7, v0, v1, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2662
    .end local v0    # "thermalLevel":J
    goto/16 :goto_7

    :cond_8
    const v1, 0xffff

    if-ne v15, v0, :cond_9

    .line 2663
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2664
    .local v0, "wifiInfoInt":I
    shr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v1

    invoke-direct {v7, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v2

    iput v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 2665
    and-int/2addr v1, v0

    invoke-direct {v7, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v1

    iput v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 2666
    .end local v0    # "wifiInfoInt":I
    goto/16 :goto_7

    :cond_9
    const/4 v3, 0x5

    if-ne v15, v3, :cond_a

    .line 2667
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    goto/16 :goto_7

    .line 2668
    :cond_a
    const/4 v3, 0x6

    if-ne v15, v3, :cond_b

    .line 2669
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    goto/16 :goto_7

    .line 2670
    :cond_b
    const/4 v4, 0x7

    if-ne v15, v4, :cond_c

    .line 2671
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    goto/16 :goto_7

    .line 2672
    :cond_c
    if-ne v15, v2, :cond_d

    .line 2673
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    goto/16 :goto_7

    .line 2674
    :cond_d
    const/16 v5, 0x9

    if-ne v15, v5, :cond_e

    .line 2675
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    goto/16 :goto_7

    .line 2676
    :cond_e
    const/16 v6, 0xa

    if-ne v15, v6, :cond_f

    .line 2677
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    goto/16 :goto_7

    .line 2678
    :cond_f
    const/16 v1, 0xb

    if-ne v15, v1, :cond_10

    .line 2679
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    goto/16 :goto_7

    .line 2680
    :cond_10
    const/16 v1, 0xc

    if-ne v15, v1, :cond_11

    .line 2681
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    goto/16 :goto_7

    .line 2682
    :cond_11
    const/16 v1, 0xd

    if-ne v15, v1, :cond_12

    .line 2683
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    goto/16 :goto_7

    .line 2684
    :cond_12
    const/16 v1, 0xe

    if-ne v15, v1, :cond_13

    .line 2685
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    goto/16 :goto_7

    .line 2686
    :cond_13
    const/16 v1, 0xf

    if-ne v15, v1, :cond_14

    .line 2687
    aget-object v0, v13, v18

    iput-object v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    goto/16 :goto_7

    .line 2688
    :cond_14
    const/16 v1, 0x10

    if-ne v15, v1, :cond_15

    .line 2689
    aget-object v0, v13, v18

    iput-object v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    goto/16 :goto_7

    .line 2690
    :cond_15
    const/16 v1, 0x11

    if-ne v15, v1, :cond_16

    .line 2691
    aget-object v1, v13, v18

    iput-object v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 2692
    aget-object v0, v13, v0

    iput-object v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    goto/16 :goto_7

    .line 2693
    :cond_16
    const/16 v1, 0x12

    if-ne v15, v1, :cond_17

    .line 2694
    aget-object v1, v13, v18

    iput-object v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 2695
    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    goto/16 :goto_7

    .line 2696
    :cond_17
    const/16 v1, 0x13

    if-ne v15, v1, :cond_18

    .line 2697
    aget-object v1, v13, v18

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 2698
    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    .line 2699
    const/4 v0, 0x5

    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2700
    .local v0, "batteryLevelInt":I
    invoke-direct {v7, v0, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalBatteryInfo(ILandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2701
    aget-object v1, v13, v3

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2702
    .local v5, "thermalLevelLong":J
    invoke-direct {v7, v5, v6, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2703
    aget-object v1, v13, v4

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    .line 2704
    aget-object v1, v13, v2

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    .line 2705
    const/16 v1, 0x9

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    .line 2706
    const/16 v1, 0xa

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    .line 2707
    const/16 v1, 0xb

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 2708
    const/16 v1, 0xc

    aget-object v1, v13, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2709
    .local v1, "wifiInfoInt":I
    shr-int/lit8 v2, v1, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-direct {v7, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v2

    iput v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 2710
    and-int v2, v1, v3

    invoke-direct {v7, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v2

    iput v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 2711
    const/16 v2, 0xd

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    .line 2712
    const/16 v2, 0xe

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    .line 2713
    const/16 v2, 0xf

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    .line 2714
    const/16 v2, 0x10

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    .line 2715
    const/16 v2, 0x11

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    iput-byte v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    .line 2721
    const/16 v2, 0x12

    aget-object v2, v13, v2

    iput-object v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 2722
    const/16 v2, 0x13

    aget-object v2, v13, v2

    iput-object v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 2723
    const/16 v2, 0x14

    aget-object v2, v13, v2

    iput-object v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 2724
    const/16 v2, 0x15

    aget-object v2, v13, v2

    iput-object v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    .line 2725
    const/16 v2, 0x16

    aget-object v2, v13, v2

    iput-object v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 2726
    const/16 v2, 0x17

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    .line 2727
    .end local v0    # "batteryLevelInt":I
    .end local v1    # "wifiInfoInt":I
    .end local v5    # "thermalLevelLong":J
    goto :goto_7

    :cond_18
    const/16 v1, 0x14

    if-ne v15, v1, :cond_19

    .line 2728
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    goto :goto_7

    .line 2729
    :cond_19
    const/16 v1, 0x15

    if-ne v15, v1, :cond_1a

    .line 2730
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    goto :goto_7

    .line 2731
    :cond_1a
    const/16 v1, 0x16

    if-ne v15, v1, :cond_1b

    .line 2732
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    goto :goto_7

    .line 2733
    :cond_1b
    const/16 v1, 0x17

    if-ne v15, v1, :cond_1c

    .line 2734
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    iput-byte v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    goto :goto_7

    .line 2735
    :cond_1c
    const/16 v1, 0x18

    if-ne v15, v1, :cond_1d

    .line 2736
    aget-object v0, v13, v18

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    goto :goto_7

    .line 2737
    :cond_1d
    const/16 v1, 0x19

    if-ne v15, v1, :cond_1e

    .line 2738
    aget-object v1, v13, v18

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 2739
    aget-object v0, v13, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v10, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 2746
    :cond_1e
    :goto_7
    if-eqz v8, :cond_1f

    if-eqz v9, :cond_1f

    .line 2747
    invoke-virtual {v9, v8, v10}, Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    goto :goto_8

    .line 2749
    :cond_1f
    iget-object v0, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v1, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v1}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2750
    iget-object v0, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0, v10}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->setTo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2751
    iget-object v3, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    iget-object v4, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v5, v7, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryLastLastRead:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move v2, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->writeThermalHistoryDelta(BLandroid/os/Parcel;Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2755
    .end local v14    # "tempInt":I
    .end local v15    # "cmd":B
    .end local v16    # "tempLong":J
    :goto_8
    goto :goto_9

    .line 2753
    :catch_0
    move-exception v0

    .line 2754
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 2756
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "tmp":[Ljava/lang/String;
    :goto_9
    move-object v0, v12

    goto/16 :goto_0

    .line 2757
    :cond_20
    return-object v10
.end method

.method public blacklist getThermalHistoryUsedSize()I
    .locals 1

    .line 3787
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    return v0
.end method

.method public blacklist notePhoneDataConnectionStateLocked(JJI)V
    .locals 7
    .param p1, "elapsedTime"    # J
    .param p3, "upTime"    # J
    .param p5, "dataType"    # I

    .line 3751
    invoke-virtual {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getConnectyType()I

    move-result v0

    if-nez v0, :cond_0

    .line 3752
    invoke-static {p5}, Lcom/android/internal/os/OplusThermalStatsHelper;->getNetWorkClass(I)B

    move-result v0

    .line 3753
    .local v0, "connectType":B
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-byte v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    if-eq v0, v1, :cond_0

    .line 3754
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalConnectType(JJB)V

    .line 3757
    .end local v0    # "connectType":B
    :cond_0
    return-void
.end method

.method public blacklist noteScreenBrightnessModeChangedLock(Z)V
    .locals 4
    .param p1, "isAuto"    # Z

    .line 3760
    iput-boolean p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalScreenBrightnessMode:Z

    .line 3761
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    .line 3762
    return-void

    .line 3764
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-boolean v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    if-eq p1, v0, :cond_2

    .line 3765
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-boolean p1, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    .line 3766
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3767
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3769
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3771
    :cond_2
    return-void
.end method

.method public blacklist onSystemReady(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 232
    const-string v0, "OplusThermalStats"

    const-string v1, "onSystemReady....."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    .line 234
    return-void
.end method

.method public blacklist printChargeMapLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1486
    if-eqz p1, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mChargeUploadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1488
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChargeUploadMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1492
    :cond_0
    return-void
.end method

.method public blacklist printThermalHeatThreshold(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery get heatthreshold mHeatThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    return-void
.end method

.method public blacklist printThermalUploadTemp(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1499
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getUploadThermalTemp()Ljava/util/Map;

    move-result-object v0

    .line 1500
    .local v0, "upLoadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1502
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1503
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadThermalTemp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1504
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 1505
    :catch_0
    move-exception v1

    .line 1506
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1507
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_0
    goto :goto_1

    .line 1509
    :cond_1
    const-string v1, "no upload message"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1511
    :goto_1
    return-void
.end method

.method public blacklist readThermalHistoryDelta(Landroid/os/Parcel;Landroid/os/BatteryStatsExtImpl$ThermalItem;J)V
    .locals 17
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p3, "histStart"    # J

    .line 2764
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2765
    .local v2, "tempInt":I
    and-int/lit16 v3, v2, 0x3fff

    iput v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    .line 2766
    shr-int/lit8 v3, v2, 0xe

    and-int/lit16 v3, v3, 0x3ff

    iput v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    .line 2767
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iput-byte v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 2768
    iget-byte v3, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 2769
    .local v3, "cmd":B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 2770
    .local v4, "tempLong":J
    const/4 v6, 0x5

    shr-long v7, v4, v6

    iput-wide v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    .line 2771
    const-wide/16 v7, 0x1f

    and-long/2addr v7, v4

    const/4 v9, 0x4

    shr-long/2addr v7, v9

    const-wide/16 v10, 0x1

    cmp-long v7, v7, v10

    const/4 v8, 0x0

    const/4 v12, 0x1

    if-nez v7, :cond_0

    move v7, v12

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iput-boolean v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    .line 2772
    const-wide/16 v13, 0xf

    and-long/2addr v13, v4

    const/4 v7, 0x3

    shr-long/2addr v13, v7

    cmp-long v7, v13, v10

    if-nez v7, :cond_1

    move v7, v12

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    iput-boolean v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    .line 2773
    const-wide/16 v13, 0x7

    and-long/2addr v13, v4

    const/4 v7, 0x2

    shr-long/2addr v13, v7

    cmp-long v13, v13, v10

    if-nez v13, :cond_2

    move v13, v12

    goto :goto_2

    :cond_2
    move v13, v8

    :goto_2
    iput-boolean v13, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    .line 2774
    const-wide/16 v13, 0x3

    and-long/2addr v13, v4

    shr-long/2addr v13, v12

    cmp-long v13, v13, v10

    if-nez v13, :cond_3

    move v13, v12

    goto :goto_3

    :cond_3
    move v13, v8

    :goto_3
    iput-boolean v13, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    .line 2775
    and-long v13, v4, v10

    cmp-long v10, v13, v10

    if-nez v10, :cond_4

    move v10, v12

    goto :goto_4

    :cond_4
    move v10, v8

    :goto_4
    iput-boolean v10, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    .line 2776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 2777
    const/16 v10, 0x8

    shr-long v13, v4, v10

    iput-wide v13, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    .line 2778
    const-wide/16 v13, 0x7f

    and-long/2addr v13, v4

    long-to-int v11, v13

    iput v11, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    .line 2779
    const-wide/16 v13, 0x80

    and-long v15, v4, v13

    cmp-long v11, v15, v13

    if-nez v11, :cond_5

    move v8, v12

    :cond_5
    iput-boolean v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    .line 2780
    if-nez v3, :cond_6

    .line 2781
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 2782
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    goto/16 :goto_5

    .line 2783
    :cond_6
    if-ne v3, v12, :cond_7

    .line 2784
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2785
    .local v6, "batteryLevel":I
    invoke-direct {v0, v6, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalBatteryInfo(ILandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2786
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 2787
    .local v7, "thermalLevel":J
    invoke-direct {v0, v7, v8, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2788
    .end local v6    # "batteryLevel":I
    .end local v7    # "thermalLevel":J
    goto/16 :goto_5

    :cond_7
    if-ne v3, v7, :cond_8

    .line 2789
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 2790
    .local v6, "thermalLevel":J
    invoke-direct {v0, v6, v7, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2791
    .end local v6    # "thermalLevel":J
    goto/16 :goto_5

    :cond_8
    const v7, 0xffff

    if-ne v3, v9, :cond_9

    .line 2792
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2793
    .local v6, "wifiInfoInt":I
    shr-int/lit8 v8, v6, 0x10

    and-int/2addr v8, v7

    invoke-direct {v0, v8}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v8

    iput v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 2794
    and-int/2addr v7, v6

    invoke-direct {v0, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v7

    iput v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 2795
    .end local v6    # "wifiInfoInt":I
    goto/16 :goto_5

    :cond_9
    if-ne v3, v6, :cond_a

    .line 2796
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    goto/16 :goto_5

    .line 2797
    :cond_a
    const/4 v6, 0x6

    if-ne v3, v6, :cond_b

    .line 2798
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    goto/16 :goto_5

    .line 2799
    :cond_b
    const/4 v6, 0x7

    if-ne v3, v6, :cond_c

    .line 2800
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    goto/16 :goto_5

    .line 2801
    :cond_c
    if-ne v3, v10, :cond_d

    .line 2802
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    goto/16 :goto_5

    .line 2803
    :cond_d
    const/16 v6, 0x9

    if-ne v3, v6, :cond_e

    .line 2804
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    goto/16 :goto_5

    .line 2805
    :cond_e
    const/16 v6, 0xa

    if-ne v3, v6, :cond_f

    .line 2806
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    goto/16 :goto_5

    .line 2807
    :cond_f
    const/16 v6, 0xb

    if-ne v3, v6, :cond_10

    .line 2808
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    goto/16 :goto_5

    .line 2809
    :cond_10
    const/16 v6, 0xc

    if-ne v3, v6, :cond_11

    .line 2810
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    goto/16 :goto_5

    .line 2811
    :cond_11
    const/16 v6, 0xd

    if-ne v3, v6, :cond_12

    .line 2812
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    goto/16 :goto_5

    .line 2813
    :cond_12
    const/16 v6, 0xe

    if-ne v3, v6, :cond_13

    .line 2814
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    iput-boolean v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    goto/16 :goto_5

    .line 2815
    :cond_13
    const/16 v6, 0xf

    if-ne v3, v6, :cond_14

    .line 2816
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    goto/16 :goto_5

    .line 2817
    :cond_14
    const/16 v6, 0x10

    if-ne v3, v6, :cond_15

    .line 2818
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    goto/16 :goto_5

    .line 2819
    :cond_15
    const/16 v6, 0x11

    if-ne v3, v6, :cond_16

    .line 2820
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 2821
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    goto/16 :goto_5

    .line 2822
    :cond_16
    const/16 v6, 0x12

    if-ne v3, v6, :cond_17

    .line 2823
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 2824
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    goto/16 :goto_5

    .line 2825
    :cond_17
    const/16 v6, 0x13

    if-ne v3, v6, :cond_18

    .line 2826
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 2827
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    .line 2828
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2829
    .local v6, "batteryLevelInt":I
    invoke-direct {v0, v6, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalBatteryInfo(ILandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2830
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 2831
    .local v8, "thermalLevelLong":J
    invoke-direct {v0, v8, v9, v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->readThermalTempInfo(JLandroid/os/BatteryStatsExtImpl$ThermalItem;)V

    .line 2832
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    iput-byte v10, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    .line 2833
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    iput-byte v10, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    .line 2834
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    iput-byte v10, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    .line 2835
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v10

    iput-byte v10, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    .line 2836
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    .line 2837
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 2838
    .local v10, "wifiInfoInt":I
    shr-int/lit8 v11, v10, 0x10

    and-int/2addr v11, v7

    invoke-direct {v0, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v11

    iput v11, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    .line 2839
    and-int/2addr v7, v10

    invoke-direct {v0, v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->symbolInt(I)I

    move-result v7

    iput v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    .line 2840
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    iput-boolean v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    .line 2841
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    iput-byte v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    .line 2842
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    iput-byte v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    .line 2843
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    iput-boolean v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    .line 2844
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v7

    iput-byte v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    .line 2850
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    .line 2851
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    .line 2852
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    .line 2853
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    .line 2854
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 2855
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    .line 2856
    .end local v6    # "batteryLevelInt":I
    .end local v8    # "thermalLevelLong":J
    .end local v10    # "wifiInfoInt":I
    goto :goto_5

    :cond_18
    const/16 v6, 0x14

    if-ne v3, v6, :cond_19

    .line 2857
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    goto :goto_5

    .line 2858
    :cond_19
    const/16 v6, 0x15

    if-ne v3, v6, :cond_1a

    .line 2859
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    goto :goto_5

    .line 2860
    :cond_1a
    const/16 v6, 0x16

    if-ne v3, v6, :cond_1b

    .line 2861
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    goto :goto_5

    .line 2862
    :cond_1b
    const/16 v6, 0x17

    if-ne v3, v6, :cond_1c

    .line 2863
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput-byte v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    goto :goto_5

    .line 2864
    :cond_1c
    const/16 v6, 0x18

    if-ne v3, v6, :cond_1d

    .line 2865
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    goto :goto_5

    .line 2866
    :cond_1d
    const/16 v6, 0x19

    if-ne v3, v6, :cond_1e

    .line 2867
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    .line 2868
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    .line 2870
    :cond_1e
    :goto_5
    return-void
.end method

.method public blacklist recordResumedApk(Ljava/lang/String;)V
    .locals 4
    .param p1, "apk"    # Ljava/lang/String;

    .line 4161
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApk:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    .line 4162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    sub-long/2addr v0, v2

    .line 4163
    .local v0, "activityFocusedTime":J
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApk:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->recordTop5ForeApk(JLjava/lang/String;)V

    .line 4164
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApk:Ljava/lang/String;

    .line 4165
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v2, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iput v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMaxApkTemp:I

    .line 4166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mResumedApkStartTime:J

    .line 4168
    .end local v0    # "activityFocusedTime":J
    :cond_0
    return-void
.end method

.method public blacklist recordTop5ForeApk(JLjava/lang/String;)V
    .locals 7
    .param p1, "activityFocusedTime"    # J
    .param p3, "apk"    # Ljava/lang/String;

    .line 4172
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4173
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    .line 4174
    .local v1, "cur":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    iget-wide v2, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    iget-wide v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    sub-long/2addr v2, v4

    iget-wide v4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    add-long/2addr v2, v4

    .line 4175
    .local v2, "currentTime":J
    if-nez p3, :cond_0

    .line 4176
    monitor-exit v0

    return-void

    .line 4178
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/os/OplusThermalStatsHelper;->getAppInfoByName(Ljava/lang/String;)Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    move-result-object v4

    .line 4179
    .local v4, "curAppInfo":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    if-nez v4, :cond_1

    .line 4180
    new-instance v5, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;

    invoke-direct {v5, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    move-object v4, v5

    .line 4181
    iput-object p3, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    .line 4182
    iget v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMaxApkTemp:I

    iput v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 4183
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mSTime:Ljava/lang/Long;

    .line 4184
    iget-wide v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastDaySuperFluousTime:J

    sub-long v5, p1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 4185
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLastDaySuperFluousTime:J

    .line 4186
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4188
    :cond_1
    iget v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    iget v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMaxApkTemp:I

    if-ge v5, v6, :cond_2

    .line 4189
    iput v6, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 4191
    :cond_2
    iget-object v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 4192
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mSTime:Ljava/lang/Long;

    .line 4194
    :goto_0
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTop5AppInfo:Ljava/util/List;

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4195
    .end local v1    # "cur":Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .end local v2    # "currentTime":J
    .end local v4    # "curAppInfo":Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
    monitor-exit v0

    .line 4230
    return-void

    .line 4195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist resetThermalHistory()V
    .locals 3

    .line 1452
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/16 v1, 0x13

    iput-byte v1, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 1453
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 1454
    return-void
.end method

.method public blacklist setBatteryStatsReady(Z)V
    .locals 0
    .param p1, "ready"    # Z

    .line 226
    iput-boolean p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryStatsReady:Z

    .line 227
    return-void
.end method

.method public blacklist setConnectyType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 242
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mNetConnectType:I

    .line 243
    return-void
.end method

.method public blacklist setHeatBetweenTime(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "time"    # I

    .line 1470
    iput p2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery set heatBetweenTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1472
    return-void
.end method

.method public blacklist setMonitorAppLimitTime(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "limitTime"    # I

    .line 1475
    iput p2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppLimitTime:I

    .line 1476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery set setMonitorAppLimitTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    return-void
.end method

.method public blacklist setScreenBrightness(I)V
    .locals 0
    .param p1, "value"    # I

    .line 236
    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mScreenBrightness:I

    .line 237
    return-void
.end method

.method public blacklist setThermalConfig()V
    .locals 4

    .line 1398
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalFeatureOn:Z

    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-eq v0, v1, :cond_3

    .line 1399
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalFeatureOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1400
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {v0}, Landroid/os/BatteryStatsExtImpl$ThermalItem;->clear()V

    .line 1401
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-byte v1, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 1402
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 1403
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalFeatureOn:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    .line 1404
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalUploadDcs:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadDcs:Z

    .line 1405
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalUploadLog:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadLog:Z

    .line 1406
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalCaptureLog:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalCaptureLog:Z

    .line 1407
    sget-boolean v0, Landroid/os/OplusThermalManager;->mRecordThermalHistory:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mRecordThermalHistory:Z

    .line 1408
    sget v0, Landroid/os/OplusThermalManager;->mThermalCaptureLogThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalCaptureLogThreshold:I

    .line 1409
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalUploadErrLog:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadErrLog:Z

    .line 1410
    sget v0, Landroid/os/OplusThermalManager;->mMonitorAppLimitTime:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppLimitTime:I

    .line 1411
    sget v0, Landroid/os/OplusThermalManager;->mHeatHoldTimeThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    .line 1412
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalBatteryTemp:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBatteryTemp:Z

    .line 1413
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalMonitorApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1414
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalMonitorApp:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/OplusThermalManager;->mMonitorAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1415
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1416
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1419
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1420
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1422
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1424
    :cond_2
    sget-boolean v0, Landroid/os/OplusThermalManager;->mThermalFeatureOn:Z

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    .line 1425
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadDcs:Z

    .line 1426
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadLog:Z

    .line 1427
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalCaptureLog:Z

    .line 1428
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mRecordThermalHistory:Z

    .line 1429
    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadErrLog:Z

    .line 1430
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalMonitorApp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1431
    invoke-virtual {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->clearThermalStatsBuffer()V

    .line 1432
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->cancleUploadAlarm()V

    .line 1435
    :cond_3
    :goto_0
    sget v0, Landroid/os/OplusThermalManager;->mMoreHeatThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMoreHeatThreshold:I

    .line 1436
    sget v0, Landroid/os/OplusThermalManager;->mHeatThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    .line 1437
    sget v0, Landroid/os/OplusThermalManager;->mLessHeatThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLessHeatThreshold:I

    .line 1438
    sget v0, Landroid/os/OplusThermalManager;->mPreHeatThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPreHeatThreshold:I

    .line 1439
    sget v0, Landroid/os/OplusThermalManager;->mHeatIncRatioThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatIncRatioThreshold:I

    .line 1440
    sget v0, Landroid/os/OplusThermalManager;->mHeatHoldTimeThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldTimeThreshold:I

    .line 1441
    sget v0, Landroid/os/OplusThermalManager;->mHeatHoldUploadTime:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatHoldUploadTime:I

    .line 1442
    sget v0, Landroid/os/OplusThermalManager;->mHeatRecInterv:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatRecInterv:I

    .line 1443
    sget v0, Landroid/os/OplusThermalManager;->mCpuLoadRecThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuLoadRecThreshold:I

    .line 1444
    sget v0, Landroid/os/OplusThermalManager;->mCpuLoadRecInterv:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuLoadRecInterv:I

    .line 1445
    sget v0, Landroid/os/OplusThermalManager;->mTopCpuRecThreshold:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTopCpuRecThreshold:I

    .line 1446
    sget v0, Landroid/os/OplusThermalManager;->mTopCpuRecInterv:I

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTopCpuRecInterv:I

    .line 1447
    sget v0, Landroid/os/OplusThermalManager;->mHeatTopProInterval:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCaptureCpuFeqInterVal:J

    .line 1448
    sget v0, Landroid/os/OplusThermalManager;->mHeatTopProInterval:I

    int-to-long v0, v0

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProInterVal:J

    .line 1449
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

    .line 1524
    sget-boolean v0, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    const-string v1, "OplusThermalStats"

    if-eqz v0, :cond_0

    .line 1525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThermalCpuLoading: mThermalFeatureOn"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " load1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " load5:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " load15:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cpuLoading:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " maxCpu:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cpuProc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  phoneTemp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v2, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  simpleTopProc:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v0, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    .line 1529
    .local v0, "currentPhoneTemp":I
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v2, v2, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    iget v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPreHeatThreshold:I

    add-int/lit8 v3, v3, -0x14

    if-lt v2, v3, :cond_1

    .line 1530
    sget-boolean v2, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v2, :cond_1

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SimpleTopProcesses: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_1
    iput-object p7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProcesses:Ljava/lang/String;

    .line 1536
    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mPreHeatThreshold:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHaveCaptured:Z

    if-nez v4, :cond_4

    .line 1537
    iput-object p7, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProcessesNeedUpload:Ljava/lang/String;

    .line 1538
    sget-boolean v2, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v2, :cond_2

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSimpleTopProcessesNeedUpload: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mSimpleTopProcessesNeedUpload:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->cpuFreqReader:Lcom/android/internal/os/OplusCpuFreqReader;

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCaptureCpuFeqElapsRealtime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCaptureCpuFeqInterVal:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 1542
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCaptureCpuFeqElapsRealtime:J

    .line 1543
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->cpuFreqReader:Lcom/android/internal/os/OplusCpuFreqReader;

    invoke-virtual {v2}, Lcom/android/internal/os/OplusCpuFreqReader;->getSimpleCpuFreqInfor()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuFreqValues:Ljava/lang/String;

    .line 1544
    if-eqz v2, :cond_3

    .line 1545
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1547
    .local v4, "lastSampleTime":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuFreqValues:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuFreqValues:Ljava/lang/String;

    .line 1548
    iput-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuFreqValuesNeedUpload:Ljava/lang/String;

    .line 1549
    sget-boolean v5, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v5, :cond_3

    .line 1550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpuFreqs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mCpuFreqValues:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v4    # "lastSampleTime":Ljava/lang/String;
    :cond_3
    iput-boolean v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHaveCaptured:Z

    goto :goto_0

    .line 1555
    :cond_4
    if-ge v0, v2, :cond_6

    .line 1556
    sget-boolean v2, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v2, :cond_5

    .line 1557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset mHaveCaptured:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHaveCaptured:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHaveCaptured:Z

    .line 1561
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v1, :cond_7

    .line 1562
    return-void

    .line 1564
    :cond_7
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput p4, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    .line 1565
    invoke-direct {p0, p2, p3}, Lcom/android/internal/os/OplusThermalStatsHelper;->calculateEnviTemp(II)V

    .line 1566
    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTopCpuRecThreshold:I

    if-gt p5, v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    sub-int v1, p5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mTopCpuRecInterv:I

    if-gt v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    if-eqz v1, :cond_9

    if-eqz p6, :cond_9

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iget-object v1, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 1567
    invoke-virtual {v1, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1568
    :cond_8
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput p5, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    .line 1569
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    iput-object p6, v1, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    .line 1570
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 1572
    :cond_9
    return-void
.end method

.method public blacklist setThermalHeatThreshold(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "threshold"    # I

    .line 1457
    iput p2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHeatThreshold:I

    .line 1458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery set heatthreshold mHeatThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

.method public blacklist setThermalInfoInternal(Landroid/content/Context;IIIIIIIIIIIIIIIIZI)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "plugType"    # I
    .param p5, "level"    # I
    .param p6, "temp"    # I
    .param p7, "volt"    # I
    .param p8, "chargeUAh"    # I
    .param p9, "chargeFullUAh"    # I
    .param p10, "fcc"    # I
    .param p11, "batteryRm"    # I
    .param p12, "thermalHeat"    # I
    .param p13, "thermalHeat1"    # I
    .param p14, "thermalHeat2"    # I
    .param p15, "thermalHeat3"    # I
    .param p16, "mFast2Normal"    # I
    .param p17, "mChargeIdVoltage"    # I
    .param p18, "fastCharge"    # Z
    .param p19, "batteryCurrent"    # I

    .line 1254
    move-object v0, p0

    move v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p18

    move/from16 v5, p19

    sget-boolean v6, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v6, :cond_0

    .line 1255
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setThermalInfo batteryVoltage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " batteryCurrent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " batteryTemp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " plugType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fastCharge:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OplusThermalStats"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_0
    iput v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatTemp:I

    .line 1258
    move/from16 v6, p10

    iput v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryFcc:I

    .line 1259
    move/from16 v7, p17

    iput v7, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalChargeId:I

    .line 1260
    move/from16 v8, p16

    iput v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFast2Normal:I

    .line 1261
    iput-boolean v4, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFastCharger:Z

    .line 1262
    iput v1, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalPlugType:I

    .line 1263
    move/from16 v9, p11

    iput v9, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryRealtimeCapacity:I

    .line 1264
    iput v3, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryVoltage:I

    .line 1265
    iput v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryCurrent:I

    .line 1267
    return-void
.end method

.method public blacklist setThermalState(Landroid/os/OplusThermalState;)V
    .locals 11
    .param p1, "thermalState"    # Landroid/os/OplusThermalState;

    .line 1229
    sget-boolean v0, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v0, :cond_0

    .line 1230
    const-string v0, "OplusThermalStats"

    const-string v1, "setThermalState"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    :cond_0
    if-nez p1, :cond_1

    .line 1234
    return-void

    .line 1236
    :cond_1
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getPlugType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalPlugType:I

    .line 1237
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getFcc()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryFcc:I

    .line 1238
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getChargeId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalChargeId:I

    .line 1239
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getFast2Normal()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFast2Normal:I

    .line 1240
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getIsFastCharge()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalFastCharger:Z

    .line 1241
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getBatteryRm()I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryRealtimeCapacity:I

    .line 1243
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoraeThermalHelper:Lcom/oplus/util/OplusHoraeThermalHelper;

    invoke-virtual {v0}, Lcom/oplus/util/OplusHoraeThermalHelper;->getCurrentThermal()F

    move-result v0

    float-to-int v0, v0

    .line 1244
    .local v0, "thermalHeat":I
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getBatteryTemperature()I

    move-result v8

    .line 1245
    .local v8, "batteryTemp":I
    invoke-virtual {p1}, Landroid/os/OplusThermalState;->getBatteryLevel()I

    move-result v9

    .line 1246
    .local v9, "batteryLevel":I
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHoraeThermalHelper:Lcom/oplus/util/OplusHoraeThermalHelper;

    invoke-virtual {v1}, Lcom/oplus/util/OplusHoraeThermalHelper;->getAmbientThermal()I

    move-result v10

    .line 1247
    .local v10, "envitemp":I
    iget v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalPlugType:I

    iget v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mGlobalBatteryRealtimeCapacity:I

    mul-int/lit8 v6, v0, 0xa

    move-object v1, p0

    move v3, v8

    move v4, v9

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/os/OplusThermalStatsHelper;->setThermalInfo(IIIIII)V

    .line 1249
    return-void
.end method

.method public blacklist startAnalyzeBatteryStats()V
    .locals 2

    .line 3901
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$9;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$9;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3911
    return-void
.end method

.method public blacklist startIteratingThermalHistoryLocked()Z
    .locals 2

    .line 3774
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3775
    return v1

    .line 3777
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3778
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mIteratingThermalHistory:Z

    .line 3779
    return v0
.end method

.method public blacklist startUploadChargeMap()V
    .locals 2

    .line 2933
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$3;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$3;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2939
    return-void
.end method

.method public blacklist startUploadMonitorApp()V
    .locals 2

    .line 2924
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$2;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$2;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2930
    return-void
.end method

.method public blacklist startUploadTemp()V
    .locals 2

    .line 2875
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/OplusThermalStatsHelper$1;

    invoke-direct {v1, p0}, Lcom/android/internal/os/OplusThermalStatsHelper$1;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2922
    return-void
.end method

.method public blacklist toggleThermalDebugSwith(Ljava/io/PrintWriter;I)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "on"    # I

    .line 1462
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1463
    sput-boolean v0, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    goto :goto_0

    .line 1465
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    .line 1467
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Battery set debug switch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method public blacklist uploadChargeMap()V
    .locals 7

    .line 3219
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mChargeUploadMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3220
    return-void

    .line 3223
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3224
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mChargeUploadMap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusThermalStats"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mChargeUploadMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 3228
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 3229
    iget-object v5, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mChargeUploadMap:Ljava/util/Map;

    const/4 v6, 0x0

    const-string v2, "20139"

    const-string v3, "20139"

    const-string v4, "id_charge_map"

    invoke-static/range {v1 .. v6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 3234
    :cond_2
    return-void
.end method

.method public blacklist uploadMonitorApp()V
    .locals 9

    .line 3150
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3151
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 3152
    monitor-exit v0

    return-void

    .line 3154
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3155
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "OplusThermalStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadMonitorApp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 3157
    :cond_1
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 3158
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 3159
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 3160
    .local v1, "encodedMonitorAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mMonitorAppMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->enCoderMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 3161
    .end local v1    # "encodedMonitorAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v7, "encodedMonitorAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    const-string v4, "20139"

    const-string v5, "20139"

    const-string v6, "id_thermal_monitor_app"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 3166
    .end local v7    # "encodedMonitorAppMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    monitor-exit v0

    .line 3167
    return-void

    .line 3166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist uploadThermalTemp()V
    .locals 9

    .line 3125
    iget-boolean v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalUploadDcs:Z

    if-eqz v0, :cond_3

    .line 3126
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getUploadThermalTemp()Ljava/util/Map;

    move-result-object v0

    .line 3128
    .local v0, "upLoadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v7, ":"

    const-string v8, "OplusThermalStats"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3129
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uploadThermalTemp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3130
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 3132
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3133
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 3134
    const/4 v6, 0x0

    const-string v2, "20139"

    const-string v3, "20139"

    const-string v4, "id_thermal_temp"

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 3137
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/os/OplusThermalStatsHelper;->getStampThermalTemp()Ljava/util/Map;

    move-result-object v1

    .line 3139
    .local v1, "stampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3140
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadStampTemp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 3143
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3144
    const-string v2, "040201"

    invoke-static {v2, v1}, Landroid/os/OplusManager;->onStamp(Ljava/lang/String;Ljava/util/Map;)V

    .line 3148
    .end local v0    # "upLoadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "stampMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public blacklist writeThermalHistoryDelta(BLandroid/os/Parcel;Landroid/os/BatteryStatsExtImpl$ThermalItem;Landroid/os/BatteryStatsExtImpl$ThermalItem;Z)V
    .locals 16
    .param p1, "cmd"    # B
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "cur"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p4, "last"    # Landroid/os/BatteryStatsExtImpl$ThermalItem;
    .param p5, "isAdd"    # Z

    .line 1676
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    sget-boolean v5, Lcom/android/internal/os/OplusThermalStatsHelper;->DEBUG_THERMAL_TEMP:Z

    if-eqz v5, :cond_0

    .line 1677
    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    if-eqz v5, :cond_0

    .line 1678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mThermalBuilder size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mThermalHistoryBuffer size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v6}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mRecordThermalHistory="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mRecordThermalHistory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OplusThermalStats"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_0
    iget-boolean v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mRecordThermalHistory:Z

    if-eqz v5, :cond_24

    iget-object v5, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 1683
    :cond_1
    const/high16 v5, -0x1000000

    const v6, 0xffc000

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/16 v11, 0x18

    const/16 v12, 0xe

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz p4, :cond_22

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 1699
    :cond_2
    iget v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneTemp:I

    const/16 v13, -0x3ff

    if-ne v7, v13, :cond_3

    .line 1700
    return-void

    .line 1702
    :cond_3
    iget v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    and-int/lit16 v7, v7, 0x3fff

    iget v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    shl-int/2addr v13, v12

    and-int/2addr v6, v13

    or-int/2addr v6, v7

    iget-byte v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    shl-int/2addr v7, v11

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    .line 1703
    .local v5, "tempInt":I
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1704
    invoke-virtual {v0, v5, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1705
    iget-wide v6, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    shl-long/2addr v6, v10

    iget-boolean v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    shl-int/2addr v13, v9

    int-to-long v11, v13

    or-long/2addr v6, v11

    iget-boolean v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    shl-int/2addr v11, v8

    int-to-long v11, v11

    or-long/2addr v6, v11

    .line 1706
    iget-boolean v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    shl-int/lit8 v11, v11, 0x2

    int-to-long v11, v11

    or-long/2addr v6, v11

    iget-boolean v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    shl-int/2addr v11, v14

    int-to-long v11, v11

    or-long/2addr v6, v11

    iget-boolean v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    int-to-long v11, v11

    or-long/2addr v6, v11

    .line 1707
    .local v6, "tempLong":J
    invoke-virtual {v2, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1708
    invoke-virtual {v0, v6, v7, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1709
    iget-wide v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    const/16 v13, 0x8

    shl-long/2addr v11, v13

    iget v13, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    and-int/lit8 v13, v13, 0x7f

    int-to-long v9, v13

    or-long/2addr v9, v11

    iget-boolean v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    if-eqz v11, :cond_4

    const/16 v11, 0x80

    goto :goto_0

    :cond_4
    move v11, v15

    :goto_0
    int-to-long v11, v11

    or-long/2addr v9, v11

    invoke-virtual {v2, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 1710
    iget-wide v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    const/16 v11, 0x8

    shl-long/2addr v9, v11

    iget v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    and-int/lit8 v11, v11, 0x7f

    int-to-long v11, v11

    or-long/2addr v9, v11

    iget-boolean v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    if-eqz v11, :cond_5

    const/16 v11, 0x80

    goto :goto_1

    :cond_5
    move v11, v15

    :goto_1
    int-to-long v11, v11

    or-long/2addr v9, v11

    invoke-virtual {v0, v9, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1711
    if-nez v1, :cond_6

    goto/16 :goto_2

    .line 1713
    :cond_6
    if-ne v1, v14, :cond_7

    .line 1714
    invoke-direct {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->buildThermalBatteryInfo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)I

    move-result v8

    .line 1715
    .local v8, "batInfo":I
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1716
    invoke-virtual {v0, v8, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1717
    invoke-direct {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->buildThermalTempInfo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)J

    move-result-wide v9

    .line 1718
    .local v9, "thermalInfo":J
    invoke-virtual {v2, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 1719
    invoke-virtual {v0, v9, v10, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1720
    .end local v8    # "batInfo":I
    .end local v9    # "thermalInfo":J
    goto/16 :goto_2

    :cond_7
    const-string v9, ""

    if-ne v1, v8, :cond_8

    .line 1721
    invoke-virtual {v0, v9, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 1722
    :cond_8
    const v8, 0xffff

    const/high16 v10, -0x10000

    const/16 v11, 0x10

    const/4 v12, 0x4

    if-ne v1, v12, :cond_9

    .line 1723
    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    shl-int/2addr v9, v11

    and-int/2addr v9, v10

    iget v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    and-int/2addr v8, v10

    or-int/2addr v8, v9

    .line 1724
    .local v8, "wifiInfo":I
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1726
    .end local v8    # "wifiInfo":I
    goto/16 :goto_2

    :cond_9
    const/4 v12, 0x5

    if-ne v1, v12, :cond_a

    .line 1727
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1728
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1729
    :cond_a
    const/4 v12, 0x6

    if-ne v1, v12, :cond_b

    .line 1730
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1731
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto/16 :goto_2

    .line 1732
    :cond_b
    const/4 v12, 0x7

    if-ne v1, v12, :cond_c

    .line 1733
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1734
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto/16 :goto_2

    .line 1735
    :cond_c
    const/16 v12, 0x8

    if-ne v1, v12, :cond_d

    .line 1736
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1737
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1738
    :cond_d
    const/16 v12, 0x9

    if-ne v1, v12, :cond_e

    .line 1739
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1740
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto/16 :goto_2

    .line 1741
    :cond_e
    const/16 v12, 0xa

    if-ne v1, v12, :cond_f

    .line 1742
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1743
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1744
    :cond_f
    const/16 v12, 0xb

    if-ne v1, v12, :cond_10

    .line 1745
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1746
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1747
    :cond_10
    const/16 v12, 0xc

    if-ne v1, v12, :cond_11

    .line 1748
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1749
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1750
    :cond_11
    const/16 v12, 0xd

    if-ne v1, v12, :cond_12

    .line 1751
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1752
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1753
    :cond_12
    const/16 v12, 0xe

    if-ne v1, v12, :cond_13

    .line 1754
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1755
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    goto/16 :goto_2

    .line 1756
    :cond_13
    const/16 v12, 0xf

    if-ne v1, v12, :cond_14

    .line 1757
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1758
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 1759
    :cond_14
    if-ne v1, v11, :cond_15

    .line 1760
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1761
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 1762
    :cond_15
    const/16 v12, 0x11

    if-ne v1, v12, :cond_16

    .line 1763
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1764
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v0, v8, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1765
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1766
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    goto/16 :goto_2

    .line 1767
    :cond_16
    const/16 v12, 0x12

    if-ne v1, v12, :cond_17

    .line 1768
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1769
    iget-object v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-virtual {v0, v8, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1770
    iget v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    iget v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    invoke-virtual {v0, v8, v4, v14}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    goto/16 :goto_2

    .line 1772
    :cond_17
    const/16 v12, 0x13

    if-ne v1, v12, :cond_18

    .line 1773
    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {v2, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 1774
    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {v0, v12, v13, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1775
    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    invoke-virtual {v2, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 1776
    iget-wide v12, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    invoke-virtual {v0, v12, v13, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1777
    invoke-direct {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->buildThermalBatteryInfo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)I

    move-result v9

    .line 1778
    .local v9, "batInfo":I
    invoke-virtual {v2, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    invoke-virtual {v0, v9, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1780
    invoke-direct {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->buildThermalTempInfo(Landroid/os/BatteryStatsExtImpl$ThermalItem;)J

    move-result-wide v12

    .line 1781
    .local v12, "thermalInfo":J
    invoke-virtual {v2, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 1782
    invoke-virtual {v0, v12, v13, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1783
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeByte(B)V

    .line 1784
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    invoke-virtual {v0, v14, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1785
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeByte(B)V

    .line 1786
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    invoke-virtual {v0, v14, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1787
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeByte(B)V

    .line 1788
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    invoke-virtual {v0, v14, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1789
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeByte(B)V

    .line 1790
    iget-byte v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    invoke-virtual {v0, v14, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1791
    iget v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    invoke-virtual {v2, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 1792
    iget v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    invoke-virtual {v0, v14, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1793
    iget v14, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiStats:I

    shl-int/lit8 v11, v14, 0x10

    and-int/2addr v10, v11

    iget v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->wifiSignal:I

    and-int/2addr v8, v11

    or-int/2addr v8, v10

    .line 1794
    .restart local v8    # "wifiInfo":I
    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1795
    invoke-virtual {v0, v8, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1796
    iget-boolean v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1797
    iget-boolean v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneOnff:Z

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    .line 1798
    iget-byte v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1799
    iget-byte v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneState:B

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1800
    iget-byte v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1801
    iget-byte v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->phoneSignal:B

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1802
    iget-boolean v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1803
    iget-boolean v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->dataNetStatus:Z

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(ZZZ)V

    .line 1804
    iget-byte v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeByte(B)V

    .line 1805
    iget-byte v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->connectNetType:B

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    .line 1816
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1817
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->jobSchedule:Ljava/lang/String;

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1818
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1819
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->netSync:Ljava/lang/String;

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1820
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1821
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->foreProc:Ljava/lang/String;

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1822
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1823
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1824
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1825
    iget-object v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topProc:Ljava/lang/String;

    invoke-virtual {v0, v10, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1826
    iget v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    invoke-virtual {v2, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 1827
    iget v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->topCpu:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v4, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1828
    .end local v8    # "wifiInfo":I
    .end local v9    # "batInfo":I
    .end local v12    # "thermalInfo":J
    goto/16 :goto_2

    :cond_18
    move v11, v14

    const/16 v8, 0x14

    if-ne v1, v8, :cond_19

    .line 1829
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1830
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio:B

    invoke-virtual {v0, v8, v4, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto :goto_2

    .line 1831
    :cond_19
    const/16 v8, 0x15

    if-ne v1, v8, :cond_1a

    .line 1832
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1833
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio1:B

    invoke-virtual {v0, v8, v4, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto :goto_2

    .line 1834
    :cond_1a
    const/16 v8, 0x16

    if-ne v1, v8, :cond_1b

    .line 1835
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1836
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio2:B

    invoke-virtual {v0, v8, v4, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto :goto_2

    .line 1837
    :cond_1b
    const/16 v8, 0x17

    if-ne v1, v8, :cond_1c

    .line 1838
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeByte(B)V

    .line 1839
    iget-byte v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->thermalRatio3:B

    invoke-virtual {v0, v8, v4, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(BZZ)V

    goto :goto_2

    .line 1840
    :cond_1c
    const/16 v8, 0x18

    if-ne v1, v8, :cond_1d

    .line 1841
    iget v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    invoke-virtual {v2, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1842
    iget v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->enviTemp:I

    invoke-virtual {v0, v8, v4, v11}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    goto :goto_2

    .line 1843
    :cond_1d
    const/16 v8, 0x19

    if-ne v1, v8, :cond_1e

    .line 1844
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {v2, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1845
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {v0, v8, v9, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1846
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    invoke-virtual {v2, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1847
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v9, v4, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    goto :goto_2

    .line 1848
    :cond_1e
    const/4 v10, 0x1

    const/16 v8, 0x1a

    if-ne v1, v8, :cond_1f

    .line 1849
    invoke-virtual {v0, v9, v4, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(Ljava/lang/String;ZZ)V

    .line 1851
    :cond_1f
    :goto_2
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    if-eqz v8, :cond_21

    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    if-eqz v8, :cond_21

    .line 1852
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/high16 v9, 0x10000

    if-ge v8, v9, :cond_20

    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryBuffer:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataSize()I

    move-result v8

    const/high16 v9, 0x20000

    if-lt v8, v9, :cond_21

    .line 1854
    :cond_20
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x40

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_21

    .line 1855
    iget-object v8, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1859
    :cond_21
    return-void

    .line 1684
    .end local v5    # "tempInt":I
    .end local v6    # "tempLong":J
    :cond_22
    :goto_3
    iget v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->backlight:I

    and-int/lit16 v7, v7, 0x3fff

    iget v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cpuLoading:I

    const/16 v10, 0xe

    shl-int/2addr v9, v10

    and-int/2addr v6, v9

    or-int/2addr v6, v7

    iget-byte v7, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    const/16 v9, 0x18

    shl-int/2addr v7, v9

    and-int/2addr v5, v7

    or-int/2addr v5, v6

    .line 1685
    .restart local v5    # "tempInt":I
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1686
    invoke-virtual {v0, v5, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(IZZ)V

    .line 1687
    iget-wide v6, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->elapsedRealtime:J

    const/4 v9, 0x5

    shl-long/2addr v6, v9

    iget-boolean v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cameraOn:Z

    const/4 v10, 0x4

    shl-int/2addr v9, v10

    int-to-long v9, v9

    or-long/2addr v6, v9

    iget-boolean v9, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->audioOn:Z

    shl-int/lit8 v8, v9, 0x3

    int-to-long v8, v8

    or-long/2addr v6, v8

    .line 1688
    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->videoOn:Z

    shl-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->gpsOn:Z

    const/4 v9, 0x1

    shl-int/2addr v8, v9

    int-to-long v8, v8

    or-long/2addr v6, v8

    iget-boolean v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->flashlightOn:Z

    int-to-long v8, v8

    or-long/2addr v6, v8

    .line 1689
    .restart local v6    # "tempLong":J
    invoke-virtual {v2, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 1690
    invoke-virtual {v0, v6, v7, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1691
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    const/16 v10, 0x8

    shl-long/2addr v8, v10

    iget v11, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    or-long/2addr v8, v11

    invoke-virtual {v2, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1692
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->upTime:J

    shl-long/2addr v8, v10

    iget v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->volume:I

    and-int/lit8 v10, v10, 0x7f

    int-to-long v10, v10

    or-long/2addr v8, v10

    iget-boolean v10, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->isAutoBrightness:Z

    if-eqz v10, :cond_23

    const/16 v10, 0x80

    goto :goto_4

    :cond_23
    move v10, v15

    :goto_4
    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-virtual {v0, v8, v9, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1693
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {v2, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1694
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->currentTime:J

    invoke-virtual {v0, v8, v9, v4, v15}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1695
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    invoke-virtual {v2, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    .line 1696
    iget-wide v8, v3, Landroid/os/BatteryStatsExtImpl$ThermalItem;->baseElapsedRealtime:J

    const/4 v10, 0x1

    invoke-virtual {v0, v8, v9, v4, v10}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalDetalToStringBuilder(JZZ)V

    .line 1697
    return-void

    .line 1681
    .end local v5    # "tempInt":I
    .end local v6    # "tempLong":J
    :cond_24
    :goto_5
    return-void
.end method

.method public blacklist writeThermalRecFile()V
    .locals 6

    .line 2968
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2969
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mIteratingThermalHistory:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2973
    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalRecFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2974
    .local v1, "stream":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2975
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 2976
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 2977
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 2978
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 2979
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2982
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_0

    .line 2980
    :catch_0
    move-exception v1

    .line 2981
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "BatteryStats"

    const-string v3, "Error writing thermal record file battery statistics"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2983
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 2984
    return-void

    .line 2970
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    .line 2983
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
