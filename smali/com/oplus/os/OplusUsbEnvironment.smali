.class public Lcom/oplus/os/OplusUsbEnvironment;
.super Landroid/os/Environment;
.source "OplusUsbEnvironment.java"


# static fields
.field private static final blacklist DEFAULT_INTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/0"

.field public static final whitelist EXTERNAL:I = 0x2

.field public static final whitelist INTERNAL:I = 0x1

.field private static final blacklist MULTIAPP_INTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/999"

.field public static final whitelist NONE:I = -0x1

.field public static final whitelist OTG:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "OppoUsbEnvironmentSys"

.field private static blacklist sExternalSdDir:Ljava/lang/String;

.field private static blacklist sInited:Z

.field private static blacklist sInternalSdDir:Ljava/lang/String;

.field private static blacklist sLock:Ljava/lang/Object;

.field private static blacklist sMountService:Landroid/os/storage/IStorageManager;

.field private static blacklist sOtgPathes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sStorageListener:Landroid/os/storage/StorageEventListener;

.field private static blacklist sVolumeStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsExternalSdDir()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsOtgPathes()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsExternalSdDir(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetVolumes()V
    .locals 0

    invoke-static {}, Lcom/oplus/os/OplusUsbEnvironment;->getVolumes()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/os/OplusUsbEnvironment;->sInited:Z

    .line 67
    const-string v0, "/storage/emulated/0"

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    .line 71
    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    .line 304
    new-instance v0, Lcom/oplus/os/OplusUsbEnvironment$1;

    invoke-direct {v0}, Lcom/oplus/os/OplusUsbEnvironment$1;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sVolumeStateReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v0, Lcom/oplus/os/OplusUsbEnvironment$2;

    invoke-direct {v0}, Lcom/oplus/os/OplusUsbEnvironment$2;-><init>()V

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/os/Environment;-><init>()V

    return-void
.end method

.method public static whitelist getExternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 223
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getExternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 117
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    move-object v0, v2

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 118
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static whitelist getExternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 143
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    move-object v0, v2

    .line 144
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const-string v1, "unknown"

    return-object v1

    .line 148
    :cond_0
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 149
    .local v1, "sm":Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 152
    :cond_1
    const-string v2, "unknown"

    return-object v2

    .line 144
    .end local v1    # "sm":Landroid/os/storage/StorageManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static whitelist getInternalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 214
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 216
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 108
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    move-object v0, v2

    .line 109
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 109
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static whitelist getInternalSdState(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 126
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    move-object v0, v2

    .line 127
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    if-nez v0, :cond_0

    .line 129
    const-string v1, "unknown"

    return-object v1

    .line 131
    :cond_0
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 132
    .local v1, "sm":Landroid/os/storage/StorageManager;
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 135
    :cond_1
    const-string v2, "unknown"

    return-object v2

    .line 127
    .end local v1    # "sm":Landroid/os/storage/StorageManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static whitelist getMultiappSdDirectory()Ljava/lang/String;
    .locals 1

    .line 420
    const-string v0, "/storage/emulated/999"

    return-object v0
.end method

.method public static whitelist getOtgPath(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 195
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 196
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 198
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist getPathType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 230
    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 231
    monitor-exit v0

    return v1

    .line 233
    :cond_0
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 236
    :cond_1
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const/4 v1, 0x2

    monitor-exit v0

    return v1

    .line 239
    :cond_2
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    const/4 v1, 0x3

    monitor-exit v0

    return v1

    .line 243
    :cond_3
    monitor-exit v0

    return v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getVolumes()V
    .locals 9

    .line 369
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    const-string v1, "OppoUsbEnvironmentSys"

    if-nez v0, :cond_0

    .line 370
    const-string v0, "getVolumes: sMountService is null!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 375
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Landroid/os/storage/IStorageManager;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 376
    .local v0, "vols":[Landroid/os/storage/VolumeInfo;
    const/4 v3, 0x0

    sput-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    .line 377
    sget-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 379
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v4, v0, v2

    .line 386
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 387
    .local v5, "path":Ljava/lang/String;
    iget v6, v4, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 388
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 389
    .local v6, "userId":I
    if-eqz v5, :cond_3

    .line 390
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    .line 391
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVolumes: sInternalSdDir="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 396
    .end local v6    # "userId":I
    :cond_1
    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v6

    .line 397
    .local v6, "diskInfo":Landroid/os/storage/DiskInfo;
    if-eqz v6, :cond_3

    .line 398
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 399
    if-eqz v5, :cond_2

    .line 400
    sput-object v5, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    .line 401
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVolumes: sExternalSdDir="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_2
    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 405
    if-eqz v5, :cond_3

    sget-object v7, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 406
    sget-object v7, Lcom/oplus/os/OplusUsbEnvironment;->sOtgPathes:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVolumes: sOtgPathes.add="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "diskInfo":Landroid/os/storage/DiskInfo;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 414
    .end local v0    # "vols":[Landroid/os/storage/VolumeInfo;
    :cond_4
    goto :goto_2

    .line 412
    :catch_0
    move-exception v0

    .line 415
    :goto_2
    return-void
.end method

.method public static whitelist isExternalSDRemoved(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "path":Ljava/lang/String;
    sget-object v1, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 160
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    move-object v0, v2

    .line 161
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-nez v0, :cond_0

    .line 163
    const/4 v1, 0x1

    return v1

    .line 165
    :cond_0
    const-string v1, "unknown"

    .line 166
    .local v1, "state":Ljava/lang/String;
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 167
    .local v2, "sm":Landroid/os/storage/StorageManager;
    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v2, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    :cond_1
    const-string v3, "OppoUsbEnvironmentSys"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isExternalSDRemoved: the state of volume is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, "removed"

    .line 172
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 171
    return v3

    .line 161
    .end local v1    # "state":Ljava/lang/String;
    .end local v2    # "sm":Landroid/os/storage/StorageManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static whitelist isNestMounted()Z
    .locals 4

    .line 177
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/oplus/os/OplusUsbEnvironment;->sExternalSdDir:Ljava/lang/String;

    sget-object v3, Lcom/oplus/os/OplusUsbEnvironment;->sInternalSdDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    const/4 v1, 0x1

    .line 184
    :cond_1
    monitor-exit v0

    return v1

    .line 185
    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist isVolumeMounted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .line 203
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-static {p0}, Lcom/oplus/os/OplusUsbEnvironment;->update(Landroid/content/Context;)V

    .line 205
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 207
    .local v0, "sm":Landroid/os/storage/StorageManager;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 208
    const-string v1, "mounted"

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 210
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 205
    .end local v0    # "sm":Landroid/os/storage/StorageManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static blacklist update(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 75
    sget-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    if-nez v0, :cond_0

    .line 77
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    sput-object v0, Lcom/oplus/os/OplusUsbEnvironment;->sMountService:Landroid/os/storage/IStorageManager;

    .line 80
    :cond_0
    sget-boolean v0, Lcom/oplus/os/OplusUsbEnvironment;->sInited:Z

    if-nez v0, :cond_3

    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/os/OplusUsbEnvironment;->sInited:Z

    .line 82
    invoke-static {}, Lcom/oplus/os/OplusUsbEnvironment;->getVolumes()V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    .local v1, "contextApp":Landroid/content/Context;
    nop

    .line 87
    const-string v2, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 88
    .local v0, "hasPerm":Z
    :goto_0
    const-string v2, "OppoUsbEnvironmentSys"

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 89
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.os.storage.action.VOLUME_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    sget-object v4, Lcom/oplus/os/OplusUsbEnvironment;->sVolumeStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const-string v4, "update: registerReceiver sVolumeStateReceiver"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v3    # "filter":Landroid/content/IntentFilter;
    goto :goto_1

    .line 94
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update: hasPerm WRITE_MEDIA_STORAGE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", contextApp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 96
    .local v3, "sm":Landroid/os/storage/StorageManager;
    if-eqz v3, :cond_3

    .line 97
    sget-object v4, Lcom/oplus/os/OplusUsbEnvironment;->sStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 98
    const-string v4, "update: registerListener sStorageListener"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "hasPerm":Z
    .end local v1    # "contextApp":Landroid/content/Context;
    .end local v3    # "sm":Landroid/os/storage/StorageManager;
    :cond_3
    :goto_1
    return-void
.end method
