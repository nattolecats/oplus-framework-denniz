.class Lcom/android/internal/os/OplusThermalStatsHelper$1;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/OplusThermalStatsHelper;->startUploadTemp()V
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

    .line 2875
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 14

    .line 2878
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->startIteratingThermalHistoryLocked()Z

    .line 2879
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->uploadThermalTemp()V

    .line 2880
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->clearThermalStatsBuffer()V

    .line 2881
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmSystemDir(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmThermalRecFile(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2882
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmThermalRecFile(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2883
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yy-MM-dd-HH-mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2884
    .local v0, "mDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmSystemDir(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/thermal/dcs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2885
    .local v1, "thermalDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2886
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 2888
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmSystemDir(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/thermal/dcs/thermalstats.bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2889
    .local v2, "backupFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2890
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2892
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thermalstats_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".bin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2893
    .local v3, "thermalFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v4}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmThermalRecFile(Lcom/android/internal/os/OplusThermalStatsHelper;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2894
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 2895
    .local v4, "files":[Ljava/io/File;
    const/16 v5, 0xe

    .line 2896
    .local v5, "fileNumLimit":I
    if-eqz v4, :cond_5

    array-length v6, v4

    if-le v6, v5, :cond_5

    .line 2897
    const/4 v6, 0x0

    aget-object v7, v4, v6

    .line 2898
    .local v7, "rmfile":Ljava/io/File;
    array-length v8, v4

    :goto_0
    if-ge v6, v8, :cond_4

    aget-object v9, v4, v6

    .line 2899
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    .line 2900
    move-object v7, v9

    .line 2898
    .end local v9    # "file":Ljava/io/File;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2903
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 2908
    .end local v0    # "mDateFormat":Ljava/text/SimpleDateFormat;
    .end local v1    # "thermalDir":Ljava/io/File;
    .end local v2    # "backupFile":Ljava/io/File;
    .end local v3    # "thermalFile":Ljava/io/File;
    .end local v4    # "files":[Ljava/io/File;
    .end local v5    # "fileNumLimit":I
    .end local v7    # "rmfile":Ljava/io/File;
    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v0, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/16 v1, 0x13

    iput-byte v1, v0, Landroid/os/BatteryStatsExtImpl$ThermalItem;->cmd:B

    .line 2909
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget-object v2, v0, Lcom/android/internal/os/OplusThermalStatsHelper;->mThermalHistoryCur:Landroid/os/BatteryStatsExtImpl$ThermalItem;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/OplusThermalStatsHelper;->addThermalHistoryBufferLocked(BLandroid/os/BatteryStatsExtImpl$ThermalItem;Z)V

    .line 2910
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->finishIteratingThermalHistoryLocked()V

    .line 2911
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2912
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2914
    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v0}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmHandler(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2915
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oplus.intent.action.ACTION_OPLUS_UPLOADFCC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2916
    .local v0, "fccIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    iget v1, v1, Lcom/android/internal/os/OplusThermalStatsHelper;->mBatteryFcc:I

    const-string v2, "fcc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2917
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2918
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$1;->this$0:Lcom/android/internal/os/OplusThermalStatsHelper;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper;->-$$Nest$fgetmContext(Lcom/android/internal/os/OplusThermalStatsHelper;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2920
    :cond_7
    return-void
.end method
