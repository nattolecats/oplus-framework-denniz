.class Landroid/os/OplusBaseBatteryStatsRUSHelper$GetDataFromProviderRunnable;
.super Ljava/lang/Object;
.source "OplusBaseBatteryStatsRUSHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OplusBaseBatteryStatsRUSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDataFromProviderRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/OplusBaseBatteryStatsRUSHelper;


# direct methods
.method public constructor blacklist <init>(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V
    .locals 0

    .line 151
    iput-object p1, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper$GetDataFromProviderRunnable;->this$0:Landroid/os/OplusBaseBatteryStatsRUSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 155
    const-string v0, "start fetching..."

    invoke-static {v0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->-$$Nest$smmyLog(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Landroid/os/OplusBaseBatteryStatsRUSHelper$GetDataFromProviderRunnable;->this$0:Landroid/os/OplusBaseBatteryStatsRUSHelper;

    invoke-static {v0}, Landroid/os/OplusBaseBatteryStatsRUSHelper;->-$$Nest$mgetConfigFromProvider(Landroid/os/OplusBaseBatteryStatsRUSHelper;)V

    .line 157
    return-void
.end method
