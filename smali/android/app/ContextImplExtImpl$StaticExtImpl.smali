.class public Landroid/app/ContextImplExtImpl$StaticExtImpl;
.super Ljava/lang/Object;
.source "ContextImplExtImpl.java"

# interfaces
.implements Landroid/app/IContextImplExt$IStaticExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImplExtImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticExtImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImplExtImpl$StaticExtImpl$SingleHolder;
    }
.end annotation


# static fields
.field static blacklist DEBUG_CIL:Z = false

.field private static final blacklist FORCE_DISABLE_START_BG_APP_SERVICE_CRASH:I = 0x2b8

.field private static final blacklist SKIP_START_BG_APP_SERVICE_CRASH:I = 0x2c7

.field private static final blacklist TAG:Ljava/lang/String; = "ContextImplExtImpl"

.field private static blacklist sMediaMounted:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ContextImplExtImpl$StaticExtImpl;->sMediaMounted:Z

    .line 52
    const-string v1, "persist.sys.assert.panic"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ContextImplExtImpl$StaticExtImpl;->DEBUG_CIL:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Landroid/app/ContextImplExtImpl$StaticExtImpl;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 59
    invoke-static {}, Landroid/app/ContextImplExtImpl$StaticExtImpl$SingleHolder;->-$$Nest$sfgetINSTACNE()Landroid/app/ContextImplExtImpl$StaticExtImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist checkExternalStorageStateMounted(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "wait":I
    const/16 v1, 0x1e

    .line 111
    .local v1, "waitCount":I
    const/16 v2, 0x64

    .line 112
    .local v2, "sleepCount":I
    :cond_0
    sget-boolean v3, Landroid/app/ContextImplExtImpl$StaticExtImpl;->sMediaMounted:Z

    if-nez v3, :cond_2

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Landroid/app/ContextImplExtImpl$StaticExtImpl;->sMediaMounted:Z

    .line 115
    if-eqz v3, :cond_1

    .line 116
    goto :goto_1

    .line 119
    :cond_1
    int-to-long v3, v2

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_0

    .line 120
    :catch_0
    move-exception v3

    .line 123
    :goto_0
    if-ne v0, v1, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensure external dir,storage is not prepared!:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",time\'s up!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContextImplExtImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist checkUnregisterReceiver(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    instance-of v0, p1, Landroid/window/WindowContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 150
    .local v0, "wtc":Landroid/window/WindowTokenClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/window/WindowTokenClient;->getWrapper()Landroid/app/IWindowTokenClientWrapper;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWindowTokenClientWrapper;->isContextWeakRefRelease()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 152
    .end local v0    # "wtc":Landroid/window/WindowTokenClient;
    :cond_1
    return v1
.end method

.method public blacklist fixupDirIfNeed(Ljava/io/File;Landroid/os/storage/StorageManager;)V
    .locals 2
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "sm"    # Landroid/os/storage/StorageManager;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can not read or write, try to fix it"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextImplExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p2, p1}, Landroid/os/storage/StorageManager;->fixupAppDir(Ljava/io/File;)V

    .line 140
    :cond_1
    return-void
.end method

.method public blacklist hookSetResources(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 1
    .param p1, "mResources"    # Landroid/content/res/Resources;
    .param p2, "mPackageName"    # Ljava/lang/String;

    .line 99
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/ResourcesImpl;->mResourcesImplExt:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0, p2}, Landroid/content/res/IResourcesImplExt;->init(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public blacklist hookStartServiceCommon(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;

    .line 71
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0, p1}, Landroid/content/pm/OplusPackageManager;-><init>(Landroid/content/Context;)V

    .line 77
    .local v0, "pm":Landroid/content/pm/OplusPackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b8

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 78
    return v2

    .line 82
    :cond_0
    if-eqz p2, :cond_4

    .line 83
    sget-boolean v1, Landroid/app/ContextImplExtImpl$StaticExtImpl;->DEBUG_CIL:Z

    if-eqz v1, :cond_1

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The package of the service is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " The component of the service is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ContextImplExtImpl"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v3, 0x2c7

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 87
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    :cond_3
    return v2

    .line 92
    :cond_4
    const/4 v1, 0x0

    return v1
.end method
