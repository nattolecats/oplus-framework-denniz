.class Lcom/oplus/orms/OplusResourceManagerInner;
.super Ljava/lang/Object;
.source "OplusResourceManagerInner.java"


# static fields
.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.orms.OplusResourceManagerService"

.field private static final blacklist ORMS_BINDER_CHECK_ACCESS_PERMISSION:I = 0x1

.field private static final blacklist ORMS_BINDER_CLEAR_SCENE_ACTION:I = 0x3

.field private static final blacklist ORMS_BINDER_GET_MODE_STATUS:I = 0x9

.field private static final blacklist ORMS_BINDER_GET_PERF_LIMIT:I = 0xa

.field private static final blacklist ORMS_BINDER_READ_FILE:I = 0x7

.field private static final blacklist ORMS_BINDER_READ_FILE_LIST:I = 0x8

.field private static final blacklist ORMS_BINDER_RESET_CTRL_DATA:I = 0x6

.field private static final blacklist ORMS_BINDER_SET_CTRL_DATA:I = 0x5

.field private static final blacklist ORMS_BINDER_SET_NOTIFICATION:I = 0x4

.field private static final blacklist ORMS_BINDER_SET_SCENE_ACTION:I = 0x2

.field private static final blacklist ORMS_SERVICE:Ljava/lang/String; = "OplusResourceManagerService"

.field private static final blacklist TAG:Ljava/lang/String; = "Orms_ManagerInner"

.field private static blacklist sDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private static volatile blacklist sOrmsManagerInner:Lcom/oplus/orms/OplusResourceManagerInner;

.field private static blacklist sRemote:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfputsRemote(Landroid/os/IBinder;)V
    .locals 0

    sput-object p0, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sOrmsManagerInner:Lcom/oplus/orms/OplusResourceManagerInner;

    .line 51
    new-instance v0, Lcom/oplus/orms/OplusResourceManagerInner$1;

    invoke-direct {v0}, Lcom/oplus/orms/OplusResourceManagerInner$1;-><init>()V

    sput-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->connectOrmsCoreService()Landroid/os/IBinder;

    .line 61
    return-void
.end method

.method protected static blacklist checkAccessPermission(Ljava/lang/String;)I
    .locals 7
    .param p0, "identity"    # Ljava/lang/String;

    .line 96
    const/4 v0, -0x1

    .line 97
    .local v0, "result":I
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    return v0

    .line 100
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 101
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 103
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    sget-object v3, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v3, v5, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 106
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_1

    move v4, v5

    :cond_1
    move v0, v4

    .line 111
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 113
    goto :goto_1

    .line 111
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 107
    :catch_0
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Orms_ManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check access permission failed! because "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 114
    :goto_1
    return v0

    .line 111
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 113
    throw v3
.end method

.method private static blacklist connectOrmsCoreService()Landroid/os/IBinder;
    .locals 3

    .line 75
    const-string v0, "OplusResourceManagerService"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    .line 76
    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    sget-object v1, Lcom/oplus/orms/OplusResourceManagerInner;->sDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    sput-object v1, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    .line 83
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method protected static blacklist getInstance()Lcom/oplus/orms/OplusResourceManagerInner;
    .locals 2

    .line 64
    sget-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sOrmsManagerInner:Lcom/oplus/orms/OplusResourceManagerInner;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/oplus/orms/OplusResourceManagerInner;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/oplus/orms/OplusResourceManagerInner;->sOrmsManagerInner:Lcom/oplus/orms/OplusResourceManagerInner;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/oplus/orms/OplusResourceManagerInner;

    invoke-direct {v1}, Lcom/oplus/orms/OplusResourceManagerInner;-><init>()V

    sput-object v1, Lcom/oplus/orms/OplusResourceManagerInner;->sOrmsManagerInner:Lcom/oplus/orms/OplusResourceManagerInner;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sOrmsManagerInner:Lcom/oplus/orms/OplusResourceManagerInner;

    return-object v0
.end method

