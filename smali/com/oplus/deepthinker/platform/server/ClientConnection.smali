.class public Lcom/oplus/deepthinker/platform/server/ClientConnection;
.super Ljava/lang/Object;
.source "ClientConnection.java"


# static fields
.field private static final blacklist ACTION:Ljava/lang/String; = "deepthinker.intent.action.BIND_INTERFACE_SERVER"

.field private static final blacklist COUNT:I = 0x1

.field private static final blacklist PKG:Ljava/lang/String; = "com.oplus.deepthinker"

.field private static final blacklist STATE_CONNECTED:I = 0x2

.field private static final blacklist STATE_CONNECTING:I = 0x1

.field private static final blacklist STATE_DISCONNECTED:I = 0x3

.field private static final blacklist STATE_INIT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ClientConnection"

.field private static final blacklist THREAD_NAME:Ljava/lang/String; = "deepthinker-ct"

.field private static final blacklist WAIT_TIME_OUT_SECONDS:I = 0x2


# instance fields
.field private final blacklist BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private final blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

.field private blacklist mIsSystemUser:Z

.field private blacklist mMyUser:Landroid/os/UserHandle;

.field private final blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile blacklist mState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$bf6BKfUBdmavU6CI5dbddgdeX0Q(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->deliveryOnServiceDied()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetBINDER_LOCK(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    iget-object p0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeathRecipient(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInvokeDelegate(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .locals 0

    iget-object p0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;)I
    .locals 0

    iget p0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCountDownLatch(Lcom/oplus/deepthinker/platform/server/ClientConnection;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInvokeDelegate(Lcom/oplus/deepthinker/platform/server/ClientConnection;Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Lcom/oplus/deepthinker/platform/server/ClientConnection;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindServiceByPlatform(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->bindServiceByPlatform()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misOnMainThread(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->isOnMainThread()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misQ(Lcom/oplus/deepthinker/platform/server/ClientConnection;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->isQ()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mserviceDied(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->serviceDied()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    .line 50
    new-instance v0, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;

    invoke-direct {v0, p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection$1;-><init>(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 84
    new-instance v0, Lcom/oplus/deepthinker/platform/server/ClientConnection$2;

    invoke-direct {v0, p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection$2;-><init>(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V

    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 99
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->initIsSystemUser()V

    .line 100
    return-void
.end method

.method private blacklist bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "connection"    # Landroid/content/ServiceConnection;

    .line 278
    iget-boolean v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mIsSystemUser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 280
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mMyUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 281
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mMyUser:Landroid/os/UserHandle;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mHandler:Landroid/os/Handler;

    const-string v2, "ClientConnection"

    if-nez v0, :cond_1

    .line 285
    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "deepthinker_sdk_inner"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 287
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v0    # "thread":Landroid/os/HandlerThread;
    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "bindService: on init handle"

    invoke-static {v2, v3, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    return v1

    .line 297
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "bindServiceAsUser"

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Intent;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/content/ServiceConnection;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Landroid/os/Handler;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, Landroid/os/UserHandle;

    const/4 v10, 0x4

    aput-object v6, v5, v10

    .line 298
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object p2, v4, v1

    .line 299
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mHandler:Landroid/os/Handler;

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mMyUser:Landroid/os/UserHandle;

    aput-object v5, v4, v10

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 300
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    .line 305
    .end local v0    # "result":Ljava/lang/Boolean;
    :cond_2
    goto :goto_1

    .line 303
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "bindService: bindServiceAsUser"

    invoke-static {v2, v3, v0}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v1

    .line 309
    :cond_3
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->isQ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 310
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1, v2, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0

    .line 312
    :cond_4
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private blacklist bindServiceByPlatform()Z
    .locals 2

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deepthinker.intent.action.BIND_INTERFACE_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "com.oplus.deepthinker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0, v0, v1}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;)Z

    move-result v1

    return v1
.end method

.method private blacklist deliveryOnServiceDied()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->getInstance(Landroid/content/Context;)Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/deepthinker/OplusDeepThinkerManagerDecor;->onServiceDied()V

    .line 180
    return-void
.end method

.method private blacklist initIsSystemUser()V
    .locals 3

    .line 134
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mIsSystemUser:Z

    goto :goto_0

    .line 138
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 139
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const-string v1, "android.uid.system"

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mIsSystemUser:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initIsSystemUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientConnection"

    invoke-static {v2, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist isOnMainThread()Z
    .locals 2

    .line 183
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isQ()Z
    .locals 2

    .line 318
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist onServiceDied()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/oplus/deepthinker/platform/server/ClientConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->deliveryOnServiceDied()V

    .line 176
    :goto_0
    return-void
.end method

.method private blacklist serviceDied()V
    .locals 5

    .line 147
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 148
    iget v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 151
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    invoke-virtual {v2}, Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;->getRemote()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    iput v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    .line 160
    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    .line 161
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->onServiceDied()V

    .line 164
    goto :goto_1

    .line 159
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ClientConnection"

    const-string v4, "serviceDied: "

    invoke-static {v3, v4, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 165
    :goto_1
    return-void

    .line 159
    :goto_2
    iput v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    .line 160
    iput-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    .line 161
    iget-object v0, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->onServiceDied()V

    .line 164
    throw v2
.end method

.method private blacklist tryConnect()V
    .locals 6

    .line 188
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;

    invoke-direct {v1, p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection$3;-><init>(Lcom/oplus/deepthinker/platform/server/ClientConnection;)V

    const-string v2, "deepthinker-ct"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 249
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->isOnMainThread()Z

    move-result v1

    .line 253
    .local v1, "onMain":Z
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->isQ()Z

    move-result v2

    const-string v3, "ClientConnection"

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    const-string v2, "tryConnect: end. On Main Thread, reutrn directly."

    invoke-static {v3, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 257
    :cond_1
    :goto_0
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    goto :goto_1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "tryConnect: interrupted."

    invoke-static {v3, v4, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryConnect: end. On "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_2

    const-string v4, "Main"

    goto :goto_2

    :cond_2
    const-string v4, "Async"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Thread, connect "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 262
    iget v4, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const-string v4, "success."

    goto :goto_3

    :cond_3
    const-string v4, "timeout."

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v3, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :goto_4
    return-void
.end method


# virtual methods
.method public blacklist getInvokeDelegate()Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    .locals 5

    .line 103
    const-string v0, "ClientConnection"

    const-string v1, "getInvokeDelegate start"

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    if-nez v1, :cond_4

    .line 106
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    if-nez v1, :cond_3

    .line 110
    iget v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 121
    invoke-direct {p0}, Lcom/oplus/deepthinker/platform/server/ClientConnection;->tryConnect()V

    goto :goto_2

    .line 111
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2

    .line 114
    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryConnect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    goto :goto_2

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->BINDER_LOCK:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 127
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/oplus/deepthinker/platform/server/ClientConnection;->mInvokeDelegate:Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;

    .line 129
    .local v1, "delegate":Lcom/oplus/deepthinker/platform/server/FrameworkInvokeDelegate;
    const-string v2, "getInvokeDelegate end"

    invoke-static {v0, v2}, Lcom/oplus/deepthinker/sdk/common/utils/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-object v1
.end method
