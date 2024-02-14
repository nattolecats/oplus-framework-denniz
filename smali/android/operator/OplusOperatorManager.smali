.class public Landroid/operator/OplusOperatorManager;
.super Ljava/lang/Object;
.source "OplusOperatorManager.java"


# static fields
.field public static final whitelist ACTION_GET_COTA_IMAGE_PATH:Ljava/lang/String; = "getCotaImagePath"

.field public static final whitelist ACTION_SAVE_COTA_VERSION_INFO:Ljava/lang/String; = "saveCotaVersionInfo"

.field public static final whitelist SERVICE_ENABLED:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "operator"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusOperatorManager"

.field private static final blacklist mEmptyMap:Ljava/util/Map;

.field private static volatile blacklist sManager:Landroid/operator/OplusOperatorManager;


# instance fields
.field private blacklist mService:Landroid/operator/IOplusOperatorManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    sput-object v0, Landroid/operator/OplusOperatorManager;->sManager:Landroid/operator/OplusOperatorManager;

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/operator/OplusOperatorManager;->mEmptyMap:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/operator/IOplusOperatorManager;)V
    .locals 0
    .param p1, "service"    # Landroid/operator/IOplusOperatorManager;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    .line 62
    return-void
.end method

.method public static whitelist getInstance()Landroid/operator/OplusOperatorManager;
    .locals 5

    .line 65
    sget-object v0, Landroid/operator/OplusOperatorManager;->sManager:Landroid/operator/OplusOperatorManager;

    if-nez v0, :cond_2

    .line 66
    const-class v0, Landroid/operator/OplusOperatorManager;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Landroid/operator/OplusOperatorManager;->sManager:Landroid/operator/OplusOperatorManager;

    if-nez v1, :cond_1

    .line 68
    const-string v1, "operator"

    .line 69
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/operator/IOplusOperatorManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/operator/IOplusOperatorManager;

    move-result-object v1

    .line 70
    .local v1, "mService":Landroid/operator/IOplusOperatorManager;
    if-eqz v1, :cond_0

    .line 71
    new-instance v2, Landroid/operator/OplusOperatorManager;

    invoke-direct {v2, v1}, Landroid/operator/OplusOperatorManager;-><init>(Landroid/operator/IOplusOperatorManager;)V

    sput-object v2, Landroid/operator/OplusOperatorManager;->sManager:Landroid/operator/OplusOperatorManager;

    goto :goto_0

    .line 73
    :cond_0
    const-string v2, "OplusOperatorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Whoops, service not initiated yet , print caller stack "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    .line 74
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 78
    .end local v1    # "mService":Landroid/operator/IOplusOperatorManager;
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 80
    :cond_2
    :goto_1
    sget-object v0, Landroid/operator/OplusOperatorManager;->sManager:Landroid/operator/OplusOperatorManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getActiveSimOperator()Ljava/lang/String;
    .locals 1

    .line 148
    const-string v0, "persist.sys.oplus.operator.opta"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getActiveSimRegion()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "persist.sys.oplus.operator.optb"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConfigMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "config"    # Ljava/lang/String;

    .line 94
    const-string v0, "getConfigMap "

    const-string v1, "OplusOperatorManager"

    const/4 v2, 0x0

    .line 96
    .local v2, "configMap":Ljava/util/Map;
    :try_start_0
    iget-object v3, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v3, :cond_0

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 98
    .local v3, "startTime":J
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v6, "config"

    invoke-virtual {v5, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v6, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    invoke-interface {v6, v5}, Landroid/operator/IOplusOperatorManager;->getConfigMap(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v6

    move-object v2, v6

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 102
    .local v6, "consumingTime":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v3    # "startTime":J
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "consumingTime":J
    :cond_0
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v3

    .line 105
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    nop

    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-object v2
.end method

.method public whitelist getCotaAppPackageNameList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "apkNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {v1}, Landroid/operator/IOplusOperatorManager;->getCotaAppPackageNameList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 223
    :cond_0
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "OplusOperatorManager"

    const-string v3, "getCotaAppPackageNameList "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getCotaInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_0

    .line 262
    invoke-interface {v1, p1}, Landroid/operator/IOplusOperatorManager;->getCotaInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 266
    :cond_0
    goto :goto_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "OplusOperatorManager"

    const-string v3, "getCotaInfo "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist getCotaMountState(Ljava/lang/String;)I
    .locals 4
    .param p1, "imagePath"    # Ljava/lang/String;

    .line 204
    const/4 v0, -0x1

    .line 206
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1, p1}, Landroid/operator/IOplusOperatorManager;->getCotaMountState(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 211
    :cond_0
    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "OplusOperatorManager"

    const-string v3, "getCotaMountState "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist grantCustomizedRuntimePermissions()V
    .locals 7

    .line 113
    const-string v0, "OplusOperatorManager"

    :try_start_0
    iget-object v1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_0

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 115
    .local v1, "startTime":J
    iget-object v3, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    invoke-interface {v3}, Landroid/operator/IOplusOperatorManager;->grantCustomizedRuntimePermissions()V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 117
    .local v3, "consumingTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "grantCustomizedPermissions  took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v1    # "startTime":J
    .end local v3    # "consumingTime":J
    :cond_0
    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "grantCustomizedPermissions "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist handleCotaCmd(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_0

    .line 240
    invoke-interface {v1, p1}, Landroid/operator/IOplusOperatorManager;->handleCotaCmd(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 244
    :cond_0
    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "OplusOperatorManager"

    const-string v3, "handleCotaCmd "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist isInSimTriggeredSystemBlackList(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1, p1}, Landroid/operator/IOplusOperatorManager;->isInSimTriggeredSystemBlackList(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 143
    :cond_0
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "ex":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "OplusOperatorManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInSimTriggeredSystemBlackList "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    nop

    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return v0
.end method

.method public whitelist mountCotaImage(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 185
    :try_start_0
    iget-object v0, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p1}, Landroid/operator/IOplusOperatorManager;->mountCotaImage(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OplusOperatorManager"

    const-string v2, "mountCotaImage "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifyCotaMounted()V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Landroid/operator/IOplusOperatorManager;->notifyCotaMounted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OplusOperatorManager"

    const-string v2, "notifyCotaMounted "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifyRegionSwitch(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 167
    :try_start_0
    iget-object v0, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Landroid/operator/IOplusOperatorManager;->notifyRegionSwitch(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OplusOperatorManager"

    const-string v2, "notifyRegionSwitch "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifySimSwitch(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "data"    # Landroid/os/Bundle;

    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0, p1}, Landroid/operator/IOplusOperatorManager;->notifySimSwitch(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OplusOperatorManager"

    const-string v2, "notifiySimSwitch "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist notifySmartCustomizationStart()V
    .locals 3

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0}, Landroid/operator/IOplusOperatorManager;->notifySmartCustomizationStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OplusOperatorManager"

    const-string v2, "notifySmartCustomizationStart "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist testAidl()V
    .locals 3

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/operator/OplusOperatorManager;->mService:Landroid/operator/IOplusOperatorManager;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Landroid/operator/IOplusOperatorManager;->testAidl()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "OplusOperatorManager"

    const-string v2, "testAidl "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