.method private blacklist obtainRandomHandle()J
    .locals 4

    .line 118
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 119
    .local v0, "random":Ljava/security/SecureRandom;
    const/16 v1, 0x14

    new-array v1, v1, [B

    .line 120
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 121
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private static blacklist ormsCoreEnable()Z
    .locals 2

    .line 87
    sget-object v0, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->connectOrmsCoreService()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const-string v0, "Orms_ManagerInner"

    const-string v1, "cannot connect to orms core service!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected blacklist clrCtrlData(Ljava/lang/String;)V
    .locals 6
    .param p1, "identity"    # Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 241
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 243
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    sget-object v2, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    goto :goto_1

    .line 250
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 246
    :catch_0
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Orms_ManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to clear ctrl data failed! because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 253
    :goto_1
    return-void

    .line 250
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v2
.end method

.method protected blacklist clrSceneAction(Ljava/lang/String;J)V
    .locals 6
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "request"    # J

    .line 151
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 157
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    sget-object v2, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    goto :goto_1

    .line 165
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 161
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Orms_ManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to clear scene action failed! because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 168
    :goto_1
    return-void

    .line 165
    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 167
    throw v2
.end method

.method protected blacklist getModeStatus(Ljava/lang/String;I)I
    .locals 7
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .line 256
    const/4 v0, -0x1

    .line 257
    .local v0, "result":I
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    return v0

    .line 260
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 263
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    sget-object v3, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 267
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 272
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    goto :goto_1

    .line 272
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 268
    :catch_0
    move-exception v3

    .line 269
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "Orms_ManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try to get mode status failed! because "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 275
    :goto_1
    return v0

    .line 272
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v3
.end method

.method protected blacklist getPerfLimit(Ljava/lang/String;)[[[J
    .locals 22
    .param p1, "identity"    # Ljava/lang/String;

    .line 279
    const/4 v0, 0x0

    new-array v1, v0, [[[J

    .line 280
    .local v1, "result":[[[J
    new-array v2, v0, [J

    .line 281
    .local v2, "temp":[J
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 282
    return-object v4

    .line 285
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 286
    .local v3, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 288
    .local v5, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v6, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    move-object/from16 v6, p1

    :try_start_1
    invoke-virtual {v3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    sget-object v7, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/16 v8, 0xa

    invoke-interface {v7, v8, v3, v5, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 292
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 293
    invoke-virtual {v5}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v7

    .line 299
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 304
    const/4 v7, 0x0

    .line 307
    .local v7, "index":I
    const/4 v9, 0x5

    .line 308
    .local v9, "HEAD_INFO_LEN":I
    if-eqz v2, :cond_3

    :try_start_2
    array-length v10, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    const/4 v11, 0x5

    if-lt v10, v11, :cond_3

    .line 309
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "index":I
    .local v10, "index":I
    :try_start_3
    aget-wide v12, v2, v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    long-to-int v7, v12

    .line 310
    .local v7, "timeLen":I
    add-int/lit8 v12, v10, 0x1

    .end local v10    # "index":I
    .local v12, "index":I
    :try_start_4
    aget-wide v13, v2, v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    long-to-int v10, v13

    .line 311
    .local v10, "cpuLen":I
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    :try_start_5
    aget-wide v14, v2, v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    long-to-int v12, v14

    .line 312
    .local v12, "gpuLen":I
    add-int/lit8 v14, v13, 0x1

    move-object/from16 v16, v5

    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v13    # "index":I
    .local v14, "index":I
    .local v16, "reply":Landroid/os/Parcel;
    :try_start_6
    aget-wide v4, v2, v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    long-to-int v4, v4

    .line 313
    .local v4, "schedLen":I
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "index":I
    .local v5, "index":I
    :try_start_7
    aget-wide v13, v2, v14

    long-to-int v13, v13

    .line 314
    .local v13, "limitLen":I
    new-array v14, v13, [[[J

    move-object v1, v14

    .line 316
    mul-int/lit8 v14, v10, 0x4

    add-int/2addr v14, v7

    mul-int/lit8 v17, v12, 0x4

    add-int v14, v14, v17

    mul-int/lit8 v17, v4, 0x2

    add-int v14, v14, v17

    mul-int/2addr v14, v13

    add-int/2addr v14, v11

    move/from16 v18, v9

    .end local v9    # "HEAD_INFO_LEN":I
    .local v18, "HEAD_INFO_LEN":I
    int-to-long v8, v14

    .line 318
    .local v8, "total":J
    array-length v14, v2

    move/from16 v19, v12

    .end local v12    # "gpuLen":I
    .local v19, "gpuLen":I
    int-to-long v11, v14

    cmp-long v11, v11, v8

    if-nez v11, :cond_2

    .line 319
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v13, :cond_1

    .line 320
    const/16 v12, 0xb

    new-array v12, v12, [[J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 321
    .local v12, "limit":[[J
    add-int v14, v5, v7

    move/from16 v20, v14

    .end local v5    # "index":I
    .local v20, "index":I
    :try_start_8
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    aput-object v5, v12, v0

    .line 322
    move/from16 v5, v20

    .end local v20    # "index":I
    .restart local v5    # "index":I
    add-int v14, v5, v10

    move/from16 v20, v14

    .end local v5    # "index":I
    .restart local v20    # "index":I
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v12, v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 323
    move/from16 v5, v20

    .end local v20    # "index":I
    .restart local v5    # "index":I
    add-int v14, v5, v10

    move/from16 v20, v14

    .end local v5    # "index":I
    .restart local v20    # "index":I
    :try_start_9
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    const/4 v14, 0x2

    aput-object v5, v12, v14
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 324
    const/4 v5, 0x3

    move/from16 v14, v20

    .end local v20    # "index":I
    .restart local v14    # "index":I
    add-int v0, v14, v10

    move/from16 v21, v0

    .end local v14    # "index":I
    .local v21, "index":I
    :try_start_a
    invoke-static {v2, v14, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    aput-object v0, v12, v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 325
    move/from16 v5, v21

    .end local v21    # "index":I
    .restart local v5    # "index":I
    add-int v0, v5, v10

    move v14, v0

    .end local v5    # "index":I
    .restart local v14    # "index":I
    :try_start_b
    invoke-static {v2, v5, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    const/4 v5, 0x4

    aput-object v0, v12, v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 326
    add-int v0, v14, v19

    move v5, v0

    .end local v14    # "index":I
    .restart local v5    # "index":I
    :try_start_c
    invoke-static {v2, v14, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    const/4 v14, 0x5

    aput-object v0, v12, v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 327
    const/4 v0, 0x6

    add-int v14, v5, v19

    move/from16 v21, v14

    .end local v5    # "index":I
    .restart local v21    # "index":I
    :try_start_d
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    aput-object v5, v12, v0

    .line 328
    const/4 v0, 0x7

    move/from16 v5, v21

    .end local v21    # "index":I
    .restart local v5    # "index":I
    add-int v14, v5, v19

    move/from16 v21, v14

    .end local v5    # "index":I
    .restart local v21    # "index":I
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    aput-object v5, v12, v0

    .line 329
    const/16 v0, 0x8

    move/from16 v5, v21

    .end local v21    # "index":I
    .restart local v5    # "index":I
    add-int v14, v5, v19

    move/from16 v21, v14

    .end local v5    # "index":I
    .restart local v21    # "index":I
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    aput-object v5, v12, v0

    .line 330
    const/16 v0, 0x9

    move/from16 v5, v21

    .end local v21    # "index":I
    .restart local v5    # "index":I
    add-int v14, v5, v4

    move/from16 v21, v14

    .end local v5    # "index":I
    .restart local v21    # "index":I
    invoke-static {v2, v5, v14}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v5

    aput-object v5, v12, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 331
    move/from16 v5, v21

    .end local v21    # "index":I
    .restart local v5    # "index":I
    add-int v0, v5, v4

    move v14, v0

    .end local v5    # "index":I
    .restart local v14    # "index":I
    :try_start_e
    invoke-static {v2, v5, v0}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    const/16 v5, 0xa

    aput-object v0, v12, v5

    .line 332
    aput-object v12, v1, v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 319
    .end local v12    # "limit":[[J
    add-int/lit8 v11, v11, 0x1

    move v5, v14

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 336
    .end local v4    # "schedLen":I
    .end local v7    # "timeLen":I
    .end local v8    # "total":J
    .end local v10    # "cpuLen":I
    .end local v11    # "i":I
    .end local v13    # "limitLen":I
    .end local v14    # "index":I
    .end local v18    # "HEAD_INFO_LEN":I
    .end local v19    # "gpuLen":I
    .restart local v21    # "index":I
    :catch_0
    move-exception v0

    move/from16 v5, v21

    move v7, v5

    .end local v21    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .end local v5    # "index":I
    .restart local v20    # "index":I
    :catch_1
    move-exception v0

    move/from16 v14, v20

    move v7, v14

    .end local v20    # "index":I
    .restart local v14    # "index":I
    goto :goto_1

    .end local v14    # "index":I
    .restart local v20    # "index":I
    :catch_2
    move-exception v0

    move/from16 v5, v20

    move v7, v5

    .end local v20    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 319
    .restart local v4    # "schedLen":I
    .restart local v7    # "timeLen":I
    .restart local v8    # "total":J
    .restart local v10    # "cpuLen":I
    .restart local v11    # "i":I
    .restart local v13    # "limitLen":I
    .restart local v18    # "HEAD_INFO_LEN":I
    .restart local v19    # "gpuLen":I
    :cond_1
    move v7, v5

    goto :goto_2

    .line 318
    .end local v11    # "i":I
    :cond_2
    move v7, v5

    goto :goto_2

    .line 336
    .end local v4    # "schedLen":I
    .end local v7    # "timeLen":I
    .end local v8    # "total":J
    .end local v10    # "cpuLen":I
    .end local v13    # "limitLen":I
    .end local v18    # "HEAD_INFO_LEN":I
    .end local v19    # "gpuLen":I
    :catch_3
    move-exception v0

    move v7, v5

    goto :goto_1

    .end local v5    # "index":I
    .restart local v14    # "index":I
    :catch_4
    move-exception v0

    move v7, v14

    goto :goto_1

    .end local v14    # "index":I
    .end local v16    # "reply":Landroid/os/Parcel;
    .local v5, "reply":Landroid/os/Parcel;
    .local v13, "index":I
    :catch_5
    move-exception v0

    move-object/from16 v16, v5

    move v7, v13

    .end local v5    # "reply":Landroid/os/Parcel;
    .restart local v16    # "reply":Landroid/os/Parcel;
    goto :goto_1

    .end local v13    # "index":I
    .end local v16    # "reply":Landroid/os/Parcel;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .local v12, "index":I
    :catch_6
    move-exception v0

    move-object/from16 v16, v5

    move v7, v12

    .end local v5    # "reply":Landroid/os/Parcel;
    .restart local v16    # "reply":Landroid/os/Parcel;
    goto :goto_1

    .end local v12    # "index":I
    .end local v16    # "reply":Landroid/os/Parcel;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .local v10, "index":I
    :catch_7
    move-exception v0

    move-object/from16 v16, v5

    move v7, v10

    .end local v5    # "reply":Landroid/os/Parcel;
    .restart local v16    # "reply":Landroid/os/Parcel;
    goto :goto_1

    .end local v10    # "index":I
    .end local v16    # "reply":Landroid/os/Parcel;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .local v7, "index":I
    :catch_8
    move-exception v0

    move-object/from16 v16, v5

    .line 337
    .end local v5    # "reply":Landroid/os/Parcel;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "reply":Landroid/os/Parcel;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    const/4 v4, 0x0

    return-object v4

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v16    # "reply":Landroid/os/Parcel;
    .restart local v5    # "reply":Landroid/os/Parcel;
    .restart local v9    # "HEAD_INFO_LEN":I
    :cond_3
    move-object/from16 v16, v5

    move/from16 v18, v9

    .line 339
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v9    # "HEAD_INFO_LEN":I
    .restart local v16    # "reply":Landroid/os/Parcel;
    :goto_2
    nop

    .line 340
    return-object v1

    .line 299
    .end local v7    # "index":I
    .end local v16    # "reply":Landroid/os/Parcel;
    .restart local v5    # "reply":Landroid/os/Parcel;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 294
    :catch_9
    move-exception v0

    goto :goto_4

    .line 299
    :catchall_1
    move-exception v0

    move-object/from16 v6, p1

    :goto_3
    move-object/from16 v16, v5

    .end local v5    # "reply":Landroid/os/Parcel;
    .restart local v16    # "reply":Landroid/os/Parcel;
    goto :goto_5

    .line 294
    .end local v16    # "reply":Landroid/os/Parcel;
    .restart local v5    # "reply":Landroid/os/Parcel;
    :catch_a
    move-exception v0

    move-object/from16 v6, p1

    :goto_4
    move-object/from16 v16, v5

    .line 295
    .end local v5    # "reply":Landroid/os/Parcel;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "reply":Landroid/os/Parcel;
    :try_start_f
    const-string v4, "Orms_ManagerInner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to get performance limit! because "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 297
    nop

    .line 299
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 297
    const/4 v4, 0x0

    return-object v4

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    :goto_5
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v0
.end method

.method protected blacklist setCtrlData(Ljava/lang/String;Lcom/oplus/orms/info/OrmsCtrlDataParam;)V
    .locals 8
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "ctrlData"    # Lcom/oplus/orms/info/OrmsCtrlDataParam;

    .line 196
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 199
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 202
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget v2, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuClusterNum:I

    .line 205
    .local v2, "cpuClusterNum":I
    iget v3, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->gpuClusterNum:I

    .line 206
    .local v3, "gpuClusterNum":I
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    const/4 v4, 0x0

    .local v4, "m":I
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v4, v2, :cond_1

    .line 209
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuCoreCtrlData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuCoreCtrlData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v6

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuFreqCtrlData:[[I

    aget-object v7, v7, v4

    aget v5, v7, v5

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v5, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuFreqCtrlData:[[I

    aget-object v5, v5, v4

    aget v5, v5, v6

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v5, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuCtrlType:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 215
    .end local v4    # "m":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "m":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 216
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->gpuCoreCtrlData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->gpuCoreCtrlData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v6

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->gpuFreqCtrlData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->gpuFreqCtrlData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v6

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->gpuCtrlType:[I

    aget v7, v7, v4

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 222
    .end local v4    # "m":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "m":I
    :goto_2
    add-int/lit8 v7, v2, -0x1

    if-ge v4, v7, :cond_3

    .line 223
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuMigData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v5

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-object v7, p2, Lcom/oplus/orms/info/OrmsCtrlDataParam;->cpuMigData:[[I

    aget-object v7, v7, v4

    aget v7, v7, v6

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 226
    .end local v4    # "m":I
    :cond_3
    sget-object v4, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    nop

    .end local v2    # "cpuClusterNum":I
    .end local v3    # "gpuClusterNum":I
    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_4

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Orms_ManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to set ctrl data failed! because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    nop

    .line 234
    return-void

    .line 231
    :goto_4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    throw v2
.end method

.method protected blacklist setNotification(Ljava/lang/String;Lcom/oplus/orms/info/OrmsNotifyParam;)V
    .locals 6
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "ormsNotifyParam"    # Lcom/oplus/orms/info/OrmsNotifyParam;

    .line 171
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 177
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget v2, p2, Lcom/oplus/orms/info/OrmsNotifyParam;->msgSrc:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v2, p2, Lcom/oplus/orms/info/OrmsNotifyParam;->msgType:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v2, p2, Lcom/oplus/orms/info/OrmsNotifyParam;->param1:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v2, p2, Lcom/oplus/orms/info/OrmsNotifyParam;->param2:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v2, p2, Lcom/oplus/orms/info/OrmsNotifyParam;->param3:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v2, p2, Lcom/oplus/orms/info/OrmsNotifyParam;->param4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    sget-object v2, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 186
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "Orms_ManagerInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to set notification failed! because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    nop

    .line 193
    return-void

    .line 190
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw v2
.end method

.method protected blacklist setSceneAction(Ljava/lang/String;Lcom/oplus/orms/info/OrmsSaParam;)J
    .locals 8
    .param p1, "identity"    # Ljava/lang/String;
    .param p2, "ormsSaParam"    # Lcom/oplus/orms/info/OrmsSaParam;

    .line 125
    const-wide/16 v0, -0x1

    .line 126
    .local v0, "request":J
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->ormsCoreEnable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    return-wide v0

    .line 129
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 130
    .local v2, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 131
    .local v3, "reply":Landroid/os/Parcel;
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManagerInner;->obtainRandomHandle()J

    move-result-wide v0

    .line 133
    :try_start_0
    const-string v4, "com.oplus.orms.OplusResourceManagerService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object v4, p2, Lcom/oplus/orms/info/OrmsSaParam;->scene:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v4, p2, Lcom/oplus/orms/info/OrmsSaParam;->action:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget v4, p2, Lcom/oplus/orms/info/OrmsSaParam;->timeout:I

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    sget-object v4, Lcom/oplus/orms/OplusResourceManagerInner;->sRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 140
    :catch_0
    move-exception v4

    .line 141
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "Orms_ManagerInner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try to set scene action failed! because "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-wide v0

    .line 144
    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v4
.end method
