.class public Lcom/oplus/network/OplusNetworkStackManager;
.super Ljava/lang/Object;
.source "OplusNetworkStackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/OplusNetworkStackManager$IOplusDnsHookCb;,
        Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;,
        Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;,
        Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;
    }
.end annotation


# static fields
.field public static final whitelist DBG:Z = true

.field private static final blacklist DELAY_REGISTER_TIME:J = 0x2710L

.field public static final whitelist LOG_TAG:Ljava/lang/String; = "OplusNetworkStackManager"

.field public static final whitelist MAX_URL_LEN:I = 0x7f

.field public static final whitelist SRV_NAME:Ljava/lang/String; = "oplusnetworkstack"

.field private static blacklist allCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/oplus/network/OplusNetworkStackManager;


# instance fields
.field public whitelist mContext:Landroid/content/Context;

.field private final blacklist mDnsHookCbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OplusNetworkStackManager$IOplusDnsHookCb;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mNetdEventIf:Lcom/oplus/network/IOplusNetdEventCb;

.field private final blacklist mNetworkEventCbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

.field private blacklist mRegisterSucc:Z

.field private blacklist showDebug:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$BTLT61439-HcKrYAVqUjFsq8BP8(Lcom/oplus/network/OplusNetworkStackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->registerScoreChangeInit()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkEventCbList(Lcom/oplus/network/OplusNetworkStackManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetallCallbacks()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "persist.oplus.network.stack.show"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->showDebug:Z

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mDnsHookCbList:Ljava/util/ArrayList;

    .line 323
    iput-boolean v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mRegisterSucc:Z

    .line 348
    new-instance v0, Lcom/oplus/network/OplusNetworkStackManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/network/OplusNetworkStackManager$1;-><init>(Lcom/oplus/network/OplusNetworkStackManager;)V

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetdEventIf:Lcom/oplus/network/IOplusNetdEventCb;

    .line 196
    iput-object p1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mContext:Landroid/content/Context;

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OplusNetworkStackManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mHandler:Landroid/os/Handler;

    .line 200
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->registerScoreChangeInit()V

    .line 201
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/oplus/network/OplusNetworkStackManager;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .line 171
    const-class v0, Lcom/oplus/network/OplusNetworkStackManager;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusNetworkStackManager;->sInstance:Lcom/oplus/network/OplusNetworkStackManager;

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/oplus/network/OplusNetworkStackManager;

    invoke-direct {v1, p0}, Lcom/oplus/network/OplusNetworkStackManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/network/OplusNetworkStackManager;->sInstance:Lcom/oplus/network/OplusNetworkStackManager;

    .line 174
    const-string v1, "OplusNetworkStackManager"

    const-string v2, "OplusNetworkStackManager first new!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    sget-object v1, Lcom/oplus/network/OplusNetworkStackManager;->sInstance:Lcom/oplus/network/OplusNetworkStackManager;

    monitor-exit v0

    return-object v1

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getStackService()Lcom/oplus/network/IOplusNetworkStack;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    if-nez v0, :cond_0

    .line 119
    const-string v0, "oplusnetworkstack"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    return-object v0
.end method

.method private blacklist parseIpStr(Ljava/lang/String;)I
    .locals 3
    .param p1, "ipstr"    # Ljava/lang/String;

    .line 206
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "ip":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private blacklist registerScoreChangeInit()V
    .locals 4

    .line 181
    const-string v0, "oplusnetworkstack"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    .line 182
    const-string v1, "OplusNetworkStackManager"

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    const-string v0, "registerTcpScoreChange start!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    new-instance v2, Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;-><init>(Lcom/oplus/network/OplusNetworkStackManager;Lcom/oplus/network/OplusNetworkStackManager$MyCallBack-IA;)V

    invoke-interface {v0, v2}, Lcom/oplus/network/IOplusNetworkStack;->registerTcpScoreChange(Lcom/oplus/network/IOplusNetScoreChange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "registerTcpScoreChange fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 190
    :cond_0
    const-string v0, "mNetworkStackService is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/network/OplusNetworkStackManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/oplus/network/OplusNetworkStackManager$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/network/OplusNetworkStackManager;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :goto_1
    return-void
.end method

.method public static whitelist registerTcpCallback(Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;)V
    .locals 2
    .param p0, "nsc"    # Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;

    .line 40
    sget-object v0, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    sget-object v1, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static whitelist unregisterTcpCallback(Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;)V
    .locals 2
    .param p0, "nsc"    # Lcom/oplus/network/OplusNetworkStackManager$INetworkScoreCallback;

    .line 48
    sget-object v0, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/oplus/network/OplusNetworkStackManager;->allCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    :cond_0
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist updateCbRegister()V
    .locals 5

    .line 326
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mDnsHookCbList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    .local v0, "totalCount":I
    iget-boolean v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mRegisterSucc:Z

    const-string v2, "mNetworkStackService.registerOplusNetdEvent failed! "

    const-string v3, "OplusNetworkStackManager"

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    iget-object v4, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetdEventIf:Lcom/oplus/network/IOplusNetdEventCb;

    invoke-interface {v1, v4}, Lcom/oplus/network/IOplusNetworkStack;->registerOplusNetdEvent(Lcom/oplus/network/IOplusNetdEventCb;)V

    .line 330
    const-string v1, "mNetworkStackService.registerOplusNetdEvent succ"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mRegisterSucc:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 336
    :cond_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 338
    :try_start_1
    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    iget-object v4, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetdEventIf:Lcom/oplus/network/IOplusNetdEventCb;

    invoke-interface {v1, v4}, Lcom/oplus/network/IOplusNetworkStack;->unregisterOplusNetdEvent(Lcom/oplus/network/IOplusNetdEventCb;)V

    .line 339
    const-string v1, "mNetworkStackService.unregisterOplusNetdEvent succ"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mRegisterSucc:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    goto :goto_1

    .line 341
    :catch_1
    move-exception v1

    .line 342
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public whitelist getFailRate(Landroid/net/Network;)I
    .locals 2
    .param p1, "network"    # Landroid/net/Network;

    .line 100
    const-string v0, "oplusnetworkstack"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    .line 113
    const-string v0, "OplusNetworkStackManager"

    const-string v1, "getFailRate is error rerurn 0!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getNetworkRtt(Landroid/net/Network;)I
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 143
    const/4 v0, -0x1

    .line 144
    .local v0, "rtt":I
    const-string v1, "OplusNetworkStackManager"

    if-nez p1, :cond_0

    .line 145
    :try_start_0
    const-string v2, "network is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    invoke-interface {v2, p1}, Lcom/oplus/network/IOplusNetworkStack;->getNetworkRtt(Landroid/net/Network;)I

    move-result v2

    move v0, v2

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkRtt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return v0

    .line 151
    .end local v0    # "rtt":I
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkRtt exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getNetworkScore(Landroid/net/Network;)I
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 126
    const/4 v0, -0x1

    .line 127
    .local v0, "score":I
    const-string v1, "OplusNetworkStackManager"

    if-nez p1, :cond_0

    .line 128
    :try_start_0
    const-string v2, "network is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v0

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    invoke-interface {v2, p1}, Lcom/oplus/network/IOplusNetworkStack;->getNetworkScore(Landroid/net/Network;)I

    move-result v2

    move v0, v2

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkScore "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    return v0

    .line 134
    .end local v0    # "score":I
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkScore exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getOplusNetworkStackInfo()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "oplusnetworkstack"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    .line 71
    const-string v0, ""

    .line 82
    .local v0, "info":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist oplusAddAppDnsConfig([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9
    .param p1, "hostname"    # [Ljava/lang/String;
    .param p2, "ipaddr"    # [Ljava/lang/String;

    .line 212
    const-string v0, "OplusNetworkStackManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    :try_start_0
    array-length v2, p1

    if-eqz v2, :cond_5

    if-eqz p2, :cond_5

    array-length v2, p2

    if-eqz v2, :cond_5

    array-length v2, p1

    array-length v3, p2

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 216
    :cond_0
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 217
    .local v4, "url":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 218
    const-string v2, "url is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v1

    .line 221
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_2

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is len over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v1

    .line 216
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 226
    :cond_3
    array-length v2, p2

    new-array v2, v2, [I

    .line 227
    .local v2, "iplist":[I
    const/4 v3, 0x0

    .line 228
    .local v3, "i":I
    array-length v4, p2

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, p2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    .local v6, "ip":Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    :try_start_1
    invoke-direct {p0, v6}, Lcom/oplus/network/OplusNetworkStackManager;->parseIpStr(Ljava/lang/String;)I

    move-result v8

    aput v8, v2, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    nop

    .line 228
    .end local v6    # "ip":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move v3, v7

    goto :goto_1

    .line 231
    .restart local v6    # "ip":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 232
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse ipstr "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    return v1

    .line 237
    .end local v6    # "ip":Ljava/lang/String;
    .end local v7    # "i":I
    .local v3, "i":I
    :cond_4
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Lcom/oplus/network/IOplusNetworkStack;->oplusAddAppDnsConfig([Ljava/lang/String;[I)Z

    move-result v0

    return v0

    .line 238
    .end local v2    # "iplist":[I
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    goto :goto_3

    .line 213
    :cond_5
    :goto_2
    const-string v2, "param invalid!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    return v1

    .line 239
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    const-string v3, "oplusAddAppDnsConfig failed!"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    return v1
.end method

.method public whitelist oplusClearAppDnsConfig()Z
    .locals 3

    .line 269
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStack;->oplusClearAppDnsConfig()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusNetworkStackManager"

    const-string v2, "oplusClearAppDnsConfig failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist oplusDelAppDnsConfig([Ljava/lang/String;)Z
    .locals 7
    .param p1, "hostname"    # [Ljava/lang/String;

    .line 246
    const-string v0, "OplusNetworkStackManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    array-length v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p1, v3

    .line 251
    .local v4, "url":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 252
    const-string v2, "url is null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return v1

    .line 255
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_2

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is len over "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v1

    .line 250
    .end local v4    # "url":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 260
    :cond_3
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/oplus/network/IOplusNetworkStack;->oplusDelAppDnsConfig([Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 261
    :catch_0
    move-exception v2

    goto :goto_2

    .line 247
    :cond_4
    :goto_1
    const-string v2, "param invalid!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    return v1

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v3, "oplusAddAppDnsConfig failed!"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    return v1
.end method

.method public whitelist oplusGetUidByPort(ILjava/lang/String;)I
    .locals 3
    .param p1, "port"    # I
    .param p2, "callPackageName"    # Ljava/lang/String;

    .line 278
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oplus/network/IOplusNetworkStack;->oplusGetUidByPort(ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusNetworkStackManager"

    const-string v2, "oplusGetUidByPort failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist oplusSetRedirectPort(II)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "port"    # I

    .line 287
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/oplus/network/IOplusNetworkStack;->oplusSetRedirectPort(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusNetworkStackManager"

    const-string v2, "oplusSetRedirectPort failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 290
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist registerNetworkEventCb(Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;)Z
    .locals 2
    .param p1, "cb"    # Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;

    .line 365
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->updateCbRegister()V

    .line 370
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setOplusNetworkStackConfig(Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .line 86
    const-string v0, "oplusnetworkstack"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    .line 97
    return-void
.end method

.method public whitelist startTest()V
    .locals 4

    .line 56
    const-string v0, "oplusnetworkstack"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/network/IOplusNetworkStack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    .line 57
    const-string v1, "OplusNetworkStackManager"

    if-eqz v0, :cond_0

    .line 59
    :try_start_0
    const-string v0, "registerTcpScoreChange start!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkStackService:Lcom/oplus/network/IOplusNetworkStack;

    new-instance v2, Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/network/OplusNetworkStackManager$MyCallBack;-><init>(Lcom/oplus/network/OplusNetworkStackManager;Lcom/oplus/network/OplusNetworkStackManager$MyCallBack-IA;)V

    invoke-interface {v0, v2}, Lcom/oplus/network/IOplusNetworkStack;->registerTcpScoreChange(Lcom/oplus/network/IOplusNetScoreChange;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "registerTcpScoreChange fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    goto :goto_1

    .line 65
    :cond_0
    const-string v0, "mNetworkStackService is null!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    return-void
.end method

.method public whitelist unregisterNetworkEventCb(Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;)Z
    .locals 2
    .param p1, "cb"    # Lcom/oplus/network/OplusNetworkStackManager$IOplusNetworkEventCb;

    .line 375
    iget-object v0, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/oplus/network/OplusNetworkStackManager;->mNetworkEventCbList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->updateCbRegister()V

    .line 380
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist videoFrameLag(Z)V
    .locals 3
    .param p1, "lag"    # Z

    .line 305
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/oplus/network/IOplusNetworkStack;->videoFrameLag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusNetworkStackManager"

    const-string v2, "videoFrameRateUpdate failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public whitelist videoStop()V
    .locals 3

    .line 297
    :try_start_0
    invoke-direct {p0}, Lcom/oplus/network/OplusNetworkStackManager;->getStackService()Lcom/oplus/network/IOplusNetworkStack;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/network/IOplusNetworkStack;->videoStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusNetworkStackManager"

    const-string v2, "videoStartStop failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
