.class public interface abstract Landroid/os/IOplusDailyBattProtoManager;
.super Ljava/lang/Object;
.source "IOplusDailyBattProtoManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/os/IOplusDailyBattProtoManager;

.field public static final blacklist STEP_LEVEL_MODE_NETWORK_SHIFT:I = 0x4

.field public static final blacklist STEP_LEVEL_MODE_NETWORK_STATE:I = 0xf0

.field public static final blacklist TAG:Ljava/lang/String; = "IOplusDailyBattProtoManager"

.field public static final blacklist TYPE_NETWORK_DATA_NR:I = 0x3

.field public static final blacklist TYPE_NETWORK_DATA_REST:I = 0x2

.field public static final blacklist TYPE_NETWORK_OFF:I = 0x0

.field public static final blacklist TYPE_NETWORK_OFF_FROM_DATA_NR:I = 0x6

.field public static final blacklist TYPE_NETWORK_OFF_FROM_DATA_REST:I = 0x5

.field public static final blacklist TYPE_NETWORK_OFF_FROM_WIFI:I = 0x4

.field public static final blacklist TYPE_NETWORK_WIFI:I = 0x1

.field public static final blacklist VALUE_FOUR:I = 0x4

.field public static final blacklist VALUE_SIXTEEN:I = 0x10


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/os/IOplusDailyBattProtoManager$1;

    invoke-direct {v0}, Landroid/os/IOplusDailyBattProtoManager$1;-><init>()V

    sput-object v0, Landroid/os/IOplusDailyBattProtoManager;->DEFAULT:Landroid/os/IOplusDailyBattProtoManager;

    return-void
.end method

.method public static blacklist ifHaveNetworkDetail(Ljava/io/PrintWriter;ZJJ)Z
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "haveModes"    # Z
    .param p2, "initMode"    # J
    .param p4, "modMode"    # J

    .line 76
    const/4 v0, 0x4

    shr-long v1, p4, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 77
    if-eqz p1, :cond_0

    const-string v1, ", "

    goto :goto_0

    :cond_0
    const-string v1, " ("

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    shr-long v0, p2, v0

    long-to-int v0, v0

    .line 79
    .local v0, "networkType":I
    const-string v1, "NA"

    .line 80
    .local v1, "networkStr":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    const-string v1, "network-off-from-data-nr"

    .line 108
    goto :goto_1

    .line 102
    :pswitch_1
    const-string v1, "network-off-from-data-rest"

    .line 104
    goto :goto_1

    .line 98
    :pswitch_2
    const-string v1, "network-off-from-wifi"

    .line 100
    goto :goto_1

    .line 94
    :pswitch_3
    const-string v1, "network-data-nr"

    .line 96
    goto :goto_1

    .line 90
    :pswitch_4
    const-string v1, "network-data-rest"

    .line 92
    goto :goto_1

    .line 86
    :pswitch_5
    const-string v1, "network-wifi"

    .line 88
    goto :goto_1

    .line 82
    :pswitch_6
    const-string v1, "network-off"

    .line 84
    nop

    .line 112
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    const/4 p1, 0x1

    .line 116
    .end local v0    # "networkType":I
    .end local v1    # "networkStr":Ljava/lang/String;
    :cond_1
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 31
    invoke-interface {p0}, Landroid/os/IOplusDailyBattProtoManager;->getDefault()Landroid/os/IOplusDailyBattProtoManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/os/IOplusDailyBattProtoManager;
    .locals 1

    .line 60
    sget-object v0, Landroid/os/IOplusDailyBattProtoManager;->DEFAULT:Landroid/os/IOplusDailyBattProtoManager;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 55
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusDailyBattProtoManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    const-string v0, "IOplusDailyBattProtoManager"

    const-string v1, "default init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public blacklist noteConnectivityChangedLocked(ILjava/lang/String;III)[I
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "phoneDataConnectionType"    # I
    .param p4, "modStepMode"    # I
    .param p5, "curStepMode"    # I

    .line 120
    const-string v0, "IOplusDailyBattProtoManager"

    const-string v1, "default noteConnectivityChangedLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p4, v0, v1

    const/4 v1, 0x1

    aput p5, v0, v1

    return-object v0
.end method

.method public blacklist notePhoneDataConnectionStateLocked(IZIIII)[I
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "bin"    # I
    .param p4, "historyCurStates"    # I
    .param p5, "modStepMode"    # I
    .param p6, "curStepMode"    # I

    .line 125
    const-string v0, "IOplusDailyBattProtoManager"

    const-string v1, "default notePhoneDataConnectionStateLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
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

    .line 68
    const-string v0, "IOplusDailyBattProtoManager"

    const-string v1, "default registerRomUpdate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public blacklist reportDailyProto()V
    .locals 2

    .line 72
    const-string v0, "IOplusDailyBattProtoManager"

    const-string v1, "default reportDailyProto"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method
