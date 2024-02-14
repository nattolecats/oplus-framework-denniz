.class Landroid/os/OplusBaseBatteryStatsRUSHelper$1;
.super Ljava/lang/Object;
.source "OplusBaseBatteryStatsRUSHelper.java"

# interfaces
.implements Lcom/oplus/romupdate/RomUpdateObserver$OnReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/OplusBaseBatteryStatsRUSHelper;->registerRomUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/OplusBaseBatteryStatsRUSHelper;


# direct methods
.method constructor blacklist <init>(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/OplusBaseBatteryStatsRUSHelper;

    .line 64
    iput-object p1, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper$1;->this$0:Landroid/os/OplusBaseBatteryStatsRUSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    iget-object v0, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper$1;->this$0:Landroid/os/OplusBaseBatteryStatsRUSHelper;

    invoke-static {v0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->-$$Nest$mupdateROMConfig(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V

    .line 70
    return-void
.end method
