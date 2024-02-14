.class public Landroid/os/OplusBatteryManager;
.super Ljava/lang/Object;
.source "OplusBatteryManager.java"


# static fields
.field public static final whitelist ACTION_ADDITIONAL_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.ADDITIONAL_BATTERY_CHANGED"

.field public static final whitelist EXTRA_BATTERY_CHG_BALANCE_TYPE:Ljava/lang/String; = "battery_charge_balance_type"

.field public static final whitelist EXTRA_BATTERY_CURRENT:Ljava/lang/String; = "batterycurrent"

.field public static final whitelist EXTRA_BATTERY_MIN_VOLTAGE_TYPE:Ljava/lang/String; = "battery_min_voltage_type"

.field public static final whitelist EXTRA_BATTERY_NOTIFY_CODE:Ljava/lang/String; = "notifycode"

.field public static final whitelist EXTRA_BATTERY_NOW_VOLTAGE_TYPE:Ljava/lang/String; = "battery_now_voltage_type"

.field public static final whitelist EXTRA_BATTERY_QUIET_THERM_TYPE:Ljava/lang/String; = "battery_quiet_therm_type"

.field public static final whitelist EXTRA_BATTERY_REALTIME_CAPATICAL:Ljava/lang/String; = "realtime_capatical"

.field public static final whitelist EXTRA_BATTERY_SOC_JUMP:Ljava/lang/String; = "soc_jump"

.field public static final whitelist EXTRA_BMS_HEATING_STATUS:Ljava/lang/String; = "bms_heating_status"

.field public static final whitelist EXTRA_CHARGER_TECHNOLOGY:Ljava/lang/String; = "chargertechnology"

.field public static final whitelist EXTRA_CHARGER_VOLTAGE:Ljava/lang/String; = "chargervoltage"

.field public static final whitelist EXTRA_CHARGE_FAST_CHARGER:Ljava/lang/String; = "chargefastcharger"

.field public static final whitelist EXTRA_CHARGE_PLUGGED:Ljava/lang/String; = "chargeplugged"

.field public static final whitelist EXTRA_CHG_WATTAGE:Ljava/lang/String; = "chargewattage"

.field public static final whitelist EXTRA_ENVIRONMENT_TEMP_TYPE:Ljava/lang/String; = "environment_temp_type"

.field public static final whitelist EXTRA_FAST_CHG_TYPE:Ljava/lang/String; = "fast_chg_type"

.field public static final whitelist EXTRA_OTG_ONLINE:Ljava/lang/String; = "otgonline"

.field public static final whitelist EXTRA_PPS_CHG_MODE:Ljava/lang/String; = "pps_chg_mode"

.field public static final whitelist EXTRA_USER_DISABLE:Ljava/lang/String; = "user_disable"

.field public static final whitelist EXTRA_USER_ENABLE:Ljava/lang/String; = "user_enable"

.field public static final whitelist EXTRA_WIRELESS_DEVIATED_CHG_TYPE:Ljava/lang/String; = "wireless_deviated_chg_type"

.field public static final whitelist EXTRA_WIRELESS_FAST_CHG_TYPE:Ljava/lang/String; = "wireless_fast_chg_type"

.field public static final whitelist EXTRA_WIRELESS_REVERSE_CHG_TYPE:Ljava/lang/String; = "wireless_reverse_chg_type"

.field public static final whitelist FAST_CHARGER_TECHNOLOGY:I = 0x1

.field public static final whitelist NORMAL_CHARGER_TECHNOLOGY:I = 0x0

.field public static final whitelist STATUS_BMS_HEATING_ACTIVE:I = 0x1

.field public static final whitelist STATUS_BMS_HEATING_DONE:I = 0x2

.field public static final whitelist STATUS_BMS_HEATING_INACTIVE:I = 0x0

.field public static final whitelist STATUS_BMS_HEATING_QUIT:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBatteryManager"


