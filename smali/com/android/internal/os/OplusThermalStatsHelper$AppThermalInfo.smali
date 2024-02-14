.class Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppThermalInfo"
.end annotation


# static fields
.field private static final blacklist INIT_TEMP:I = -0x3ff


# instance fields
.field protected blacklist mApk:Ljava/lang/String;

.field protected blacklist mDuration:Ljava/lang/Long;

.field protected blacklist mETime:Ljava/lang/Long;

.field protected blacklist mSTime:Ljava/lang/Long;

.field protected blacklist mTemp:I

.field final synthetic blacklist this$0:Lcom/android/internal/os/OplusThermalStatsHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V
    .locals 0

    .line 4104
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4099
    const/16 p1, -0x3ff

    iput p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 4100
    const-string p1, ""

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    .line 4101
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mSTime:Ljava/lang/Long;

    .line 4102
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mETime:Ljava/lang/Long;

    .line 4103
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 4105
    invoke-virtual {p0}, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->init()V

    .line 4106
    return-void
.end method


# virtual methods
.method public blacklist init()V
    .locals 1

    .line 4108
    const/16 v0, -0x3ff

    iput v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 4109
    const-string v0, " "

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    .line 4110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mSTime:Ljava/lang/Long;

    .line 4111
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mETime:Ljava/lang/Long;

    .line 4112
    iput-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 4113
    return-void
.end method

.method public blacklist tostring()Ljava/lang/String;
    .locals 2

    .line 4115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mApk:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mApk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mDuration:Ljava/lang/Long;

    .line 4116
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mTemp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$AppThermalInfo;->mTemp:I

    .line 4117
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4115
    return-object v0
.end method
