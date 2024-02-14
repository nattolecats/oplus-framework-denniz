.class Landroid/os/OplusBinderStats$HwServiceDeathCallback;
.super Ljava/lang/Object;
.source "OplusBinderStats.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusBinderStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HwServiceDeathCallback"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/OplusBinderStats$HwServiceDeathCallback-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/OplusBinderStats$HwServiceDeathCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist serviceDied(J)V
    .locals 2
    .param p1, "var1"    # J

    .line 30
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/OplusBinderStats;->-$$Nest$sfputsIBinderStats(Lvendor/oplus/hardware/binderstats/V1_0/IBinderStats;)V

    .line 32
    const-string v0, "BinderStats"

    const-string v1, "HwServiceDeathCallback sIBinderStats die!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    return-void
.end method
