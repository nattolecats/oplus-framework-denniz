.class public Lcom/oplus/app/OplusHansFreezeManager;
.super Ljava/lang/Object;
.source "OplusHansFreezeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;,
        Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;,
        Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;,
        Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;
    }
.end annotation


# static fields
.field private static final blacklist BUNDLE_KEY_LIST:Ljava/lang/String; = "list"

.field private static final blacklist BUNDLE_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist DEBUG:Z

.field public static final whitelist FREEZE_INFO_SUPPORT_VERSION:I = 0x1

.field public static final whitelist FREEZE_LEVEL:Ljava/lang/String; = "level"

.field public static final whitelist FREEZE_LEVEL_FOUR:I = 0x4

.field public static final whitelist FREEZE_LEVEL_ONE:I = 0x1

.field public static final whitelist FREEZE_LEVEL_THREE:I = 0x3

.field public static final whitelist FREEZE_LEVEL_TWO:I = 0x2

.field public static final whitelist FREEZE_TYPE_ADD:Ljava/lang/String; = "add"

.field public static final whitelist FREEZE_TYPE_RM:Ljava/lang/String; = "rm"

.field public static final whitelist PACKAGE:Ljava/lang/String; = "pkg"

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "oplus_freeze"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusHansFreezeManager"

.field public static final whitelist UID:Ljava/lang/String; = "uid"

.field private static volatile blacklist sInstance:Lcom/oplus/app/OplusHansFreezeManager;


# instance fields
.field private final blacklist mColorHansCallBackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;",
            "Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFreezeInfoCallBackMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;",
            "Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOAms:Landroid/app/OplusActivityManager;

.field private final blacklist mService:Lcom/oplus/app/IOplusHansFreezeManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 52
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    .line 73
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    .line 74
    nop

    .line 75
    const-string v0, "oplus_freeze"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/oplus/app/IOplusHansFreezeManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/app/IOplusHansFreezeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mService:Lcom/oplus/app/IOplusHansFreezeManager;

    .line 76
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/app/OplusHansFreezeManager;
    .locals 2

    .line 62
    sget-object v0, Lcom/oplus/app/OplusHansFreezeManager;->sInstance:Lcom/oplus/app/OplusHansFreezeManager;

    if-nez v0, :cond_1

    .line 63
    const-class v0, Lcom/oplus/app/OplusHansFreezeManager;

    monitor-enter v0

    .line 64
    :try_start_0
    sget-object v1, Lcom/oplus/app/OplusHansFreezeManager;->sInstance:Lcom/oplus/app/OplusHansFreezeManager;

    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/oplus/app/OplusHansFreezeManager;

    invoke-direct {v1}, Lcom/oplus/app/OplusHansFreezeManager;-><init>()V

    sput-object v1, Lcom/oplus/app/OplusHansFreezeManager;->sInstance:Lcom/oplus/app/OplusHansFreezeManager;

    .line 67
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/app/OplusHansFreezeManager;->sInstance:Lcom/oplus/app/OplusHansFreezeManager;

    return-object v0
.end method


