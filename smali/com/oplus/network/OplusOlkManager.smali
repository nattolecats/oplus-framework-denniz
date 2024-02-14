.class public Lcom/oplus/network/OplusOlkManager;
.super Ljava/lang/Object;
.source "OplusOlkManager.java"


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "OplusOlkManager"

.field private static blacklist sInstance:Lcom/oplus/network/OplusOlkManager;


# instance fields
.field public whitelist mContext:Landroid/content/Context;

.field private blacklist mOlkService:Lcom/oplus/network/IOlk;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 34
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/network/OplusOlkManager;->DEBUG:Z

    return-void
.end method

.method protected constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oplus/network/OplusOlkManager;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "OplusOlkManager"

    const-string v1, "OplusOlkManager first new!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Lcom/oplus/network/OplusOlkManager;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .line 42
    const-class v0, Lcom/oplus/network/OplusOlkManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/oplus/network/OplusOlkManager;->sInstance:Lcom/oplus/network/OplusOlkManager;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/oplus/network/OplusOlkManager;

    invoke-direct {v1, p0}, Lcom/oplus/network/OplusOlkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/network/OplusOlkManager;->sInstance:Lcom/oplus/network/OplusOlkManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/oplus/network/OplusOlkManager;->sInstance:Lcom/oplus/network/OplusOlkManager;

    monitor-exit v0

    return-object v1

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 51
    sget-boolean v0, Lcom/oplus/network/OplusOlkManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "OplusOlkManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist addAuthResultInfo(Landroid/content/Context;IIILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "permBits"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 58
    if-eqz p2, :cond_5

    .line 60
    if-eqz p3, :cond_4

    .line 62
    if-eqz p5, :cond_3

    .line 66
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

    invoke-direct {p0, v0}, Lcom/oplus/network/OplusOlkManager;->log(Ljava/lang/String;)V

    .line 67
    const-string v0, "opluslinkkit"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, "binder":Landroid/os/IBinder;
    const-string v1, "OplusOlkManager"

    if-nez v0, :cond_0

    .line 69
    const-string v2, "get OlkService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/oplus/network/OplusOlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    invoke-static {v0}, Lcom/oplus/network/IOlk$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlk;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 71
    invoke-static {v0}, Lcom/oplus/network/IOlk$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/network/IOlk;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/network/OplusOlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    .line 74
    :cond_1
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/oplus/network/OplusOlkManager;->mOlkService:Lcom/oplus/network/IOlk;

    if-eqz v2, :cond_2

    .line 75
    invoke-interface {v2, p2, p3, p4, p5}, Lcom/oplus/network/IOlk;->addAuthResultInfo(IIILjava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_2
    const-string v2, "addAuthResultInfo mOlkService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_1
    const-string v2, "addAuthResultInfo end"

    invoke-direct {p0, v2}, Lcom/oplus/network/OplusOlkManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_2

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "mount service not found"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 63
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName was null, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pid was 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uid was 0, which is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
