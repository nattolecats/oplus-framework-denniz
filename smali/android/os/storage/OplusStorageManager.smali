.class public Landroid/os/storage/OplusStorageManager;
.super Ljava/lang/Object;
.source "OplusStorageManager.java"


# static fields
.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "oplusstoragemanagerservice"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusStorageManager"

.field private static blacklist sInstance:Landroid/os/storage/OplusStorageManager;


# instance fields
.field private blacklist mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroid/os/storage/OplusStorageManager;

    invoke-direct {v0}, Landroid/os/storage/OplusStorageManager;-><init>()V

    sput-object v0, Landroid/os/storage/OplusStorageManager;->sInstance:Landroid/os/storage/OplusStorageManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static declared-synchronized whitelist getInstance()Landroid/os/storage/OplusStorageManager;
    .locals 2

    const-class v0, Landroid/os/storage/OplusStorageManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Landroid/os/storage/OplusStorageManager;->sInstance:Landroid/os/storage/OplusStorageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getOplusStorageManagerService()V
    .locals 3

    .line 262
    :try_start_0
    iget-object v0, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-nez v0, :cond_0

    .line 263
    const-string v0, "oplusstoragemanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusStorageManager"

    const-string v2, "get oplusstoragemanagerservice error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist getPkgs()[Ljava/lang/String;
    .locals 5

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "pkgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 251
    .local v1, "callingUid":I
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getOplusStorageManagerService()V

    .line 253
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 256
    goto :goto_0

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackagesForUid failed for uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OplusStorageManager"

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method


