.class public Landroid/os/OplusPowerMonitor;
.super Ljava/lang/Object;
.source "OplusPowerMonitor.java"


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String; = "PowerMonitor"

.field private static volatile blacklist sService:Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    sput-object v0, Landroid/os/OplusPowerMonitor;->sService:Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist disableEdTask()V
    .locals 3

    .line 63
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v0

    .line 64
    .local v0, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->disableEdTask()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerMonitor"

    const-string v2, "disable ed task failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist enableEdTask()V
    .locals 3

    .line 81
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v0

    .line 82
    .local v0, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->enableEdTask()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerMonitor"

    const-string v2, "enable ed task failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static blacklist getAtdLevel()Ljava/lang/String;
    .locals 4

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v1

    .line 200
    .local v1, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->getAtdLevel()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 205
    .end local v1    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PowerMonitor"

    const-string v3, "get atd level failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist getAtdStatus()Ljava/lang/String;
    .locals 4

    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v1

    .line 160
    .local v1, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v1, :cond_0

    .line 161
    invoke-interface {v1}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->getAtdEnable()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 165
    .end local v1    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PowerMonitor"

    const-string v3, "get atd status failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public static blacklist getAtdTask()Ljava/lang/String;
    .locals 4

    .line 117
    const/4 v0, 0x0

    .line 119
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v1

    .line 120
    .local v1, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v1, :cond_0

    .line 121
    invoke-interface {v1}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->readAtdTask()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 125
    .end local v1    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PowerMonitor"

    const-string v3, "get abnormal task info failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private static blacklist getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    .locals 4

    .line 40
    sget-object v0, Landroid/os/OplusPowerMonitor;->sService:Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Landroid/os/OplusPowerMonitor;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Landroid/os/OplusPowerMonitor;->sService:Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 44
    :try_start_1
    invoke-static {}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->getService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v1

    sput-object v1, Landroid/os/OplusPowerMonitor;->sService:Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "PowerMonitor"

    const-string v3, "Failed to get powermonitor hal service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_1
    sget-object v0, Landroid/os/OplusPowerMonitor;->sService:Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    return-object v0
.end method

.method public static blacklist setAtdEnable(I)I
    .locals 4
    .param p0, "type"    # I

    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, "ret":I
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v1

    .line 140
    .local v1, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1, p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->setAtdEnable(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 145
    .end local v1    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PowerMonitor"

    const-string v3, "set atdenable failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static blacklist setAtdLevel(I)I
    .locals 4
    .param p0, "type"    # I

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "ret":I
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v1

    .line 180
    .local v1, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v1, p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->setAtdLevel(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 185
    .end local v1    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "PowerMonitor"

    const-string v3, "set atd level failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public static blacklist writeHoraeQmi(Ljava/lang/String;)I
    .locals 3
    .param p0, "buffer"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-static {}, Landroid/os/OplusPowerMonitor;->getPowerMonitorService()Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;

    move-result-object v0

    .line 100
    .local v0, "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p0}, Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;->writeHoraeQmi(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 105
    .end local v0    # "service":Lvendor/oplus/hardware/power/powermonitor/V1_0/IPowerMonitor;
    :cond_0
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PowerMonitor"

    const-string v2, "write horae_qmi failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