# instance fields
.field private blacklist mBaseBatteryService:Landroid/os/IGuardElfThermalControl;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist getBatteryDataService()V
    .locals 3

    .line 163
    const-string v0, "guardelfthermalcontrol"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 164
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 165
    const-string v1, "OplusBatteryManager"

    const-string v2, "service guardelfthermalcontrol is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    invoke-static {v0}, Landroid/os/IGuardElfThermalControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 169
    invoke-static {v0}, Landroid/os/IGuardElfThermalControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;

    move-result-object v1

    iput-object v1, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    .line 171
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist getBattPPSChgIng()I
    .locals 5

    .line 498
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 499
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 500
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, -0x1

    return v0

    .line 504
    :cond_0
    const/4 v2, -0x1

    .line 506
    .local v2, "getBattPPSChgIng":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getBattPPSChgIng()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 509
    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getBattPPSChgPower()I
    .locals 5

    .line 514
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 515
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 516
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v0, -0x1

    return v0

    .line 520
    :cond_0
    const/4 v2, -0x1

    .line 522
    .local v2, "getBattPPSChgPower":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getBattPPSChgPower()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 525
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getBeginDecimal()F
    .locals 5

    .line 212
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 213
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 214
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_0
    const/4 v2, 0x0

    .line 220
    .local v2, "beginDecimal":F
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getBeginDecimal()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getBmsHeatingStatus()I
    .locals 5

    .line 641
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 642
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 643
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v0, -0x1

    return v0

    .line 647
    :cond_0
    const/4 v2, -0x1

    .line 649
    .local v2, "getBmsHeatingStatus":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getBmsHeatingStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 652
    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getChargerTechnology()I
    .locals 5

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "chargerTechnology":I
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 281
    iget-object v1, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v2, "OplusBatteryManager"

    if-nez v1, :cond_0

    .line 282
    const-string v1, "mOplusBatteryService is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x0

    return v1

    .line 286
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/os/IGuardElfThermalControl;->getChargerTechnology()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist getCustomSelectChgMode()I
    .locals 5

    .line 530
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 531
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 532
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, -0x1

    return v0

    .line 536
    :cond_0
    const/4 v2, -0x1

    .line 539
    .local v2, "getCustomSelectChgMode":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getCustomSelectChgMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 542
    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getEndDecimal()F
    .locals 5

    .line 229
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 230
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 231
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_0
    const/4 v2, 0x0

    .line 237
    .local v2, "endDecimal":F
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getEndDecimal()F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 240
    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getPsyBatteryHmac()I
    .locals 5

    .line 263
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 264
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 265
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, -0x1

    return v0

    .line 269
    :cond_0
    const/4 v2, -0x1

    .line 271
    .local v2, "batteryHmac":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getPsyBatteryHmac()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 274
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getPsyBatteryNotify()I
    .locals 5

    .line 435
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 436
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 437
    const-string v0, "smOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v0, -0x1

    return v0

    .line 440
    :cond_0
    const/4 v2, -0x1

    .line 442
    .local v2, "psyBatteryNotify":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getPsyBatteryNotify()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 445
    goto :goto_0

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getPsyBatteryRm()I
    .locals 5

    .line 401
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 402
    const/4 v0, -0x1

    .line 403
    .local v0, "result":I
    iget-object v1, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v2, "OplusBatteryManager"

    if-nez v1, :cond_0

    .line 404
    const-string v1, "mOplusBatteryService is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return v0

    .line 409
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/os/IGuardElfThermalControl;->getPsyBatteryRm()I

    move-result v1

    move v0, v1

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPsyBatteryRm: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public whitelist getPsyChargeTech()I
    .locals 5

    .line 569
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 570
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 571
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const/4 v0, -0x1

    return v0

    .line 575
    :cond_0
    const/4 v2, -0x1

    .line 577
    .local v2, "getPsyChargeTech":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getPsyChargeTech()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 580
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getPsyOtgOnline()I
    .locals 5

    .line 246
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 247
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 248
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, -0x1

    return v0

    .line 252
    :cond_0
    const/4 v2, -0x1

    .line 254
    .local v2, "otgOnline":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getPsyOtgOnline()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 257
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getQuickModeGain()Ljava/lang/String;
    .locals 5

    .line 618
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 619
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 620
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 v0, 0x0

    return-object v0

    .line 624
    :cond_0
    const-string v2, ""

    .line 626
    .local v2, "getQuickModeGain":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getQuickModeGain()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 629
    goto :goto_0

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method public whitelist getSmartChgMode()I
    .locals 5

    .line 466
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 467
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 468
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v0, -0x1

    return v0

    .line 472
    :cond_0
    const/4 v2, -0x1

    .line 474
    .local v2, "getSmartChgMode":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getSmartChgMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 477
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getUIsohValue()I
    .locals 5

    .line 664
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 665
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 666
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v0, -0x1

    return v0

    .line 670
    :cond_0
    const/4 v2, -0x1

    .line 672
    .local v2, "getUIsohValue":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getUIsohValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 675
    goto :goto_0

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getWiredOtgOnline()I
    .locals 5

    .line 419
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 420
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 421
    const-string v0, "smOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v0, -0x1

    return v0

    .line 424
    :cond_0
    const/4 v2, -0x1

    .line 426
    .local v2, "wiredOtgOnline":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getWiredOtgOnline()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 429
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getWirelessAdapterPower()I
    .locals 5

    .line 450
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 451
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 452
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, -0x1

    return v0

    .line 456
    :cond_0
    const/4 v2, -0x1

    .line 458
    .local v2, "wirelessAdapterPower":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getWirelessAdapterPower()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 461
    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getWirelessPenPresent()I
    .locals 5

    .line 294
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 295
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 296
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, -0x1

    return v0

    .line 300
    :cond_0
    const/4 v2, -0x1

    .line 302
    .local v2, "wirelessPenPresent":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getWirelessPenPresent()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist getWirelessTXEnable()Ljava/lang/String;
    .locals 5

    .line 339
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 340
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 341
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 345
    :cond_0
    const/4 v2, 0x0

    .line 347
    .local v2, "wirelessEnable":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getWirelessTXEnable()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 350
    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v2
