.class public Lcom/oplus/keylayout/OplusKeyLayoutManager;
.super Ljava/lang/Object;
.source "OplusKeyLayoutManager.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "OplusKeyLayoutManager"

.field private static volatile blacklist sInstance:Lcom/oplus/keylayout/OplusKeyLayoutManager;


# instance fields
.field private blacklist mOAms:Landroid/app/OplusActivityTaskManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 27
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/keylayout/OplusKeyLayoutManager;->DEBUG:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Landroid/app/OplusActivityTaskManager;->getInstance()Landroid/app/OplusActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/keylayout/OplusKeyLayoutManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    .line 44
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/keylayout/OplusKeyLayoutManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/oplus/keylayout/OplusKeyLayoutManager;->sInstance:Lcom/oplus/keylayout/OplusKeyLayoutManager;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/oplus/keylayout/OplusKeyLayoutManager;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/oplus/keylayout/OplusKeyLayoutManager;->sInstance:Lcom/oplus/keylayout/OplusKeyLayoutManager;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/oplus/keylayout/OplusKeyLayoutManager;

    invoke-direct {v1}, Lcom/oplus/keylayout/OplusKeyLayoutManager;-><init>()V

    sput-object v1, Lcom/oplus/keylayout/OplusKeyLayoutManager;->sInstance:Lcom/oplus/keylayout/OplusKeyLayoutManager;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/keylayout/OplusKeyLayoutManager;->sInstance:Lcom/oplus/keylayout/OplusKeyLayoutManager;

    return-object v0
.end method


# virtual methods
.method public whitelist setGimbalLaunchPkg(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 47
    sget-boolean v0, Lcom/oplus/keylayout/OplusKeyLayoutManager;->DEBUG:Z

    const-string v1, "OplusKeyLayoutManager"

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGimbalLaunchPkg, pkgName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oplus/keylayout/OplusKeyLayoutManager;->mOAms:Landroid/app/OplusActivityTaskManager;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {v0, p1}, Landroid/app/OplusActivityTaskManager;->setGimbalLaunchPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_1
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGimbalLaunchPkg remoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 59
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
