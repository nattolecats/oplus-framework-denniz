.class public Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;
.super Ljava/lang/Object;
.source "OplusMirrorBatteryStatsImpl.java"


# static fields
.field public static whitelist MSG_REPORT_CPU_UPDATE_NEEDED:Lcom/oplus/reflect/RefInt;

.field public static whitelist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static whitelist getHistoryTotalSize:Lcom/oplus/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist getLowDischargeAmountSinceCharge:Lcom/oplus/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist getProcessStatsLocked:Lcom/oplus/reflect/RefMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            I,
            Ljava/lang/String;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefMethod<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mBatteryStatsImplExt:Lcom/oplus/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefObject<",
            "Lcom/android/internal/os/IBatteryStatsImplExt;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mCallback:Lcom/oplus/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefObject<",
            "Lcom/android/internal/os/BatteryStatsImpl$BatteryCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mCheckinFile:Lcom/oplus/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefObject<",
            "Landroid/util/AtomicFile;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mClock:Lcom/oplus/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefObject<",
            "Lcom/android/internal/os/Clock;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mConstants:Lcom/oplus/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefObject<",
            "Lcom/android/internal/os/BatteryStatsImpl$Constants;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mHandler:Lcom/oplus/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefObject<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist mScreenState:Lcom/oplus/reflect/RefInt;

.field public static whitelist mWifiSignalStrengthBin:Lcom/oplus/reflect/RefInt;

.field public static whitelist startAddingCpuLocked:Lcom/oplus/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static whitelist writeSummaryToParcel:Lcom/oplus/reflect/RefMethod;
    .annotation runtime Lcom/oplus/reflect/MethodParams;
        value = {
            Landroid/os/Parcel;,
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;

    const-class v1, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0, v1}, Lcom/oplus/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
