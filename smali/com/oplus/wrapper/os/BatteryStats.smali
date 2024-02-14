.class public Lcom/oplus/wrapper/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# static fields
.field public static final whitelist STATS_SINCE_CHARGED:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/oplus/wrapper/os/BatteryStats;->getStatsSinceCharged()I

    move-result v0

    sput v0, Lcom/oplus/wrapper/os/BatteryStats;->STATS_SINCE_CHARGED:I

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getStatsSinceCharged()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method