# virtual methods
.method public whitelist addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "permBits"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 63
    if-eqz p2, :cond_5

    .line 65
    if-eqz p3, :cond_4

    .line 67
    if-eqz p5, :cond_3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAuthResultInfo permBits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusStorageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v0, "oplusstoragemanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 74
    const-string v2, "get oplusstoragemanagerservice is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 76
    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v2

    iput-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    .line 80
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v2, :cond_2

    .line 81
    invoke-interface {v2, p2, p3, p4, p5}, Landroid/os/storage/IOplusStorageManagerService;->addAuthResultInfo(IIILjava/lang/String;)V

    goto :goto_1

    .line 83
    :cond_2
    const-string v2, "oplusstoragemanagerservice addAuthResultInfo is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    const-string v2, "addAuthResultInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_2

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "mount service not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 68
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName was null, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pid was 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uid was 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearSDLockPassword()I
    .locals 6

    .line 295
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "pkgs":[Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 297
    const-string v3, "pkgs is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return v1

    .line 301
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_3

    .line 302
    const/4 v3, 0x0

    aget-object v4, v0, v3

    const-string v5, "com.coloros.movetosdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v3, v0, v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 305
    :cond_1
    const-string v3, "pkgs Permission denied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return v1

    .line 303
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v1}, Landroid/os/storage/IOplusStorageManagerService;->clearSDLockPassword()I

    move-result v1

    return v1

    .line 309
    :cond_3
    const-string v3, "clearSDLockPassword oplusstoragemanagerservice is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    nop

    .line 315
    return v1

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist decryptDek([BI[B[B[B[B)[B
    .locals 12
    .param p1, "protectedDek"    # [B
    .param p2, "protectType"    # I
    .param p3, "protectedKek"    # [B
    .param p4, "deviceNonce"    # [B
    .param p5, "kekID"    # [B
    .param p6, "appNonce"    # [B

    .line 121
    move-object v1, p0

    const-string v2, "OplusStorageManager"

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-nez p5, :cond_0

    goto :goto_3

    .line 126
    :cond_0
    const-string v0, "oplusstoragemanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    .line 127
    .local v10, "binder":Landroid/os/IBinder;
    if-nez v10, :cond_1

    .line 128
    const-string v0, "Failure to decrypt data, get oplusstoragemanagerservice is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, v1, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-static {v10}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v3

    if-eq v0, v3, :cond_2

    .line 130
    invoke-static {v10}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v0

    iput-object v0, v1, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    .line 134
    :cond_2
    :goto_0
    const/4 v11, 0x0

    .line 136
    .local v11, "dekData":[B
    :try_start_0
    iget-object v3, v1, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_3

    .line 137
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/storage/IOplusStorageManagerService;->decryptDek([BI[B[B[B[B)[B

    move-result-object v0

    move-object v11, v0

    goto :goto_1

    .line 139
    :cond_3
    const-string v0, "Failure to decrypt data, oplusstoragemanagerservice decryptDek is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    const-string v0, "decryptDek"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Failure to decrypt data, mount service not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v11

    .line 122
    .end local v10    # "binder":Landroid/os/IBinder;
    .end local v11    # "dekData":[B
    :cond_4
    :goto_3
    const-string v0, "Failure to decrypt data, decryptDek input byte is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist encryptDek([BI[B[B[B)Ljava/util/Map;
    .locals 9
    .param p1, "dek"    # [B
    .param p2, "protectType"    # I
    .param p3, "protectedKek"    # [B
    .param p4, "deviceNonce"    # [B
    .param p5, "kekID"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI[B[B[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 92
    const-string v0, "OplusStorageManager"

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    if-nez p5, :cond_0

    goto :goto_3

    .line 97
    :cond_0
    const-string v1, "oplusstoragemanagerservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 98
    .local v1, "binder":Landroid/os/IBinder;
    if-nez v1, :cond_1

    .line 99
    const-string v2, "Failure to encrypt data, get oplusstoragemanagerservice is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_1
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-static {v1}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 101
    invoke-static {v1}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v2

    iput-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    .line 105
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 107
    .local v2, "kekData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_3

    .line 108
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/os/storage/IOplusStorageManagerService;->encryptDek([BI[B[B[B)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 110
    :cond_3
    const-string v3, "Failure to encrypt data, oplusstoragemanagerservice encryptDek is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_1
    const-string v3, "encryptDek"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_2

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Failure to encrypt data, mount service not found"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-object v2

    .line 93
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "kekData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_4
    :goto_3
    const-string v1, "Failure to encrypt data, encryptDek input byte is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist eraseSDLock()V
    .locals 5

    .line 418
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "pkgs":[Ljava/lang/String;
    const-string v1, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 420
    const-string v2, "pkgs is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void

    .line 424
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v2, :cond_2

    .line 425
    const/4 v2, 0x0

    aget-object v2, v0, v2

    const-string v3, "com.coloros.movetosdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v2}, Landroid/os/storage/IOplusStorageManagerService;->eraseSDLock()V

    goto :goto_0

    .line 428
    :cond_1
    const-string v2, "pkgs Permission denied"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 433
    :cond_2
    const-string v2, "getSDLockState oplusstoragemanagerservice is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    nop

    .line 439
    return-void

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSDCardId()Ljava/lang/String;
    .locals 5

    .line 369
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "pkgs":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 371
    const-string v3, "pkgs is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v1

    .line 375
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_2

    .line 376
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "com.coloros.movetosdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    iget-object v1, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v1}, Landroid/os/storage/IOplusStorageManagerService;->getSDCardId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 379
    :cond_1
    const-string v3, "pkgs Permission denied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-object v1

    .line 383
    :cond_2
    const-string v3, "getSDCardId oplusstoragemanagerservice is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    nop

    .line 389
    return-object v1

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getSDLockState()I
    .locals 6

    .line 393
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "pkgs":[Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 395
    const-string v3, "pkgs is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return v1

    .line 399
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_3

    .line 400
    const/4 v3, 0x0

    aget-object v4, v0, v3

    const-string v5, "com.coloros.movetosdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v3, v0, v3

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 403
    :cond_1
    const-string v3, "pkgs Permission denied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return v1

    .line 401
    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v1}, Landroid/os/storage/IOplusStorageManagerService;->getSDLockState()I

    move-result v1

    return v1

    .line 408
    :cond_3
    const-string v3, "getSDLockState oplusstoragemanagerservice is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    nop

    .line 414
    return v1

    .line 410
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist getStorageData()I
    .locals 7

    .line 208
    const-string v0, "OplusStorageManager"

    const/4 v1, 0x0

    .line 209
    .local v1, "pkgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 210
    .local v2, "callingUid":I
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getOplusStorageManagerService()V

    .line 220
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackagesForUid failed for uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v3, -0x1

    if-nez v1, :cond_0

    .line 226
    const-string v4, "pkgs is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v3

    .line 230
    :cond_0
    const/4 v4, 0x0

    aget-object v5, v1, v4

    const-string v6, "com.coloros.phonemanager"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v1, v4

    const-string v6, "com.coloros.assistantscreen"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not allowed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v4, v1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to get the interface"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 232
    :cond_2
    :goto_1
    :try_start_1
    iget-object v4, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v4, :cond_3

    .line 233
    invoke-interface {v4}, Landroid/os/storage/IOplusStorageManagerService;->getStorageData()I

    move-result v0

    return v0

    .line 235
    :cond_3
    const-string v4, "oplusstoragemanagerservice is null"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 240
    nop

    .line 245
    :goto_2
    return v3

    .line 237
    :catch_1
    move-exception v3

    .line 238
    .restart local v3    # "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public whitelist getUnlockSdcardDeadline()J
    .locals 6

    .line 344
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "pkgs":[Ljava/lang/String;
    const-wide/16 v1, -0x1

    const-string v3, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 346
    const-string v4, "pkgs is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-wide v1

    .line 350
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v4, :cond_2

    .line 351
    const/4 v4, 0x0

    aget-object v4, v0, v4

    const-string v5, "com.coloros.movetosdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 352
    iget-object v1, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v1}, Landroid/os/storage/IOplusStorageManagerService;->getUnlockSdcardDeadline()J

    move-result-wide v1

    return-wide v1

    .line 354
    :cond_1
    const-string v4, "pkgs Permission denied"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-wide v1

    .line 359
    :cond_2
    const-string v4, "getUnlockSdcardDeadline oplusstoragemanagerservice is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    nop

    .line 365
    return-wide v1

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist initAeKek()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 150
    const-string v0, "oplusstoragemanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 151
    .local v0, "binder":Landroid/os/IBinder;
    const-string v1, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 152
    const-string v2, "get oplusstoragemanagerservice is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_0
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 154
    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v2

    iput-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    .line 158
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 160
    .local v2, "aeKekData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_2

    .line 161
    invoke-interface {v3}, Landroid/os/storage/IOplusStorageManagerService;->initAeKek()Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 163
    :cond_2
    const-string v3, "oplusstoragemanagerservice initAeKek is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_1
    const-string v3, "InitAeKek"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_2

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "mount service not found"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    if-nez v2, :cond_3

    .line 171
    const-string v3, "aeKekData is null, phone maybe locked"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v1, 0x0

    return-object v1

    .line 175
    :cond_3
    return-object v2
.end method

.method public whitelist initBeKek()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 179
    const-string v0, "oplusstoragemanagerservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 180
    .local v0, "binder":Landroid/os/IBinder;
    const-string v1, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 181
    const-string v2, "get oplusstoragemanagerservice is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_0
    iget-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 183
    invoke-static {v0}, Landroid/os/storage/IOplusStorageManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IOplusStorageManagerService;

    move-result-object v2

    iput-object v2, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    .line 187
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 189
    .local v2, "beKekData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v3}, Landroid/os/storage/IOplusStorageManagerService;->initBeKek()Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    .line 192
    :cond_2
    const-string v3, "oplusstoragemanagerservice initBeKek is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_1
    const-string v3, "InitBeKek"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_2

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "mount service not found"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    if-nez v2, :cond_3

    .line 200
    const-string v3, "beKekData is null, phone maybe locked"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v1, 0x0

    return-object v1

    .line 204
    :cond_3
    return-object v2
.end method

.method public whitelist setSDLockPassword(Ljava/lang/String;)I
    .locals 5
    .param p1, "pw"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "pkgs":[Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 273
    const-string v3, "pkgs is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v1

    .line 277
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_2

    .line 278
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "com.coloros.movetosdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    iget-object v1, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v1, p1}, Landroid/os/storage/IOplusStorageManagerService;->setSDLockPassword(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 281
    :cond_1
    const-string v3, "pkgs Permission denied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v1

    .line 285
    :cond_2
    const-string v3, "setSDLockPassword oplusstoragemanagerservice is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    nop

    .line 291
    return v1

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist unlockSDCard(Ljava/lang/String;)I
    .locals 5
    .param p1, "pw"    # Ljava/lang/String;

    .line 319
    invoke-direct {p0}, Landroid/os/storage/OplusStorageManager;->getPkgs()[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "pkgs":[Ljava/lang/String;
    const/4 v1, -0x1

    const-string v2, "OplusStorageManager"

    if-nez v0, :cond_0

    .line 321
    const-string v3, "pkgs is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return v1

    .line 325
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    if-eqz v3, :cond_2

    .line 326
    const/4 v3, 0x0

    aget-object v3, v0, v3

    const-string v4, "com.coloros.movetosdcard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    const-string v1, "clearSDLockPassword oplusstoragemanagerservice is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Landroid/os/storage/OplusStorageManager;->mOplusStorageManagerService:Landroid/os/storage/IOplusStorageManagerService;

    invoke-interface {v1, p1}, Landroid/os/storage/IOplusStorageManagerService;->unlockSDCard(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 330
    :cond_1
    const-string v3, "pkgs Permission denied"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v1

    .line 334
    :cond_2
    const-string v3, "unlockSDCard oplusstoragemanagerservice is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    nop

    .line 340
    return v1

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "err = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
