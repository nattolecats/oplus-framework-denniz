.class public Lcom/oplus/multiapp/OplusMultiAppManager;
.super Lcom/oplus/multiapp/BaseOplusMultiAppManager;
.source "OplusMultiAppManager.java"


# static fields
.field public static final whitelist ACTION_MULTI_APP_ALIAS_CHANGED:Ljava/lang/String; = "oplus.intent.action.MULTI_APP_RENAME"

.field public static final whitelist ACTION_MULTI_APP_CONFIG_CHANGED:Ljava/lang/String; = "oplus.intent.action.MULTI_APP_CONFIG_CHANGED"

.field public static final blacklist ACTION_MULTI_APP_HIDE_ALERT_DIALOG:Ljava/lang/String; = "oplus.intent.action.MULTI_APP_HIDE_ALERT_DIALOG"

.field public static final whitelist ACTION_MULTI_APP_PACKAGE_ADDED:Ljava/lang/String; = "oplus.intent.action.MULTI_APP_PACKAGE_ADDED"

.field public static final whitelist ACTION_MULTI_APP_PACKAGE_REMOVED:Ljava/lang/String; = "oplus.intent.action.MULTI_APP_PACKAGE_REMOVED"

.field public static final blacklist ACTION_REMOVE_MULTIAPP_COMPLETED:Ljava/lang/String; = "oplus.intent.action.REMOVE_MULTIAPP_COMPLETED"

.field public static final blacklist CHECK_MULTI_APP_USER:I = 0x2

.field public static final whitelist DEFAULT_ACCESS:I = 0x0

.field public static final whitelist EXTRA_ALIAS:Ljava/lang/String; = "name"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field public static final whitelist EXTRA_STATUS:Ljava/lang/String; = "extra_status"

.field public static final whitelist KEEP_CROSS_VOLUME_PKG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LIST_TYPE_ACROSS_AUTHORITY:I = 0x4

.field public static final whitelist LIST_TYPE_ALLOWED:I = 0x1

.field public static final whitelist LIST_TYPE_CREATED:I = 0x0

.field public static final whitelist LIST_TYPE_INSTALLED:I = 0x3

.field public static final whitelist LIST_TYPE_RELATED:I = 0x2

.field public static final whitelist MAIN_APP_ACCESS:I = 0x1

.field public static final whitelist MULTI_APP_STATUS_ADD:I = 0x1

.field public static final whitelist MULTI_APP_STATUS_REMOVE:I = -0x1

.field public static final blacklist REMOVE_MULTI_APP_USER:I = 0x3

.field public static final blacklist RESTORE_MULTI_APP_USER:I = 0x4

.field public static final blacklist RESULT_CHECK_ERROR_NO_RUNNING:I = -0x4

.field public static final blacklist RESULT_CHECK_ERROR_REMOVE_MULTI_APP_USER:I = -0x7

.field public static final blacklist RESULT_CHECK_ERROR_RUNNING_LOCKED:I = -0x5

.field public static final blacklist RESULT_CHECK_ERROR_VOLD_CORRUPT:I = -0x6

.field public static final blacklist RESULT_CHECK_NO_ERROR:I = 0x0

.field public static final whitelist RESULT_ERROR_NOT_SUPPORT:I = -0x2

.field public static final whitelist RESULT_ERROR_NO_SPACE:I = -0x3

.field public static final whitelist RESULT_FAILED:I = -0x1

.field public static final blacklist RESULT_RESTORE_ERROR_NEED_RESET:I = -0x8

.field public static final whitelist RESULT_SUCCESS:I = 0x1

.field public static final whitelist VOLUME_MAIN:Ljava/lang/String; = "ace-0"

.field public static final whitelist VOLUME_MAIN_PATH:Ljava/lang/String; = "/storage/ace-0"

.field public static final whitelist VOLUME_MULTI_APP:Ljava/lang/String; = "ace-999"

.field public static final whitelist VOLUME_MULTI_APP_PATH:Ljava/lang/String; = "/storage/ace-999"

.field private static final blacklist sOplusMultiAppManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/multiapp/OplusMultiAppManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 161
    const-string v0, "com.google.android.providers.media.module"

    const-string v1, "android"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oplus/multiapp/OplusMultiAppManager;->KEEP_CROSS_VOLUME_PKG:Ljava/util/List;

    .line 166
    new-instance v0, Lcom/oplus/multiapp/OplusMultiAppManager$1;

    invoke-direct {v0}, Lcom/oplus/multiapp/OplusMultiAppManager$1;-><init>()V

    sput-object v0, Lcom/oplus/multiapp/OplusMultiAppManager;->sOplusMultiAppManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Lcom/oplus/multiapp/BaseOplusMultiAppManager;-><init>()V

    .line 176
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/multiapp/OplusMultiAppManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/multiapp/OplusMultiAppManager;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;
    .locals 1

    .line 183
    sget-object v0, Lcom/oplus/multiapp/OplusMultiAppManager;->sOplusMultiAppManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/multiapp/OplusMultiAppManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getMaxCreateNum()I
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0}, Lcom/oplus/multiapp/IOplusMultiApp;->getMaxCreateNum()I

    move-result v0

    return v0
.end method

.method public whitelist getMultiAppAccessMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->getMultiAppAccessMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMultiAppAllAccessMode()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0}, Lcom/oplus/multiapp/IOplusMultiApp;->getMultiAppAllAccessMode()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0}, Lcom/oplus/multiapp/IOplusMultiApp;->getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMultiAppList(I)Ljava/util/List;
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->getMultiAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMultiAppUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0}, Lcom/oplus/multiapp/IOplusMultiApp;->getMultiAppUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isMultiApp(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1, p2}, Lcom/oplus/multiapp/IOplusMultiApp;->isMultiApp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiAppSupport()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0}, Lcom/oplus/multiapp/IOplusMultiApp;->isMultiAppSupport()Z

    move-result v0

    return v0
.end method

.method public whitelist isMultiAppUserHandle(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 293
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public whitelist setMultiAppAccessMode(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I

    .line 260
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1, p2}, Lcom/oplus/multiapp/IOplusMultiApp;->setMultiAppAccessMode(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1, p2}, Lcom/oplus/multiapp/IOplusMultiApp;->setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)Z
    .locals 1
    .param p1, "config"    # Lcom/oplus/multiapp/OplusMultiAppConfig;

    .line 213
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1}, Lcom/oplus/multiapp/IOplusMultiApp;->setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)Z

    move-result v0

    return v0
.end method

.method public whitelist setMultiAppStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 234
    iget-object v0, p0, Lcom/oplus/multiapp/OplusMultiAppManager;->oplusMultiApp:Lcom/oplus/multiapp/IOplusMultiApp;

    invoke-interface {v0, p1, p2}, Lcom/oplus/multiapp/IOplusMultiApp;->setMultiAppPackageStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
