.class public Landroid/engineer/OplusEngineerManager;
.super Ljava/lang/Object;
.source "OplusEngineerManager.java"


# static fields
.field private static final blacklist ENGINEER_SERVICE_NAME:Ljava/lang/String; = "engineer"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static blacklist fastbootUnlock([BI)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .line 187
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 189
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 190
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/engineer/IOplusEngineerManager;->fastbootUnlock([BI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 192
    :catch_0
    move-exception v1

    goto :goto_0

    .line 193
    :cond_0
    nop

    .line 194
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist getBootImgWaterMark()Ljava/lang/String;
    .locals 2

    .line 145
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 147
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    invoke-interface {v0}, Landroid/engineer/IOplusEngineerManager;->getBootImgWaterMark()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0

    .line 151
    :cond_0
    nop

    .line 152
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCalibrationStatusFromNvram()[B
    .locals 2

    .line 102
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 104
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    invoke-interface {v0}, Landroid/engineer/IOplusEngineerManager;->getCalibrationStatusFromNvram()[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0

    .line 108
    :cond_0
    nop

    .line 109
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCarrierVersion()Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 48
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    invoke-interface {v0}, Landroid/engineer/IOplusEngineerManager;->getCarrierVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0

    .line 52
    :cond_0
    nop

    .line 53
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getCarrierVersionFromNvram()[B
    .locals 2

    .line 74
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 76
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 77
    :try_start_0
    invoke-interface {v0}, Landroid/engineer/IOplusEngineerManager;->getCarrierVersionFromNvram()[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 79
    :catch_0
    move-exception v1

    goto :goto_0

    .line 80
    :cond_0
    nop

    .line 81
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getDownloadStatus()Ljava/lang/String;
    .locals 2

    .line 32
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 34
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-interface {v0}, Landroid/engineer/IOplusEngineerManager;->getDownloadStatus()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 37
    :catch_0
    move-exception v1

    goto :goto_0

    .line 38
    :cond_0
    nop

    .line 39
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getSimOperatorSwitchStatus()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 118
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0}, Landroid/engineer/IOplusEngineerManager;->getSimOperatorSwitchStatus()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 121
    :catch_0
    move-exception v1

    goto :goto_0

    .line 122
    :cond_0
    nop

    .line 123
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 214
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 216
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 217
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/engineer/IOplusEngineerManager;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 219
    :catch_0
    move-exception v1

    goto :goto_0

    .line 220
    :cond_0
    nop

    .line 221
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist init()Landroid/engineer/IOplusEngineerManager;
    .locals 1

    .line 25
    const-string v0, "engineer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/engineer/IOplusEngineerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isEngineerItemInBlackList(ILjava/lang/String;)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "item"    # Ljava/lang/String;

    .line 228
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 230
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/engineer/IOplusEngineerManager;->isEngineerItemInBlackList(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 233
    :catch_0
    move-exception v1

    goto :goto_0

    .line 234
    :cond_0
    nop

    .line 235
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist readEngineerData(I)[B
    .locals 2
    .param p0, "type"    # I

    .line 159
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 161
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 162
    :try_start_0
    invoke-interface {v0, p0}, Landroid/engineer/IOplusEngineerManager;->readEngineerData(I)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0

    .line 165
    :cond_0
    nop

    .line 166
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist saveCarrierVersionToNvram([B)Z
    .locals 2
    .param p0, "version"    # [B

    .line 88
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 90
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v0, p0}, Landroid/engineer/IOplusEngineerManager;->saveCarrierVersionToNvram([B)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 93
    :catch_0
    move-exception v1

    goto :goto_0

    .line 94
    :cond_0
    nop

    .line 95
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist saveEngineerData(I[BI)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "engineerData"    # [B
    .param p2, "length"    # I

    .line 173
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 175
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Landroid/engineer/IOplusEngineerManager;->saveEngineerData(I[BI)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0

    .line 179
    :cond_0
    nop

    .line 180
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist setCarrierVersion(Ljava/lang/String;)Z
    .locals 2
    .param p0, "version"    # Ljava/lang/String;

    .line 60
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 62
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    invoke-interface {v0, p0}, Landroid/engineer/IOplusEngineerManager;->setCarrierVersion(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0

    .line 66
    :cond_0
    nop

    .line 67
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist setSimOperatorSwitch(Ljava/lang/String;)Z
    .locals 2
    .param p0, "state"    # Ljava/lang/String;

    .line 130
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 132
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 133
    :try_start_0
    invoke-interface {v0, p0}, Landroid/engineer/IOplusEngineerManager;->setSimOperatorSwitch(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0

    .line 136
    :cond_0
    nop

    .line 137
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .line 201
    invoke-static {}, Landroid/engineer/OplusEngineerManager;->init()Landroid/engineer/IOplusEngineerManager;

    move-result-object v0

    .line 203
    .local v0, "manager":Landroid/engineer/IOplusEngineerManager;
    if-eqz v0, :cond_0

    .line 204
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/engineer/IOplusEngineerManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    goto :goto_1

    .line 207
    :cond_0
    :goto_0
    nop

    .line 208
    :goto_1
    return-void
.end method
