.class public Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;
.super Ljava/lang/Object;
.source "OplusShoulderPressureManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field public static final whitelist HALL_LEFT_PRESS_GEAR:I = 0x7c

.field public static final whitelist HALL_RIGHT_PRESS_GEAR:I = 0x7d

.field public static final whitelist MECHAICAL_KEY_PARAMS:I = 0x7f

.field public static final whitelist PRESS_CHARGE_STATE:I = 0x80

.field public static final whitelist PRESS_GAME_SWITCH_ENABLE:I = 0x7e

.field private static final blacklist TAG:Ljava/lang/String; = "OplusShoulderPressureManager"


# instance fields
.field private blacklist mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 71
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oplus/wrapper/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "OplusShoulderPressureManagerService"

    invoke-static {v0}, Lcom/oplus/wrapper/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 83
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 84
    const-string v1, "OplusShoulderPressureManager"

    const-string v2, "OplusShoulderPressureManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    invoke-static {v0}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 88
    invoke-static {v0}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist isShoulderPressureNodeSupport(II)Z
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I

    .line 188
    sget-boolean v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->DEBUG:Z

    const-string v1, ", deviceId :"

    const-string v2, "OplusShoulderPressureManager"

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShoulderPressureNodeSupport, uid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", pid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", nodeFlag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;->isShoulderPressureNodeSupport(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isShoulderPressureNodeSupport failed, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readShoulderPressureNodeFile(I)Ljava/lang/String;
    .locals 4
    .param p1, "nodeFlag"    # I

    .line 100
    sget-boolean v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->DEBUG:Z

    const-string v1, "OplusShoulderPressureManager"

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readShoulderPressureNodeFile, uid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", nodeFlag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    invoke-interface {v0, p1}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;->readShoulderPressureNodeFile(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readShoulderPressureNodeFile failed, err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist readShoulderPressureNodeFileByDevice(II)Ljava/lang/String;
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I

    .line 120
    sget-boolean v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->DEBUG:Z

    const-string v1, ", deviceId :"

    const-string v2, "OplusShoulderPressureManager"

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readShoulderPressureNodeFileByDevice, uid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", pid: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", nodeFlag: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;->readShoulderPressureNodeFileByDevice(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readShoulderPressureNodeFileByDevice failed, err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist writeShoulderPressureNodeFile(ILjava/lang/String;)Z
    .locals 4
    .param p1, "nodeFlag"    # I
    .param p2, "info"    # Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "OplusShoulderPressureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeShoulderPressureNodeFile, uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodeFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    :try_start_0
    const-class v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :try_start_1
    iget-object v1, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    invoke-interface {v1, p1, p2}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;->writeShoulderPressureNodeFile(ILjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;
    .end local p1    # "nodeFlag":I
    .end local p2    # "info":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    .restart local p0    # "this":Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;
    .restart local p1    # "nodeFlag":I
    .restart local p2    # "info":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusShoulderPressureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeShoulderPressureNodeFile failed, err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeShoulderPressureNodeFileByDevice(IILjava/lang/String;)Z
    .locals 4
    .param p1, "deviceId"    # I
    .param p2, "nodeFlag"    # I
    .param p3, "info"    # Ljava/lang/String;

    .line 165
    sget-boolean v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "OplusShoulderPressureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeShoulderPressureNodeFileByDevice, uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nodeFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    :try_start_0
    const-class v0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :try_start_1
    iget-object v1, p0, Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;->mOplusShoulderPressureManager:Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/oplus/shoulderpressure/IOplusShoulderPressureManager;->writeShoulderPressureNodeFileByDevice(IILjava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;
    .end local p1    # "deviceId":I
    .end local p2    # "nodeFlag":I
    .end local p3    # "info":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .restart local p0    # "this":Lcom/oplus/shoulderpressure/OplusShoulderPressureManager;
    .restart local p1    # "deviceId":I
    .restart local p2    # "nodeFlag":I
    .restart local p3    # "info":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusShoulderPressureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeShoulderPressureNodeFileByDevice failed, err: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
