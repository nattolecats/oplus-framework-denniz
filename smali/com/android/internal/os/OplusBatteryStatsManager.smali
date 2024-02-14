.class public Lcom/android/internal/os/OplusBatteryStatsManager;
.super Ljava/lang/Object;
.source "OplusBatteryStatsManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusBatteryStatsServiceManager"


# instance fields
.field private blacklist mOplusBatteryStatsService:Lcom/android/internal/os/IOplusBatteryStatsService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getBatteryDataService()V
    .locals 3

    .line 37
    const-string v0, "oplus_battery_stats_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 38
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 39
    const-string v1, "OplusBatteryStatsServiceManager"

    const-string v2, "service oplus_battery_stats_service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 42
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/OplusBatteryStatsManager;->mOplusBatteryStatsService:Lcom/android/internal/os/IOplusBatteryStatsService;

    invoke-static {v0}, Lcom/android/internal/os/IOplusBatteryStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IOplusBatteryStatsService;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 43
    invoke-static {v0}, Lcom/android/internal/os/IOplusBatteryStatsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IOplusBatteryStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/OplusBatteryStatsManager;->mOplusBatteryStatsService:Lcom/android/internal/os/IOplusBatteryStatsService;

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist getUidSipper([IJIZZ)[Lcom/android/internal/os/UidSipper;
    .locals 9
    .param p1, "uid"    # [I
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "which"    # I
    .param p5, "updateCpu"    # Z
    .param p6, "updateModem"    # Z

    .line 58
    invoke-direct {p0}, Lcom/android/internal/os/OplusBatteryStatsManager;->getBatteryDataService()V

    .line 59
    iget-object v0, p0, Lcom/android/internal/os/OplusBatteryStatsManager;->mOplusBatteryStatsService:Lcom/android/internal/os/IOplusBatteryStatsService;

    const/4 v7, 0x0

    const-string v8, "OplusBatteryStatsServiceManager"

    if-nez v0, :cond_0

    .line 60
    const-string v0, "mOplusBatteryStatsService is null"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-object v7

    .line 64
    :cond_0
    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/os/IOplusBatteryStatsService;->getUidSipper([IJIZZ)[Lcom/android/internal/os/UidSipper;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v7
.end method
