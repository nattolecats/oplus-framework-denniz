.class public Landroid/app/OplusWallpaperManager;
.super Ljava/lang/Object;
.source "OplusWallpaperManager.java"


# static fields
.field public static final whitelist FLAG_FLAT_DISPLAY:I = 0x10

.field public static final whitelist FLAG_FOLD_DISPLAY:I = 0x20

.field public static final whitelist PHYSICAL_DISPLAY_MAIN:I = 0x1

.field public static final whitelist PHYSICAL_DISPLAY_SUB:I = 0x2

.field private static final blacklist SERVICE_SINGLETON:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IOplusWallpaperManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusWallpaperManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Landroid/app/OplusWallpaperManager$1;

    invoke-direct {v0}, Landroid/app/OplusWallpaperManager$1;-><init>()V

    sput-object v0, Landroid/app/OplusWallpaperManager;->SERVICE_SINGLETON:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getService()Landroid/app/IOplusWallpaperManager;
    .locals 1

    .line 88
    sget-object v0, Landroid/app/OplusWallpaperManager;->SERVICE_SINGLETON:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusWallpaperManager;

    return-object v0
.end method

.method public static whitelist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .locals 3
    .param p0, "userId"    # I
    .param p1, "which"    # I

    .line 135
    invoke-static {}, Landroid/app/OplusWallpaperManager;->getService()Landroid/app/IOplusWallpaperManager;

    move-result-object v0

    .line 136
    .local v0, "service":Landroid/app/IOplusWallpaperManager;
    if-nez v0, :cond_0

    .line 137
    const-string v1, "OplusWallpaperManager"

    const-string v2, "can not find OplusWallpaperManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/app/IOplusWallpaperManager;->getFoldWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist rebindWallpaperComponent(Landroid/content/ComponentName;I)Z
    .locals 3
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "physicalId"    # I

    .line 161
    invoke-static {}, Landroid/app/OplusWallpaperManager;->getService()Landroid/app/IOplusWallpaperManager;

    move-result-object v0

    .line 162
    .local v0, "service":Landroid/app/IOplusWallpaperManager;
    if-nez v0, :cond_0

    .line 163
    const-string v1, "OplusWallpaperManager"

    const-string v2, "can not find OplusWallpaperManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v1, 0x0

    return v1

    .line 168
    :cond_0
    :try_start_0
    invoke-interface {v0, p0, p1}, Landroid/app/IOplusWallpaperManager;->rebindWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public static whitelist setWallpaperComponent(Landroid/content/Context;Landroid/content/ComponentName;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "which"    # I

    .line 107
    invoke-static {}, Landroid/app/OplusWallpaperManager;->getService()Landroid/app/IOplusWallpaperManager;

    move-result-object v0

    .line 108
    .local v0, "service":Landroid/app/IOplusWallpaperManager;
    if-nez v0, :cond_0

    .line 109
    const-string v1, "OplusWallpaperManager"

    const-string v2, "can not find OplusWallpaperManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, 0x0

    return v1

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, p1, v1, v2, p2}, Landroid/app/IOplusWallpaperManager;->setFoldWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v1, 0x1

    return v1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
