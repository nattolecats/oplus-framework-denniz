.class Lcom/android/internal/os/OplusThermalStatsHelper$4;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;->initUploadAlarm()V
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

    .line 2987
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 2990
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-boolean v0, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalFeatureOn:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2993
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    move-result-object v0

    const-string v1, "oplus.android.internal.thermalupload.ALARM_WAKEUP"

    if-nez v0, :cond_1

    .line 2994
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    new-instance v2, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;-><init>(Lcom/android/internal/os/OplusThermalStatsHelper;Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver-IA;)V

    invoke-static {v0, v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;)V

    .line 2995
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2996
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2997
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2998
    iget-object v2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v2}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmReceiver(Lcom/android/internal/os/OplusThermalStatsHelper;)Lcom/android/internal/os/OplusThermalStatsHelper$ThermalReceiver;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 3000
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/AlarmManager;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3001
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 3003
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3004
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    invoke-static {v1, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/app/AlarmManager;)V

    .line 3005
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/app/PendingIntent;)V

    .line 3007
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmPowerManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3008
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3009
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 3012
    :cond_3
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    invoke-static {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmPowerManager(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/os/PowerManager;)V

    .line 3013
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmPowerManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/PowerManager;

    move-result-object v3

    const-string v4, "thermalUpload"

    invoke-virtual {v3, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmWakeLock(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/os/PowerManager$WakeLock;)V

    .line 3015
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmPackageManger(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_5

    .line 3016
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fputmPackageManger(Lcom/android/internal/os/OplusThermalStatsHelper;Landroid/content/pm/PackageManager;)V

    .line 3018
    :cond_5
    const-string v0, "OplusThermalStats"

    const-string v3, " initUploadAlarm "

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3020
    .local v0, "instance":Ljava/util/Calendar;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3021
    .local v4, "day":I
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3022
    .local v5, "year":I
    const/16 v6, 0x16d

    if-lt v4, v6, :cond_6

    .line 3023
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 3024
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_2

    .line 3026
    :cond_6
    add-int/lit8 v1, v4, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 3030
    :goto_2
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 3032
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 3033
    .local v1, "rand":Ljava/util/Random;
    const/16 v3, 0xc

    const/16 v6, 0xa

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 3034
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 3035
    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmAlarmManager(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/AlarmManager;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/internal/os/OplusThermalStatsHelper$4;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v8}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmWakeupIntent(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v3, v2, v6, v7, v8}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 3036
    return-void

    .line 2991
    .end local v0    # "instance":Ljava/util/Calendar;
    .end local v1    # "rand":Ljava/util/Random;
    .end local v4    # "day":I
    .end local v5    # "year":I
    :cond_7
    :goto_3
    return-void
.end method
