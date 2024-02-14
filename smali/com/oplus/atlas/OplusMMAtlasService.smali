.class public Lcom/oplus/atlas/OplusMMAtlasService;
.super Lcom/oplus/atlas/IOplusMMAtlasService$Stub;
.source "OplusMMAtlasService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/atlas/OplusMMAtlasService$BinderService;,
        Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;,
        Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;
    }
.end annotation


# static fields
.field private static final blacklist SENDMSG_NOOP:I = 0x1

.field private static final blacklist SENDMSG_QUEUE:I = 0x2

.field private static final blacklist SENDMSG_REPLACE:I = 0x0

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "multimediaDaemon"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusMMAtlasService"


# instance fields
.field private blacklist mAtlasHandler:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;

.field private blacklist mAtlasThread:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;

.field private blacklist mBindServiceFlag:Z

.field private blacklist mCommonReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mOplusAtlasService:Lcom/oplus/atlas/IOplusAtlasService;

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOplusAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;)Lcom/oplus/atlas/IOplusAtlasService;
    .locals 0

    iget-object p0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mOplusAtlasService:Lcom/oplus/atlas/IOplusAtlasService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAtlasHandler(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mAtlasHandler:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBindServiceFlag(Lcom/oplus/atlas/OplusMMAtlasService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mBindServiceFlag:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOplusAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;Lcom/oplus/atlas/IOplusAtlasService;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mOplusAtlasService:Lcom/oplus/atlas/IOplusAtlasService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindAtlasService(Lcom/oplus/atlas/OplusMMAtlasService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->bindAtlasService()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Lcom/oplus/atlas/IOplusMMAtlasService$Stub;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mBindServiceFlag:Z

    .line 168
    new-instance v0, Lcom/oplus/atlas/OplusMMAtlasService$1;

    invoke-direct {v0, p0}, Lcom/oplus/atlas/OplusMMAtlasService$1;-><init>(Lcom/oplus/atlas/OplusMMAtlasService;)V

    iput-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mCommonReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/oplus/atlas/OplusMMAtlasService$2;

    invoke-direct {v0, p0}, Lcom/oplus/atlas/OplusMMAtlasService$2;-><init>(Lcom/oplus/atlas/OplusMMAtlasService;)V

    iput-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 70
    iput-object p1, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    invoke-virtual {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->readSettings()V

    .line 73
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->createMediaWatchThread()V

    .line 74
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->registerCommonReceiver()V

    .line 75
    invoke-virtual {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->systemRunning()V

    .line 76
    const-string v0, "OplusMMAtlasService"

    const-string v1, "-OplusMMAtlasService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method private blacklist bindAtlasService()V
    .locals 12

    .line 195
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    const-string v1, "OplusMMAtlasService"

    if-nez v0, :cond_0

    .line 196
    const-string v0, "context is null"

    invoke-static {v1, v0}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mOplusAtlasService:Lcom/oplus/atlas/IOplusAtlasService;

    if-nez v0, :cond_3

    .line 201
    const-string v0, "bind atlas Service start"

    invoke-static {v1, v0}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oplus.atlas.OplusAtlasService.START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "implicitIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 205
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 210
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 211
    .local v3, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 212
    .local v5, "packageName":Ljava/lang/String;
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 213
    .local v7, "className":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " className = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v9, "iapIntent":Landroid/content/Intent;
    invoke-virtual {v9, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 217
    iget-object v10, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    iget-object v10, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v10, v9, v11, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 219
    const-string v6, "bindService end"

    invoke-static {v1, v6}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v3    # "serviceInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v9    # "iapIntent":Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v3, "bindService, return not found resolveInfos."

    invoke-static {v1, v3}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v5, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mAtlasHandler:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7d0

    invoke-static/range {v5 .. v11}, Lcom/oplus/atlas/OplusMMAtlasService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 208
    return-void

    .line 221
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "implicitIntent":Landroid/content/Intent;
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist createMediaWatchThread()V
    .locals 1

    .line 95
    new-instance v0, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;

    invoke-direct {v0, p0}, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;-><init>(Lcom/oplus/atlas/OplusMMAtlasService;)V

    iput-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mAtlasThread:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;

    .line 96
    invoke-virtual {v0}, Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceThread;->start()V

    .line 97
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->waitForAtlasHandlerCreation()V

    .line 98
    return-void
.end method

.method private blacklist getService()Lcom/oplus/atlas/IOplusAtlasService;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mOplusAtlasService:Lcom/oplus/atlas/IOplusAtlasService;

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 186
    .local v0, "uid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getService() uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusMMAtlasService"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->bindAtlasService()V

    .line 191
    .end local v0    # "uid":I
    :cond_0
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mOplusAtlasService:Lcom/oplus/atlas/IOplusAtlasService;

    return-object v0
.end method

.method private blacklist registerCommonReceiver()V
    .locals 3

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.oplus.atlas.OplusAtlasService.STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mCommonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    return-void
.end method

.method private static blacklist sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 137
    const-string v0, "OplusMMAtlasService"

    if-nez p0, :cond_0

    .line 138
    const-string v1, "atlas handle is null"

    invoke-static {v0, v1}, Lcom/oplus/atlas/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_0
    if-nez p2, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 143
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMsg: Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 147
    :cond_2
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p6

    add-long/2addr v0, v2

    .line 148
    .local v0, "time":J
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 149
    return-void
.end method

.method private blacklist unBindAtlasService()V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mBindServiceFlag:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mBindServiceFlag:Z

    .line 228
    :cond_0
    return-void
.end method

.method private blacklist waitForAtlasHandlerCreation()V
    .locals 3

    .line 101
    monitor-enter p0

    .line 102
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mAtlasHandler:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "OplusMMAtlasService"

    const-string v2, "Interrupted while waiting on other handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 110
    :cond_0
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public blacklist atlasServiceinit()V
    .locals 0

    .line 180
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->bindAtlasService()V

    .line 181
    return-void
.end method

.method public whitelist checkIsInDaemonlistByName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 363
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 364
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 365
    return v1

    .line 369
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->checkIsInDaemonlistByName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 370
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist checkIsInDaemonlistByUid(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 377
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 378
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    return v1

    .line 383
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->checkIsInDaemonlistByUid(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 433
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 434
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    return-object v1

    .line 439
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->getAttributeByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 440
    :catch_0
    move-exception v2

    .line 441
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getAttributeByAppUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 447
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 448
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 449
    return-object v1

    .line 453
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->getAttributeByAppUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 454
    :catch_0
    move-exception v2

    .line 455
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
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

    .line 489
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 490
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 491
    return-object v1

    .line 495
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->getConfigAppList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getListInfoByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 476
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 477
    return-object v1

    .line 481
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->getListInfoByAppName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 482
    :catch_0
    move-exception v2

    .line 483
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getListInfoByAppUid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 461
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 462
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 463
    return-object v1

    .line 467
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->getListInfoByAppUid(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 468
    :catch_0
    move-exception v2

    .line 469
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getPackageNameByPid(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .line 412
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 413
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageNameByPid() callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusMMAtlasService"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, 0x0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_0

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no permission to getPackageName, callinguid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-object v1

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v3

    .line 420
    .local v3, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v3, :cond_1

    .line 421
    return-object v1

    .line 425
    :cond_1
    :try_start_0
    invoke-interface {v3, p1}, Lcom/oplus/atlas/IOplusAtlasService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 426
    :catch_0
    move-exception v4

    .line 427
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Dead object in info"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    .end local v4    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getPackageNameByUid(I)Ljava/lang/String;
    .locals 6
    .param p1, "uid"    # I

    .line 391
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 392
    .local v0, "callingUid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageNameByUid() callingUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusMMAtlasService"

    invoke-static {v2, v1}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v1, 0x0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_0

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no permission to getPackageName, callinguid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oplus/atlas/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v1

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v3

    .line 399
    .local v3, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v3, :cond_1

    .line 400
    return-object v1

    .line 404
    :cond_1
    :try_start_0
    invoke-interface {v3, p1}, Lcom/oplus/atlas/IOplusAtlasService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 405
    :catch_0
    move-exception v4

    .line 406
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "Dead object in info"

    invoke-static {v2, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v4    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keys"    # Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 284
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 285
    return-object v1

    .line 288
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 290
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 291
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public whitelist interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "callPackageName"    # Ljava/lang/String;

    .line 297
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 298
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 299
    return v1

    .line 302
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->interfaceCallPermissionCheck(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .local v1, "result":Z
    return v1

    .line 304
    .end local v1    # "result":Z
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMMAtlasService"

    const-string v4, "Dead object in info"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public blacklist readSettings()V
    .locals 0

    .line 80
    return-void
.end method

.method public whitelist registerAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasAudioCallback;

    .line 337
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 338
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 339
    return-void

    .line 343
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->registerAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    goto :goto_0

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist registerCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasServiceCallback;

    .line 311
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 312
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 313
    return-void

    .line 317
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->registerCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 248
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 249
    return-void

    .line 252
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->setEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setEventToNative(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 260
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 261
    return-void

    .line 264
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/atlas/IOplusAtlasService;->setEventToNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setParameters(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyValuePairs"    # Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 272
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 273
    return-void

    .line 276
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 280
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist systemRunning()V
    .locals 10

    .line 85
    const-string v0, "OplusMMAtlasService"

    const-string v1, "systemRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-enter p0

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "arg1":I
    const/4 v1, 0x0

    .line 89
    .local v1, "arg2":I
    const/16 v9, 0x1770

    .line 90
    .local v9, "delay":I
    :try_start_0
    iget-object v2, p0, Lcom/oplus/atlas/OplusMMAtlasService;->mAtlasHandler:Lcom/oplus/atlas/OplusMMAtlasService$AtlasServiceHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, v0

    move v6, v1

    move v8, v9

    invoke-static/range {v2 .. v8}, Lcom/oplus/atlas/OplusMMAtlasService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 91
    .end local v0    # "arg1":I
    .end local v1    # "arg2":I
    .end local v9    # "delay":I
    monitor-exit p0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist unRegisterAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasAudioCallback;

    .line 350
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 351
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 352
    return-void

    .line 356
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->unRegisterAudioCallback(Lcom/oplus/atlas/IOplusAtlasAudioCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 357
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unRegisterCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/oplus/atlas/IOplusAtlasServiceCallback;

    .line 324
    invoke-direct {p0}, Lcom/oplus/atlas/OplusMMAtlasService;->getService()Lcom/oplus/atlas/IOplusAtlasService;

    move-result-object v0

    .line 325
    .local v0, "service":Lcom/oplus/atlas/IOplusAtlasService;
    if-nez v0, :cond_0

    .line 326
    return-void

    .line 330
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/atlas/IOplusAtlasService;->unRegisterCallback(Lcom/oplus/atlas/IOplusAtlasServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMMAtlasService"

    const-string v3, "Dead object in info"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
