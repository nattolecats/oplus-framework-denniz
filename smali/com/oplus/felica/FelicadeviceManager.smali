.class public Lcom/oplus/felica/FelicadeviceManager;
.super Ljava/lang/Object;
.source "FelicadeviceManager.java"


# static fields
.field public static final blacklist OPLUS_DEFAULT_MODEL:Ljava/lang/String; = "OPLUS-Default"

.field private static final blacklist SERVICE_NAME:Ljava/lang/String; = "securestore"

.field private static final blacklist TAG:Ljava/lang/String; = "FelicadeviceManager"

.field private static blacklist sFelicadeviceManager:Lcom/oplus/felica/FelicadeviceManager;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Lcom/oplus/felica/IFelicadeviceService;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/felica/FelicadeviceManager;->sFelicadeviceManager:Lcom/oplus/felica/FelicadeviceManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    .line 44
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/oplus/felica/FelicadeviceManager;->mToken:Landroid/os/IBinder;

    .line 49
    const-string v0, "FelicadeviceManager"

    const-string v1, "FelicadeviceManager new default"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v1, "felicaser"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/felica/IFelicadeviceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/felica/IFelicadeviceService;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    .line 52
    if-nez v1, :cond_0

    .line 53
    const-string v1, "can not get service securestore"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/oplus/felica/IFelicadeviceService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/oplus/felica/IFelicadeviceService;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    .line 44
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/oplus/felica/FelicadeviceManager;->mToken:Landroid/os/IBinder;

    .line 71
    const-string v0, "FelicadeviceManager"

    const-string v1, "FelicadeviceManager(Context context, IFelicadeviceService service) new 1216"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iput-object p1, p0, Lcom/oplus/felica/FelicadeviceManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    .line 74
    if-nez p2, :cond_0

    .line 75
    const-string v1, "mService is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/oplus/felica/FelicadeviceManager;
    .locals 3

    const-class v0, Lcom/oplus/felica/FelicadeviceManager;

    monitor-enter v0

    .line 58
    :try_start_0
    const-string v1, "FelicadeviceManager"

    const-string v2, "FelicadeviceManager getInstance enter"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v1, Lcom/oplus/felica/FelicadeviceManager;->sFelicadeviceManager:Lcom/oplus/felica/FelicadeviceManager;

    if-nez v1, :cond_1

    .line 60
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    sget-object v1, Lcom/oplus/felica/FelicadeviceManager;->sFelicadeviceManager:Lcom/oplus/felica/FelicadeviceManager;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/oplus/felica/FelicadeviceManager;

    invoke-direct {v1}, Lcom/oplus/felica/FelicadeviceManager;-><init>()V

    sput-object v1, Lcom/oplus/felica/FelicadeviceManager;->sFelicadeviceManager:Lcom/oplus/felica/FelicadeviceManager;

    .line 64
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 67
    :cond_1
    :goto_0
    sget-object v1, Lcom/oplus/felica/FelicadeviceManager;->sFelicadeviceManager:Lcom/oplus/felica/FelicadeviceManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist oplusPnscrGetCurrent()I
    .locals 4

    .line 128
    const/4 v0, -0x1

    .line 129
    .local v0, "currentValue":I
    iget-object v1, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    const-string v2, "FelicadeviceManager"

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/felica/IFelicadeviceService;->oplusPnscrGetCurrent()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 134
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in oplusPnscrGetCurrent(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 136
    :cond_0
    const-string v1, "oplusPnscrGetCurrent(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_1
    return v0
.end method

.method public blacklist oplusPnscrGetFreq()I
    .locals 4

    .line 113
    const/4 v0, -0x1

    .line 114
    .local v0, "freqValue":I
    iget-object v1, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    const-string v2, "FelicadeviceManager"

    if-eqz v1, :cond_0

    .line 116
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/felica/IFelicadeviceService;->oplusPnscrGetFreq()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 119
    :goto_0
    goto :goto_1

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in oplusPnscrGetFreq(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 121
    :cond_0
    const-string v1, "oplusPnscrGetFreq(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :goto_1
    return v0
.end method

.method public blacklist oplusPnscrTestCardEmulation()Z
    .locals 4

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "mCEResult":Z
    iget-object v1, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    const-string v2, "FelicadeviceManager"

    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/felica/IFelicadeviceService;->oplusPnscrTestCardEmulation()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 104
    :goto_0
    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in oplusPnscrTestCardEmulation(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 106
    :cond_0
    const-string v1, "oplusPnscrTestCardEmulation(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_1
    return v0
.end method

.method public blacklist oplusPnscrTestGpFelicaSpc()I
    .locals 4

    .line 83
    const/4 v0, -0x1

    .line 84
    .local v0, "spcValue":I
    iget-object v1, p0, Lcom/oplus/felica/FelicadeviceManager;->mService:Lcom/oplus/felica/IFelicadeviceService;

    const-string v2, "FelicadeviceManager"

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/felica/IFelicadeviceService;->oplusPnscrTestGpFelicaSpc()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 89
    :goto_0
    goto :goto_1

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Remote exception in oplusPnscrTestGpFelicaSpc(): "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 91
    :cond_0
    const-string v1, "oplusPnscrTestGpFelicaSpc(): Service not connected!"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_1
    return v0
.end method
