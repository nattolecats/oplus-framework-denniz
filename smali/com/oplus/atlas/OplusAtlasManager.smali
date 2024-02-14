.class public Lcom/oplus/atlas/OplusAtlasManager;
.super Ljava/lang/Object;
.source "OplusAtlasManager.java"


# static fields
.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "multimediaDaemon"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAtlasManager"

.field private static volatile blacklist sInstance:Lcom/oplus/atlas/OplusAtlasManager;

.field private static blacklist sOplusAtlasService:Lcom/oplus/atlas/IOplusMMAtlasService;

.field private static blacklist sServiceEnable:Z


# instance fields
.field private blacklist mBindServiceFlag:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/atlas/OplusAtlasManager;->sInstance:Lcom/oplus/atlas/OplusAtlasManager;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/atlas/OplusAtlasManager;->sServiceEnable:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/atlas/OplusAtlasManager;->mBindServiceFlag:Z

    .line 38
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/atlas/OplusAtlasManager;
    .locals 2

    .line 41
    sget-object v0, Lcom/oplus/atlas/OplusAtlasManager;->sInstance:Lcom/oplus/atlas/OplusAtlasManager;

    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/oplus/atlas/OplusAtlasManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/oplus/atlas/OplusAtlasManager;->sInstance:Lcom/oplus/atlas/OplusAtlasManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/oplus/atlas/OplusAtlasManager;

    invoke-direct {v1}, Lcom/oplus/atlas/OplusAtlasManager;-><init>()V

    sput-object v1, Lcom/oplus/atlas/OplusAtlasManager;->sInstance:Lcom/oplus/atlas/OplusAtlasManager;

    .line 46
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    const-string v0, "persist.sys.multimedia.atlas.service"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    sput-boolean v1, Lcom/oplus/atlas/OplusAtlasManager;->sServiceEnable:Z

    goto :goto_1

    .line 52
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/atlas/OplusAtlasManager;->sServiceEnable:Z

    .line 54
    :goto_1
    sget-object v0, Lcom/oplus/atlas/OplusAtlasManager;->sInstance:Lcom/oplus/atlas/OplusAtlasManager;

    return-object v0
.end method

.method private static blacklist getService()Lcom/oplus/atlas/IOplusMMAtlasService;
    .locals 2

    .line 58
    sget-boolean v0, Lcom/oplus/atlas/OplusAtlasManager;->sServiceEnable:Z

    if-nez v0, :cond_0

    .line 59
    const-string v0, "OplusAtlasManager"

    const-string v1, "OplusAtlasService disabled"

    invoke-static {v0, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    sget-object v0, Lcom/oplus/atlas/OplusAtlasManager;->sOplusAtlasService:Lcom/oplus/atlas/IOplusMMAtlasService;

    if-eqz v0, :cond_1

    .line 64
    return-object v0

    .line 67
    :cond_1
    const-string v0, "multimediaDaemon"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/oplus/atlas/IOplusMMAtlasService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v1

    sput-object v1, Lcom/oplus/atlas/OplusAtlasManager;->sOplusAtlasService:Lcom/oplus/atlas/IOplusMMAtlasService;

    .line 69
    return-object v1
.end method


# virtual methods
.method public whitelist checkIsInDaemonlistByName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 208
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 209
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 210
    return v1

    .line 214
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->checkIsInDaemonlistByName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist checkIsInDaemonlistByUid(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 222
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 223
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 224
    return v1

    .line 228
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->checkIsInDaemonlistByUid(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 264
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 265
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 266
    return-object v1

    .line 270
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 274
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getAttributeByAppUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 278
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 279
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 280
    return-object v1

    .line 284
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->getAttributeByAppUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getConfigAppList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 321
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 322
    return-object v1

    .line 326
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->getConfigAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getListInfoByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 306
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 307
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 308
    return-object v1

    .line 312
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->getListInfoByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getListInfoByAppUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 292
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 293
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 294
    return-object v1

    .line 298
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->getListInfoByAppUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 299
    :catch_0
    move-exception v2

    .line 300
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getPackageNameByPid(I)Ljava/lang/String;
    .locals 5
    .param p1, "pid"    # I

    .line 250
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 251
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 252
    return-object v1

    .line 256
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 257
    :catch_0
    move-exception v2

    .line 258
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getPackageNameByUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .line 236
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 237
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 238
    return-object v1

    .line 242
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 243
    :catch_0
    move-exception v2

    .line 244
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 129
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    return-object v1

    .line 134
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "callPackageName"    # Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 143
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 144
    return v1

    .line 148
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusAtlasManager"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist registerAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasAudioCallback;

    .line 182
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 183
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    if-nez v0, :cond_0

    .line 184
    return-void

    .line 188
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->registerAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusAtlasManager"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerServiceCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasServiceCallback;

    .line 156
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 157
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    if-nez v0, :cond_0

    .line 158
    return-void

    .line 162
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->registerCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusAtlasManager"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist sendMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .line 73
    if-nez p1, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "args":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format is error,check it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAtlasManager"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void

    .line 82
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 86
    :goto_0
    return-void
.end method

.method public whitelist setEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 90
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEventInfo info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAtlasManager"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->setEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setEventToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 103
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEventInfo info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAtlasManager"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 108
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusMMAtlasService;->setEventToNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setParameters(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 116
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters keyValuePairs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusAtlasManager"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v0, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unRegisterAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasAudioCallback;

    .line 195
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 196
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    if-nez v0, :cond_0

    .line 197
    return-void

    .line 201
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->unRegisterAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusAtlasManager"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unRegisterServiceCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasServiceCallback;

    .line 169
    invoke-static {}, Lcom/oplus/atlas/OplusAtlasManager;->getService()Lcom/oplus/atlas/IOplusMMAtlasService;

    move-result-object v0

    .line 170
    .local v0, "service":Lcom/oplus/atlas/IOplusMMAtlasService;
    if-nez v0, :cond_0

    .line 171
    return-void

    .line 175
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusMMAtlasService;->unRegisterCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusAtlasManager"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