.end method

.method public whitelist getWirelessUserSleepMode()I
    .locals 5

    .line 369
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 370
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 371
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v0, -0x1

    return v0

    .line 375
    :cond_0
    const/4 v2, -0x1

    .line 377
    .local v2, "silentMode":I
    :try_start_0
    invoke-interface {v0}, Landroid/os/IGuardElfThermalControl;->getWirelessUserSleepMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 380
    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist isCameraOn()Z
    .locals 6

    .line 192
    const-string v0, "guardelfthermalcontrol"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 193
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 194
    .local v1, "isCameraWorking":Z
    const-string v2, "service guardelfthermalcontrol is null"

    const-string v3, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 195
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 196
    :cond_0
    iget-object v4, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    invoke-static {v0}, Landroid/os/IGuardElfThermalControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 197
    invoke-static {v0}, Landroid/os/IGuardElfThermalControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;

    move-result-object v4

    iput-object v4, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    .line 199
    :cond_1
    :goto_0
    iget-object v4, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    if-nez v4, :cond_2

    .line 200
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 203
    :cond_2
    :try_start_0
    invoke-interface {v4}, Landroid/os/IGuardElfThermalControl;->isCameraOn()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 206
    goto :goto_1

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    return v1
.end method

.method public whitelist setChargerCycle(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 689
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 690
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 691
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v0, -0x1

    return v0

    .line 695
    :cond_0
    const/4 v2, -0x1

    .line 697
    .local v2, "setChargerCycle":I
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IGuardElfThermalControl;->setChargerCycle(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 700
    goto :goto_0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist setChargingLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 174
    const-string v0, "guardelfthermalcontrol"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 175
    .local v0, "binder":Landroid/os/IBinder;
    const-string v1, "service guardelfthermalcontrol is null"

    const-string v2, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 176
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_0
    iget-object v3, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    invoke-static {v0}, Landroid/os/IGuardElfThermalControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 178
    invoke-static {v0}, Landroid/os/IGuardElfThermalControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IGuardElfThermalControl;

    move-result-object v3

    iput-object v3, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    .line 180
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    if-nez v3, :cond_2

    .line 181
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 184
    :cond_2
    :try_start_0
    invoke-interface {v3, p1, p2}, Landroid/os/IGuardElfThermalControl;->setChargeLevel(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set charge value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    goto :goto_1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public whitelist setCustomSelectChgMode(IZ)I
    .locals 5
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .line 547
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 548
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 549
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v0, -0x1

    return v0

    .line 553
    :cond_0
    const/4 v2, -0x1

    .line 555
    .local v2, "setCustomSelectChgMode":I
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/os/IGuardElfThermalControl;->setCustomSelectChgMode(IZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist setPsyMmiChgEn(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 386
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 387
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 388
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 393
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IGuardElfThermalControl;->setPsyMmiChgEn(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setSmartChgMode(Ljava/lang/String;)I
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 482
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 483
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 484
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, -0x1

    return v0

    .line 488
    :cond_0
    const/4 v2, -0x1

    .line 490
    .local v2, "setSmartChgMode":I
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IGuardElfThermalControl;->setSmartChgMode(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 493
    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist setSmartCoolDown(IILjava/lang/String;)I
    .locals 5
    .param p1, "coolDown"    # I
    .param p2, "normalCoolDown"    # I
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 596
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 597
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    const/4 v0, -0x1

    return v0

    .line 601
    :cond_0
    const/4 v2, -0x1

    .line 603
    .local v2, "setSmartCoolDown":I
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/os/IGuardElfThermalControl;->setSmartCoolDown(IILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    .line 606
    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return v2
.end method

.method public whitelist setWirelessPenSoc(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 310
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 311
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 312
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IGuardElfThermalControl;->setWirelessPenSoc(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setWirelessTXEnable(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 325
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 326
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 327
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 332
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IGuardElfThermalControl;->setWirelessTXEnable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist setWirelessUserSleepMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Landroid/os/OplusBatteryManager;->getBatteryDataService()V

    .line 356
    iget-object v0, p0, Landroid/os/OplusBatteryManager;->mBaseBatteryService:Landroid/os/IGuardElfThermalControl;

    const-string v1, "OplusBatteryManager"

    if-nez v0, :cond_0

    .line 357
    const-string v0, "mOplusBatteryService is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void

    .line 362
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/os/IGuardElfThermalControl;->setWirelessUserSleepMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
