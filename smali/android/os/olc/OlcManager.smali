.class public Landroid/os/olc/OlcManager;
.super Ljava/lang/Object;
.source "OlcManager.java"


# static fields
.field private static final blacklist ERROR_INVOKE_ERROR:I = -0x2

.field private static final blacklist ERROR_SERVICE_NOT_INIT:I = -0x1

.field private static final blacklist INIT_TRY_TIMES:I = 0x3

.field public static final blacklist OLC_SERVICE_NAME:Ljava/lang/String; = "olc"

.field private static final blacklist TAG:Ljava/lang/String; = "OlcManager"

.field private static blacklist sOlcService:Landroid/os/olc/IOlcService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist init()Z
    .locals 3

    .line 44
    sget-object v0, Landroid/os/olc/OlcManager;->sOlcService:Landroid/os/olc/IOlcService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 45
    return v1

    .line 47
    :cond_0
    const/4 v0, 0x3

    .line 49
    .local v0, "tryTimes":I
    :goto_0
    const-string v2, "olc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/olc/IOlcService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/olc/IOlcService;

    move-result-object v2

    sput-object v2, Landroid/os/olc/OlcManager;->sOlcService:Landroid/os/olc/IOlcService;

    .line 50
    if-eqz v2, :cond_1

    .line 51
    return v1

    .line 53
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 54
    const-string v1, "OlcManager"

    const-string v2, "failed to init olc service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x0

    return v1

    .line 53
    :cond_2
    goto :goto_0
.end method

.method public static blacklist raiseException(Landroid/os/olc/ExceptionInfo;)I
    .locals 4
    .param p0, "exceptionInfo"    # Landroid/os/olc/ExceptionInfo;

    .line 67
    invoke-static {}, Landroid/os/olc/OlcManager;->init()Z

    move-result v0

    const-string v1, "OlcManager"

    if-nez v0, :cond_0

    .line 68
    const-string v0, "olc service not init"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, -0x1

    return v0

    .line 72
    :cond_0
    :try_start_0
    sget-object v0, Landroid/os/olc/OlcManager;->sOlcService:Landroid/os/olc/IOlcService;

    invoke-interface {v0, p0}, Landroid/os/olc/IOlcService;->raiseException(Landroid/os/olc/ExceptionInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "olc raiseException failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v1, 0x0

    sput-object v1, Landroid/os/olc/OlcManager;->sOlcService:Landroid/os/olc/IOlcService;

    .line 76
    const/4 v1, -0x2

    return v1
.end method
