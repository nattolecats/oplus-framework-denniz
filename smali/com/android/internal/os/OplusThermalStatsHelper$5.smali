.class Lcom/android/internal/os/OplusThermalStatsHelper$5;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;->cancleUploadAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/OplusThermalStatsHelper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/OplusThermalStatsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/OplusThermalStatsHelper;

    .line 3041
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 3044
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/AlarmManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3045
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3047
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmPowerManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3048
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3049
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3052
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3054
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$5;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3057
    goto :goto_0

    .line 3055
    :catch_0
    move-exception v0

    .line 3056
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3059
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method
