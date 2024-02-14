.class public Landroid/app/OplusAppOpsResourcesManager;
.super Ljava/lang/Object;
.source "OplusAppOpsResourcesManager.java"


# static fields
.field private static final greylist IOplusAppOpsResourcesManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IOplusAppOpsResourcesManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusAppOpsResourcesManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/app/OplusAppOpsResourcesManager$1;

    invoke-direct {v0}, Landroid/app/OplusAppOpsResourcesManager$1;-><init>()V

    sput-object v0, Landroid/app/OplusAppOpsResourcesManager;->IOplusAppOpsResourcesManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static blacklist getService()Landroid/app/IOplusAppOpsResourcesManager;
    .locals 1

    .line 34
    sget-object v0, Landroid/app/OplusAppOpsResourcesManager;->IOplusAppOpsResourcesManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusAppOpsResourcesManager;

    return-object v0
.end method


# virtual methods
.method public whitelist readCustomizedAppOps(I)Ljava/util/List;
    .locals 2
    .param p1, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-static {}, Landroid/app/OplusAppOpsResourcesManager;->getService()Landroid/app/IOplusAppOpsResourcesManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {}, Landroid/app/OplusAppOpsResourcesManager;->getService()Landroid/app/IOplusAppOpsResourcesManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IOplusAppOpsResourcesManager;->readCustomizedAppOps(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_0
    const-string v0, "OplusAppOpsResourcesManager"

    const-string v1, "readCustomizedAppOps failed because service has not been created"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
