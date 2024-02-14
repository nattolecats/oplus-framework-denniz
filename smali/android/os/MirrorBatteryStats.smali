.class public Landroid/os/MirrorBatteryStats;
.super Ljava/lang/Object;
.source "MirrorBatteryStats.java"


# static fields
.field public static blacklist TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static blacklist dumpDailyLevelStepSummary:Lcom/oplus/internal/reflect/RefMethod;
    .annotation runtime Lcom/oplus/internal/reflect/MethodName;
        params = {
            Ljava/io/PrintWriter;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Landroid/os/BatteryStats$LevelStepTracker;,
            Ljava/lang/StringBuilder;,
            [I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist dumpDurationSteps:Lcom/oplus/internal/reflect/RefMethod;
    .annotation runtime Lcom/oplus/internal/reflect/MethodName;
        params = {
            Ljava/io/PrintWriter;,
            Ljava/lang/String;,
            Ljava/lang/String;,
            Landroid/os/BatteryStats$LevelStepTracker;,
            Z
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist mBatteryStatsExt:Lcom/oplus/internal/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/internal/reflect/RefObject<",
            "Landroid/os/IBatteryStatsExt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 26
    const-class v0, Landroid/os/MirrorBatteryStats;

    const-class v1, Landroid/os/BatteryStats;

    invoke-static {v0, v1}, Lcom/oplus/internal/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroid/os/MirrorBatteryStats;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
