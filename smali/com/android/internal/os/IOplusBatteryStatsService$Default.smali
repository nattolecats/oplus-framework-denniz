.class public Lcom/android/internal/os/IOplusBatteryStatsService$Default;
.super Ljava/lang/Object;
.source "IOplusBatteryStatsService.java"

# interfaces
.implements Lcom/android/internal/os/IOplusBatteryStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IOplusBatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getUidSipper([IJIZZ)[Lcom/android/internal/os/UidSipper;
    .locals 1
    .param p1, "uid"    # [I
    .param p2, "elapsedRealtimeMs"    # J
    .param p4, "which"    # I
    .param p5, "updateCpu"    # Z
    .param p6, "updateModem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method
