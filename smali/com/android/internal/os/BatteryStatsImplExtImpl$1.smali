.class Lcom/android/internal/os/BatteryStatsImplExtImpl$1;
.super Ljava/lang/Object;
.source "BatteryStatsImplExtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImplExtImpl;->onBatteryStatsMessageHandle(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

.field final synthetic blacklist val$highPowerSceneIntent:Landroid/content/Intent;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImplExtImpl;

    .line 1011
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;->val$highPowerSceneIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 1014
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmBatteryStatsExt(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Landroid/os/IBatteryStatsExt;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmBatteryStatsExt(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Landroid/os/IBatteryStatsExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBatteryStatsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmBatteryStatsExt(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Landroid/os/IBatteryStatsExt;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBatteryStatsExt;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$1;->val$highPowerSceneIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1017
    :cond_0
    return-void
.end method
