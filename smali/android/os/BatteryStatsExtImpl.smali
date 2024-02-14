.class public Landroid/os/BatteryStatsExtImpl;
.super Ljava/lang/Object;
.source "BatteryStatsExtImpl.java"

# interfaces
.implements Landroid/os/IBatteryStatsExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStatsExtImpl$ThermalHistoryPrinter;,
        Landroid/os/BatteryStatsExtImpl$ThermalItem;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BatteryStatsExtImpl"


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field private blacklist mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smformatNetType(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/os/BatteryStatsExtImpl;->formatNetType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smformatPhoneState(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/os/BatteryStatsExtImpl;->formatPhoneState(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smformatSimState(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/os/BatteryStatsExtImpl;->formatSimState(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smformatThermalTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/os/BatteryStatsExtImpl;->formatThermalTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mContext:Landroid/content/Context;

    .line 39
    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    .line 42
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "BatteryStatsExtImpl is inited"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method private static final blacklist formatNetType(I)Ljava/lang/String;
    .locals 1
    .param p0, "netType"    # I

    .line 591
    const-string v0, "none"

    packed-switch p0, :pswitch_data_0

    .line 603
    return-object v0

    .line 599
    :pswitch_0
    const-string v0, "4g"

    return-object v0

    .line 597
    :pswitch_1
    const-string v0, "3g"

    return-object v0

    .line 595
    :pswitch_2
    const-string v0, "2g"

    return-object v0

    .line 601
    :pswitch_3
    const-string v0, "wifi"

    return-object v0

    .line 593
    :pswitch_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final blacklist formatPhoneState(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 633
    const-string v0, "out_of_service"

    packed-switch p0, :pswitch_data_0

    .line 643
    return-object v0

    .line 641
    :pswitch_0
    const-string v0, "state_power_off"

    return-object v0

    .line 639
    :pswitch_1
    const-string v0, "emergency_only"

    return-object v0

    .line 637
    :pswitch_2
    return-object v0

    .line 635
    :pswitch_3
    const-string v0, "in_service"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final blacklist formatSimState(I)Ljava/lang/String;
    .locals 1
    .param p0, "simState"    # I

    .line 607
    const-string v0, "unknow"

    packed-switch p0, :pswitch_data_0

    .line 629
    return-object v0

    .line 627
    :pswitch_0
    const-string v0, "card_restricted"

    return-object v0

    .line 625
    :pswitch_1
    const-string v0, "card_io_error"

    return-object v0

    .line 623
    :pswitch_2
    const-string v0, "perm_disabled"

    return-object v0

    .line 621
    :pswitch_3
    const-string v0, "not_ready"

    return-object v0

    .line 619
    :pswitch_4
    const-string v0, "ready"

    return-object v0

    .line 617
    :pswitch_5
    const-string v0, "network_locked"

    return-object v0

    .line 615
    :pswitch_6
    const-string v0, "puk_required"

    return-object v0

    .line 613
    :pswitch_7
    const-string v0, "pin_required"

    return-object v0

    .line 611
    :pswitch_8
    const-string v0, "absent"

    return-object v0

    .line 609
    :pswitch_9
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final blacklist formatThermalTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .line 647
    const-wide/16 v0, 0x3e8

    div-long v2, p1, v0

    .line 648
    .local v2, "sec":J
    invoke-static {p0, v2, v3}, Landroid/os/BatteryStatsExtImpl;->formatThermalTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 649
    mul-long/2addr v0, v2

    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 650
    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    return-void
.end method

.method private static final blacklist formatThermalTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .line 563
    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    .line 564
    .local v0, "days":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 565
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 566
    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :cond_0
    const-wide/16 v4, 0x3c

    mul-long v6, v0, v4

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x18

    mul-long/2addr v6, v8

    .line 570
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long/2addr v8, v10

    .line 571
    .local v8, "hours":J
    cmp-long v10, v8, v2

    if-nez v10, :cond_1

    cmp-long v10, v6, v2

    if-eqz v10, :cond_2

    .line 572
    :cond_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 573
    const-string v10, "h"

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    :cond_2
    mul-long v10, v8, v4

    mul-long/2addr v10, v4

    add-long/2addr v6, v10

    .line 577
    sub-long v10, p1, v6

    div-long/2addr v10, v4

    .line 578
    .local v10, "mins":J
    cmp-long v12, v10, v2

    if-nez v12, :cond_3

    cmp-long v12, v6, v2

    if-eqz v12, :cond_4

    .line 579
    :cond_3
    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 580
    const-string v12, "m"

    invoke-virtual {p0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    :cond_4
    mul-long/2addr v4, v10

    add-long/2addr v6, v4

    .line 584
    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v6, v2

    if-eqz v2, :cond_6

    .line 585
    :cond_5
    sub-long v2, p1, v6

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 586
    const-string v2, "s"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_6
    return-void
.end method

.method private blacklist ifHaveNetworkDetail(Ljava/io/PrintWriter;ZJJ)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "haveModes"    # Z
    .param p3, "initMode"    # J
    .param p5, "modMode"    # J

    .line 95
    invoke-static/range {p1 .. p6}, Landroid/os/IOplusDailyBattProtoManager;->ifHaveNetworkDetail(Ljava/io/PrintWriter;ZJJ)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getContext()Landroid/content/Context;
    .locals 1

    .line 57
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public blacklist haveNetworkMode(Ljava/io/PrintWriter;ZJJ)Z
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "haveModes"    # Z
    .param p3, "initMode"    # J
    .param p5, "modMode"    # J

    .line 91
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStatsExtImpl;->ifHaveNetworkDetail(Ljava/io/PrintWriter;ZJJ)Z

    move-result v0

    or-int/2addr v0, p2

    move p2, v0

    return v0
.end method

.method public blacklist noteConnectivityChangedLocked(ILjava/lang/String;III)[I
    .locals 6
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "phoneDataConnectionType"    # I
    .param p4, "modStepMode"    # I
    .param p5, "curStepMode"    # I

    .line 100
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    if-eqz v0, :cond_0

    .line 101
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/IOplusDailyBattProtoManager;->noteConnectivityChangedLocked(ILjava/lang/String;III)[I

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "mOplusDailyBattProtoManager is null when noteConnectivityChangedLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v1, 0x1

    aput p5, v0, v1

    return-object v0
.end method

.method public blacklist notePhoneDataConnectionStateLocked(IZIIII)[I
    .locals 7
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "bin"    # I
    .param p4, "historyCurStates"    # I
    .param p5, "modStepMode"    # I
    .param p6, "curStepMode"    # I

    .line 110
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    if-eqz v0, :cond_0

    .line 111
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IOplusDailyBattProtoManager;->notePhoneDataConnectionStateLocked(IZIIII)[I

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "mOplusDailyBattProtoManager is null when notePhoneDataConnectionStateLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p5, v0, v1

    const/4 v1, 0x1

    aput p6, v0, v1

    return-object v0
.end method

.method public blacklist registerRomUpdate()V
    .locals 2

    .line 73
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Landroid/os/IOplusDailyBattProtoManager;->registerRomUpdate()V

    goto :goto_0

    .line 76
    :cond_0
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "mOplusDailyBattProtoManager is null when registerRomUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-void
.end method

.method public blacklist reportDailyProto()V
    .locals 2

    .line 82
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Landroid/os/IOplusDailyBattProtoManager;->reportDailyProto()V

    goto :goto_0

    .line 85
    :cond_0
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "mOplusDailyBattProtoManager is null when reportDailyProto"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    iput-object p1, p0, Landroid/os/BatteryStatsExtImpl;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1}, Landroid/os/IOplusDailyBattProtoManager;->init(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "mOplusDailyBattProtoManager is null when setContext"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void
.end method

.method protected blacklist setInBatteryStatsImplInstance(Landroid/os/BatteryStats;)V
    .locals 4
    .param p1, "impl"    # Landroid/os/BatteryStats;

    .line 61
    const-string v0, "BatteryStatsExtImpl"

    const-string v1, "init local BatteryStats instance..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/os/IOplusDailyBattProtoManager;->DEFAULT:Landroid/os/IOplusDailyBattProtoManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/os/IOplusDailyBattProtoManager;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    .line 63
    return-void
.end method

.method public blacklist setInBatteryStatsImplInstance(Ljava/lang/Object;)V
    .locals 5
    .param p1, "impl"    # Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init local BatteryStats instance with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v0

    sget-object v1, Landroid/os/IOplusDailyBattProtoManager;->DEFAULT:Landroid/os/IOplusDailyBattProtoManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/os/BatteryStats;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/os/IOplusDailyBattProtoManager;

    iput-object v0, p0, Landroid/os/BatteryStatsExtImpl;->mOplusDailyBattProtoManager:Landroid/os/IOplusDailyBattProtoManager;

    .line 69
    return-void
.end method
