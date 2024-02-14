.class Lcom/android/internal/os/BatteryStatsImplExtImpl$2;
.super Ljava/lang/Object;
.source "BatteryStatsImplExtImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImplExtImpl;->collectCheckinFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

.field final synthetic blacklist val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/os/BatteryStatsImplExtImpl;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImplExtImpl;

    .line 1162
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->val$parcel:Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 5

    .line 1164
    const/4 v0, 0x0

    .line 1165
    .local v0, "checkinFile":Landroid/util/AtomicFile;
    sget-object v1, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mCheckinFile:Lcom/oplus/reflect/RefObject;

    if-eqz v1, :cond_0

    .line 1166
    sget-object v1, Lcom/android/internal/os/OplusMirrorBatteryStatsImpl;->mCheckinFile:Lcom/oplus/reflect/RefObject;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-static {v2}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->-$$Nest$fgetmBatteryStatsImpl(Lcom/android/internal/os/BatteryStatsImplExtImpl;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/util/AtomicFile;

    .line 1168
    :cond_0
    if-nez v0, :cond_1

    .line 1169
    const-string v1, "BatteryStatsImplExtImpl"

    const-string v2, "fatal exception:collectCheckinFile failed to get checkinFile"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1172
    :cond_1
    monitor-enter v0

    .line 1173
    const/4 v1, 0x0

    .line 1175
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 1176
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1177
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1178
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1179
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1180
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->val$parcel:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1182
    :catch_0
    move-exception v2

    .line 1183
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    const-string v3, "BatteryStats"

    const-string v4, "Error writing checkin battery statistics"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1185
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1187
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->val$parcel:Landroid/os/Parcel;

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1190
    nop

    .line 1191
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1196
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "oplus.intent.action.ACTION_OPLUS_POWER_CHECKIN_SAVED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1197
    .local v1, "statusIntent":Landroid/content/Intent;
    const-string v2, "com.oplus.powermonitor"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->this$0:Lcom/android/internal/os/BatteryStatsImplExtImpl;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/BatteryStatsImplExtImpl;->onBatterySendBroadcast(Landroid/content/Intent;)V

    .line 1199
    return-void

    .line 1187
    .local v1, "stream":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImplExtImpl$2;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 1190
    nop

    .end local v0    # "checkinFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/internal/os/BatteryStatsImplExtImpl$2;
    throw v2

    .line 1191
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .restart local v0    # "checkinFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/internal/os/BatteryStatsImplExtImpl$2;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
