.class public Lcom/oplus/quicksettings/OplusTileManager;
.super Ljava/lang/Object;
.source "OplusTileManager.java"


# static fields
.field public static final whitelist ACTION_OPLUS_TILE_INIT:Ljava/lang/String; = "com.oplus.quicksettings.action.OPLUS_TILE"

.field public static final whitelist DEBUG:Z = false

.field private static final blacklist INSTANCE:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/quicksettings/OplusTileManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist KEY_TYPE_ACTION:Ljava/lang/String; = "type_action"

.field public static final whitelist SERVICE_NAME:Ljava/lang/String; = "oplus_tile"

.field public static final whitelist TAG:Ljava/lang/String; = "OplusTileManager"

.field public static final whitelist TYPE_ACTION_CLICK:I = 0x1

.field public static final whitelist TYPE_ACTION_INIT:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/oplus/quicksettings/OplusTileManager$1;

    invoke-direct {v0}, Lcom/oplus/quicksettings/OplusTileManager$1;-><init>()V

    sput-object v0, Lcom/oplus/quicksettings/OplusTileManager;->INSTANCE:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/quicksettings/OplusTileManager;
    .locals 1

    .line 59
    sget-object v0, Lcom/oplus/quicksettings/OplusTileManager;->INSTANCE:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quicksettings/OplusTileManager;

    return-object v0
.end method

.method private blacklist getService()Lcom/oplus/quicksettings/IOplusTileManagerService;
    .locals 2

    .line 63
    const-string v0, "oplus_tile"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 64
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 65
    const/4 v1, 0x0

    return-object v1

    .line 67
    :cond_0
    invoke-static {v0}, Lcom/oplus/quicksettings/IOplusTileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/quicksettings/IOplusTileManagerService;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist getOplusTile(Landroid/content/ComponentName;)Lcom/oplus/quicksettings/OplusTile;
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/oplus/quicksettings/OplusTileManager;->getService()Lcom/oplus/quicksettings/IOplusTileManagerService;

    move-result-object v0

    .line 101
    .local v0, "service":Lcom/oplus/quicksettings/IOplusTileManagerService;
    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p1}, Lcom/oplus/quicksettings/IOplusTileManagerService;->getOplusTile(Landroid/content/ComponentName;)Lcom/oplus/quicksettings/OplusTile;

    .line 108
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist updateOplusTile(Lcom/oplus/quicksettings/OplusTile;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "oplusTile"    # Lcom/oplus/quicksettings/OplusTile;
    .param p2, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/oplus/quicksettings/OplusTileManager;->getService()Lcom/oplus/quicksettings/IOplusTileManagerService;

    move-result-object v0

    .line 81
    .local v0, "service":Lcom/oplus/quicksettings/IOplusTileManagerService;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1, p2}, Lcom/oplus/quicksettings/IOplusTileManagerService;->updateOplusTile(Lcom/oplus/quicksettings/OplusTile;Landroid/content/ComponentName;)V

    .line 88
    :cond_0
    return-void
.end method
