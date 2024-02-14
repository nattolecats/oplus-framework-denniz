.class Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;
.super Ljava/lang/Object;
.source "OplusThermalStatsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$cloneMap:Ljava/util/Map;

.field final synthetic blacklist val$context:Landroid/content/Context;

.field final synthetic blacklist val$eventId:Ljava/lang/String;

.field final synthetic blacklist val$logTag:Ljava/lang/String;

.field final synthetic blacklist val$uploadNow:Z


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0

    .line 3853
    iput-object p1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$eventId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$uploadNow:Z

    iput-object p3, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$logTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$cloneMap:Ljava/util/Map;

    iput-object p5, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 3857
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3858
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.nearme.statistics.rom"

    const-string v2, "com.nearme.statistics.rom.service.ReceiverService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3859
    const-string v1, "appPackage"

    const-string v2, "system"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3860
    const-string v1, "appName"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3861
    const-string v1, "appVersion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3862
    const-string v1, "ssoid"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3863
    invoke-static {}, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics;->-$$Nest$sfgetappId()I

    move-result v1

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3864
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$eventId:Ljava/lang/String;

    const-string v2, "eventID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3865
    iget-boolean v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$uploadNow:Z

    const-string v2, "uploadNow"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3866
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$logTag:Ljava/lang/String;

    const-string v2, "logTag"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3867
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$cloneMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics;->-$$Nest$smgetCommonObject(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "logMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3868
    const-string v1, "dataType"

    const/16 v2, 0x3ee

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3869
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$context:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 3870
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3872
    :cond_0
    iget-object v1, p0, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics$1;->val$cloneMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 3873
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/os/OplusThermalStatsHelper$ThermalStatistics;->-$$Nest$sfputmIsOnCommon(Z)V

    .line 3874
    return-void
.end method
