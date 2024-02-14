.class public abstract Landroid/content/OplusBatteryStatsInternal;
.super Ljava/lang/Object;
.source "OplusBatteryStatsInternal.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist noteScreenBrightnessModeChangedImpl(Z)V
.end method

.method public abstract blacklist setThermalConfigImpl()V
.end method

.method public abstract blacklist setThermalStateImpl(Landroid/os/OplusThermalState;)V
.end method
