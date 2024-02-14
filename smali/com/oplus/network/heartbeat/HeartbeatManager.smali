.class public final Lcom/oplus/network/heartbeat/HeartbeatManager;
.super Ljava/lang/Object;
.source "HeartbeatManager.java"


# static fields
.field public static final greylist HEARTBEATMANAGER_SERVICE:Ljava/lang/String; = "heartbeat"

.field private static final greylist TAG:Ljava/lang/String; = "HeartbeatManager"

.field private static volatile greylist sInstance:Lcom/oplus/network/heartbeat/HeartbeatManager;

.field private static greylist sService:Lcom/oplus/network/heartbeat/IHeartbeat;


# direct methods
.method private constructor greylist <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    if-nez v0, :cond_0

    .line 57
    :try_start_0
    const-string v0, "heartbeat"

    .line 58
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 57
    invoke-static {v0}, Lcom/oplus/network/heartbeat/IHeartbeat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/heartbeat/IHeartbeat;

    move-result-object v0

    sput-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;
    :try_end_0
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    const-string v1, "HeartbeatManager"

    const-string v2, "failed to get service!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :cond_0
    :goto_0
    return-void
.end method

.method public static greylist getInstance()Lcom/oplus/network/heartbeat/HeartbeatManager;
    .locals 2

    .line 68
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sInstance:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v0, :cond_1

    .line 69
    const-class v0, Lcom/oplus/network/heartbeat/HeartbeatManager;

    monitor-enter v0

    .line 70
    :try_start_0
    sget-object v1, Lcom/oplus/network/heartbeat/HeartbeatManager;->sInstance:Lcom/oplus/network/heartbeat/HeartbeatManager;

    if-nez v1, :cond_0

    .line 71
    new-instance v1, Lcom/oplus/network/heartbeat/HeartbeatManager;

    invoke-direct {v1}, Lcom/oplus/network/heartbeat/HeartbeatManager;-><init>()V

    sput-object v1, Lcom/oplus/network/heartbeat/HeartbeatManager;->sInstance:Lcom/oplus/network/heartbeat/HeartbeatManager;

    .line 73
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sInstance:Lcom/oplus/network/heartbeat/HeartbeatManager;

    return-object v0
.end method


# virtual methods
.method public greylist establishHeartbeat(Lcom/oplus/network/heartbeat/HeartbeatSettings;Lcom/oplus/network/heartbeat/HeartbeatListener;)Ljava/lang/String;
    .locals 3
    .param p1, "settings"    # Lcom/oplus/network/heartbeat/HeartbeatSettings;
    .param p2, "listener"    # Lcom/oplus/network/heartbeat/HeartbeatListener;

    .line 108
    :try_start_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    iget-object v1, p2, Lcom/oplus/network/heartbeat/HeartbeatListener;->mCallback:Lcom/oplus/network/heartbeat/IHeartbeatListener;

    invoke-interface {v0, p1, v1}, Lcom/oplus/network/heartbeat/IHeartbeat;->establishHeartbeat(Lcom/oplus/network/heartbeat/HeartbeatSettings;Lcom/oplus/network/heartbeat/IHeartbeatListener;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to call establishHeartbeat, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeartbeatManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v1, Lcom/oplus/network/heartbeat/HeartbeatStream;->PROXY_KEY_NONE:Ljava/lang/String;

    return-object v1
.end method

.method public greylist isHeartbeatAvailabel()Z
    .locals 3

    .line 83
    :try_start_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lcom/oplus/network/heartbeat/IHeartbeat;->isHeartbeatAvailabel()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to call isHeartbeatAvailabel, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeartbeatManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isHeartbeatDynamicCycleEnabled()Z
    .locals 3

    .line 95
    :try_start_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    invoke-interface {v0}, Lcom/oplus/network/heartbeat/IHeartbeat;->isHeartbeatDynamicCycleEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to call isHeartbeatDynamicCycleEnabled, e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeartbeatManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public greylist pauseHeartbeat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "proxyKey"    # Ljava/lang/String;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HeartbeatManager"

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "failed to call pauseHeartbeat, proxy key is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 143
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    invoke-interface {v0, p1}, Lcom/oplus/network/heartbeat/IHeartbeat;->pauseHeartbeat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    nop

    .line 148
    const/4 v0, 0x1

    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to call pauseHeartbeat, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v1
.end method

.method public greylist resumeHeartbeat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "proxyKey"    # Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HeartbeatManager"

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "failed to call resumeHeartbeat, proxy key is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1

    .line 161
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    invoke-interface {v0, p1}, Lcom/oplus/network/heartbeat/IHeartbeat;->resumeHeartbeat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    nop

    .line 166
    const/4 v0, 0x1

    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to call resumeHeartbeat, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v1
.end method

.method public greylist stopHeartbeat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "proxyKey"    # Ljava/lang/String;

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HeartbeatManager"

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "failed to call stopHeartbeat, proxy key is null!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1

    .line 125
    :cond_0
    :try_start_0
    sget-object v0, Lcom/oplus/network/heartbeat/HeartbeatManager;->sService:Lcom/oplus/network/heartbeat/IHeartbeat;

    invoke-interface {v0, p1}, Lcom/oplus/network/heartbeat/IHeartbeat;->stopHeartbeat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    nop

    .line 130
    const/4 v0, 0x1

    return v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to call stopHeartbeat, e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v1
.end method
