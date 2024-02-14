.class public Landroid/os/OplusThermalManager;
.super Ljava/lang/Object;
.source "OplusThermalManager.java"


# static fields
.field public static final whitelist EXTRA_BATTERY_PHONETEMP:Ljava/lang/String; = "phoneTemp"

.field public static whitelist mConfigVersion:I

.field public static whitelist mCpuLoadRecInterv:I

.field public static whitelist mCpuLoadRecThreshold:I

.field public static whitelist mDetectEnvironmentTempThreshold:I

.field public static whitelist mDetectEnvironmentTimeThreshold:J

.field public static whitelist mHeat1Align:I

.field public static whitelist mHeat2Align:I

.field public static whitelist mHeat3Align:I

.field public static whitelist mHeatAlign:I

.field public static whitelist mHeatCaptureCpuFreqInterval:I

.field public static whitelist mHeatHoldTimeThreshold:I

.field public static whitelist mHeatHoldUploadTime:I

.field public static whitelist mHeatIncRatioThreshold:I

.field public static whitelist mHeatRecInterv:I

.field public static whitelist mHeatThreshold:I

.field public static whitelist mHeatTopProCounts:I

.field public static whitelist mHeatTopProFeatureOn:Z

.field public static whitelist mHeatTopProInterval:I

.field public static whitelist mLessHeatThreshold:I

.field public static whitelist mMonitorAppLimitTime:I

.field public static whitelist mMonitorAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mMoreHeatThreshold:I

.field public static whitelist mPreHeatDexOatThreshold:I

.field public static whitelist mPreHeatThreshold:I

.field public static whitelist mRecordThermalHistory:Z

.field public static whitelist mThermalBatteryTemp:Z

.field public static whitelist mThermalCaptureLog:Z

.field public static whitelist mThermalCaptureLogThreshold:I

.field public static whitelist mThermalFeatureOn:Z

.field public static whitelist mThermalHeatPath:Ljava/lang/String;

.field public static whitelist mThermalHeatPath1:Ljava/lang/String;

.field public static whitelist mThermalHeatPath2:Ljava/lang/String;

.field public static whitelist mThermalHeatPath3:Ljava/lang/String;

.field public static whitelist mThermalUploadDcs:Z

.field public static whitelist mThermalUploadErrLog:Z

.field public static whitelist mThermalUploadLog:Z

.field public static whitelist mTopCpuRecInterv:I

.field public static whitelist mTopCpuRecThreshold:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 30
    const v0, 0x7848b282

    sput v0, Landroid/os/OplusThermalManager;->mConfigVersion:I

    .line 31
    const-string v0, "/sys/class/thermal/thermal_zone5/temp"

    sput-object v0, Landroid/os/OplusThermalManager;->mThermalHeatPath:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Landroid/os/OplusThermalManager;->mThermalHeatPath1:Ljava/lang/String;

    .line 33
    const-string v1, "/sys/class/power_supply/battery/temp"

    sput-object v1, Landroid/os/OplusThermalManager;->mThermalHeatPath2:Ljava/lang/String;

    .line 34
    sput-object v0, Landroid/os/OplusThermalManager;->mThermalHeatPath3:Ljava/lang/String;

    .line 35
    const/16 v0, 0x64

    sput v0, Landroid/os/OplusThermalManager;->mHeatAlign:I

    .line 36
    sput v0, Landroid/os/OplusThermalManager;->mHeat1Align:I

    .line 37
    const/4 v1, 0x1

    sput v1, Landroid/os/OplusThermalManager;->mHeat2Align:I

    .line 38
    sput v0, Landroid/os/OplusThermalManager;->mHeat3Align:I

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/OplusThermalManager;->mThermalFeatureOn:Z

    .line 40
    sput-boolean v1, Landroid/os/OplusThermalManager;->mThermalUploadDcs:Z

    .line 41
    sput-boolean v0, Landroid/os/OplusThermalManager;->mThermalUploadLog:Z

    .line 42
    sput-boolean v0, Landroid/os/OplusThermalManager;->mThermalCaptureLog:Z

    .line 43
    sput-boolean v0, Landroid/os/OplusThermalManager;->mRecordThermalHistory:Z

    .line 44
    const/16 v2, 0x190

    sput v2, Landroid/os/OplusThermalManager;->mThermalCaptureLogThreshold:I

    .line 45
    sput-boolean v0, Landroid/os/OplusThermalManager;->mThermalUploadErrLog:Z

    .line 46
    sput-boolean v1, Landroid/os/OplusThermalManager;->mThermalBatteryTemp:Z

    .line 47
    const/4 v0, 0x2

    sput v0, Landroid/os/OplusThermalManager;->mHeatRecInterv:I

    .line 48
    const/16 v0, 0xc8

    sput v0, Landroid/os/OplusThermalManager;->mCpuLoadRecThreshold:I

    .line 49
    const/16 v0, 0x32

    sput v0, Landroid/os/OplusThermalManager;->mCpuLoadRecInterv:I

    .line 50
    sput v0, Landroid/os/OplusThermalManager;->mTopCpuRecThreshold:I

    .line 51
    const/16 v0, 0x14

    sput v0, Landroid/os/OplusThermalManager;->mTopCpuRecInterv:I

    .line 52
    const/16 v0, 0x1ea

    sput v0, Landroid/os/OplusThermalManager;->mMoreHeatThreshold:I

    .line 53
    const/16 v0, 0x1b8

    sput v0, Landroid/os/OplusThermalManager;->mHeatThreshold:I

    .line 54
    const/16 v0, 0x19a

    sput v0, Landroid/os/OplusThermalManager;->mLessHeatThreshold:I

    .line 55
    sput v2, Landroid/os/OplusThermalManager;->mPreHeatThreshold:I

    .line 56
    sput v1, Landroid/os/OplusThermalManager;->mHeatIncRatioThreshold:I

    .line 57
    const/16 v0, 0x1e

    sput v0, Landroid/os/OplusThermalManager;->mHeatHoldTimeThreshold:I

    .line 58
    const v2, 0x9c40

    sput v2, Landroid/os/OplusThermalManager;->mHeatHoldUploadTime:I

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Landroid/os/OplusThermalManager;->mMonitorAppList:Ljava/util/ArrayList;

    .line 60
    const v2, 0x249f00

    sput v2, Landroid/os/OplusThermalManager;->mMonitorAppLimitTime:I

    .line 61
    const/16 v2, 0x78

    sput v2, Landroid/os/OplusThermalManager;->mHeatTopProInterval:I

    .line 62
    sput-boolean v1, Landroid/os/OplusThermalManager;->mHeatTopProFeatureOn:Z

    .line 63
    sput v2, Landroid/os/OplusThermalManager;->mHeatCaptureCpuFreqInterval:I

    .line 64
    const/4 v1, 0x5

    sput v1, Landroid/os/OplusThermalManager;->mHeatTopProCounts:I

    .line 65
    const/16 v1, 0x1ae

    sput v1, Landroid/os/OplusThermalManager;->mPreHeatDexOatThreshold:I

    .line 66
    const-wide/32 v1, 0x927c0

    sput-wide v1, Landroid/os/OplusThermalManager;->mDetectEnvironmentTimeThreshold:J

    .line 67
    sput v0, Landroid/os/OplusThermalManager;->mDetectEnvironmentTempThreshold:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