# virtual methods
.method public whitelist enterFastFreezer(Landroid/content/Context;[IJLjava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uids"    # [I
    .param p3, "timeout"    # J
    .param p5, "reason"    # Ljava/lang/String;

    .line 187
    const-string v0, "OplusHansFreezeManager"

    if-nez p1, :cond_0

    .line 188
    const-string v1, "enterFastFreezer context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 191
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 192
    const-string v1, "enterFastFreezer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    move-wide v5, p3

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/app/OplusActivityManager;->enterFastFreezer(Ljava/lang/String;[IJLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_2
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterFastFreezer remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist exitFastFreezer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # Ljava/lang/String;

    .line 204
    const-string v0, "OplusHansFreezeManager"

    if-nez p1, :cond_0

    .line 205
    const-string v1, "exitFastFreezer context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void

    .line 208
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 209
    const-string v1, "exitFastFreezer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/app/OplusActivityManager;->exitFastFreezer(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_2
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exitFastFreezer remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getFreezeInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/app/OplusFreezeInfo;",
            ">;"
        }
    .end annotation

    .line 361
    if-nez p1, :cond_0

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 364
    :cond_0
    sget-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    const-string v1, "OplusHansFreezeManager"

    if-eqz v0, :cond_1

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFreezeInfo"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mService:Lcom/oplus/app/IOplusHansFreezeManager;

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oplus/app/IOplusHansFreezeManager;->getFreezeInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 370
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusFreezeInfo;>;"
    if-eqz v0, :cond_2

    .line 371
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 376
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/app/OplusFreezeInfo;>;"
    :cond_2
    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreezeInfo remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getFreezeInfoSupportVersion()I
    .locals 1

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getFrozenPackageList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    sget-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    const-string v1, "OplusHansFreezeManager"

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "getFrozenPackageList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mService:Lcom/oplus/app/IOplusHansFreezeManager;

    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0}, Lcom/oplus/app/IOplusHansFreezeManager;->getFrozenPackageList()Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 280
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFrozenPackageList remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getTrafficBytesList(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 235
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    const-string v1, "OplusHansFreezeManager"

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "getTrafficBytesList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getTrafficBytesList(Ljava/util/ArrayList;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 244
    :cond_1
    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrafficBytesList remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public whitelist getTrafficPacketList(Ljava/util/ArrayList;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 249
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    const-string v1, "OplusHansFreezeManager"

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "getTrafficPacketList"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getTrafficPacketList(Ljava/util/ArrayList;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :cond_1
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTrafficPacketList remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    return-object v0
.end method

.method public whitelist isFrozenByHans(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 221
    sget-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    const-string v1, "OplusHansFreezeManager"

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "isFrozenByHans"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->isFrozenByHans(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 230
    :cond_1
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFrozenByHans remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerFreezeInfoListener(Landroid/content/Context;Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;

    .line 293
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 297
    const-string v1, "OplusHansFreezeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerFreezeInfoListener caller package name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 301
    const-string v2, "OplusHansFreezeManager"

    const-string v3, "already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    monitor-exit v1

    return v0

    .line 304
    :cond_2
    new-instance v0, Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;

    invoke-direct {v0, p0, p2}, Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;-><init>(Lcom/oplus/app/OplusHansFreezeManager;Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .local v0, "delegate":Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;
    :try_start_1
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mService:Lcom/oplus/app/IOplusHansFreezeManager;

    if-eqz v2, :cond_4

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/oplus/app/IOplusHansFreezeManager;->registerFreezeInfoListener(Ljava/lang/String;Lcom/oplus/app/IOplusFreezeInfoListener;)Z

    move-result v2

    .line 308
    .local v2, "result":Z
    if-eqz v2, :cond_3

    .line 309
    iget-object v3, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    :cond_3
    :try_start_2
    monitor-exit v1

    return v2

    .line 315
    .end local v2    # "result":Z
    :cond_4
    goto :goto_0

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusHansFreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerHansListener remoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .end local v0    # "delegate":Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 317
    const/4 v0, 0x1

    return v0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 294
    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist registerHansListener(Landroid/content/Context;Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;

    .line 79
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 83
    const-string v1, "OplusHansFreezeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHansListener callBack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 87
    const-string v2, "OplusHansFreezeManager"

    const-string v3, "already register before"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v1

    return v0

    .line 90
    :cond_2
    new-instance v0, Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;

    invoke-direct {v0, p0, p2}, Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;-><init>(Lcom/oplus/app/OplusHansFreezeManager;Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .local v0, "delegate":Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;
    :try_start_1
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/app/OplusActivityManager;->registerHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z

    move-result v2

    .line 94
    .local v2, "result":Z
    if-eqz v2, :cond_3

    .line 95
    iget-object v3, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_3
    :try_start_2
    monitor-exit v1

    return v2

    .line 101
    .end local v2    # "result":Z
    :cond_4
    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusHansFreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerHansListener remoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "delegate":Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1

    .line 103
    const/4 v0, 0x1

    return v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 80
    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist setAppFreeze(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 130
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    const-string v2, "OplusHansFreezeManager"

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppFreeze list = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v1, :cond_2

    .line 138
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v1, "data":Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v3, "list"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    iget-object v3, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/OplusActivityManager;->setAppFreeze(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 145
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_2
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerHansListener remoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return v0

    .line 131
    :cond_3
    :goto_1
    return v0
.end method

.method public whitelist unregisterFreezeInfoListener(Landroid/content/Context;Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oplus/app/OplusHansFreezeManager$FreezeInfoCallBack;

    .line 328
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    sget-boolean v1, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 332
    const-string v1, "OplusHansFreezeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterHansListener callBack = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .local v2, "delegate":Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;
    if-eqz v2, :cond_4

    .line 338
    :try_start_1
    iget-object v3, p0, Lcom/oplus/app/OplusHansFreezeManager;->mService:Lcom/oplus/app/IOplusHansFreezeManager;

    if-eqz v3, :cond_3

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/oplus/app/IOplusHansFreezeManager;->unregisterFreezeInfoListener(Ljava/lang/String;Lcom/oplus/app/IOplusFreezeInfoListener;)Z

    move-result v3

    .line 340
    .local v3, "result":Z
    if-eqz v3, :cond_2

    .line 341
    iget-object v4, p0, Lcom/oplus/app/OplusHansFreezeManager;->mFreezeInfoCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    :cond_2
    :try_start_2
    monitor-exit v1

    return v3

    .line 347
    .end local v3    # "result":Z
    :cond_3
    goto :goto_0

    .line 345
    :catch_0
    move-exception v3

    .line 346
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "OplusHansFreezeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterHansListener remoteException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v2    # "delegate":Lcom/oplus/app/OplusHansFreezeManager$OplusFreezeInfoListenerDelegate;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    :goto_0
    monitor-exit v1

    .line 350
    return v0

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 329
    :cond_5
    :goto_1
    return v0
.end method

.method public whitelist unregisterHansListener(Landroid/content/Context;Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/oplus/app/OplusHansFreezeManager$OplusHansCallBack;

    .line 107
    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 110
    :cond_0
    sget-boolean v0, Lcom/oplus/app/OplusHansFreezeManager;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "OplusHansFreezeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterHansListener callBack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .local v1, "delegate":Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;
    if-eqz v1, :cond_3

    .line 117
    :try_start_1
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    if-eqz v2, :cond_2

    .line 118
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mColorHansCallBackMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v2, p0, Lcom/oplus/app/OplusHansFreezeManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/OplusActivityManager;->unregisterHansListener(Ljava/lang/String;Lcom/oplus/app/IOplusHansListener;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v2

    .line 123
    :cond_2
    goto :goto_0

    .line 121
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusHansFreezeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterHansListener remoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "delegate":Lcom/oplus/app/OplusHansFreezeManager$ColorHansListenerDelegate;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    monitor-exit v0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 108
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
