.class public Landroid/app/OplusExSystemServiceHelper;
.super Ljava/lang/Object;
.source "OplusExSystemServiceHelper.java"


# static fields
.field private static final blacklist ATHENA_SYSTEM_SERVICE_CLASSNAME:Ljava/lang/String; = "com.oplus.athena.systemservice.OplusAthenaSystemService"

.field public static final whitelist COREAPPFEATURE_SYSTEM_SERVICE_CLASSNAME:Ljava/lang/String; = "com.oplus.customize.coreapp.service.OplusCoreAppFeatureService"

.field public static final whitelist EX_SYSTEM_SERVICE_CLASSNAME:Ljava/lang/String; = "com.oplus.exsystemservice.OplusSharedSystemService"

.field public static final whitelist EX_SYSTEM_SERVICE_PKGNAME:Ljava/lang/String; = "com.oplus.exsystemservice"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sIntance:Landroid/app/OplusExSystemServiceHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    const-class v0, Landroid/app/OplusExSystemServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusExSystemServiceHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/app/OplusExSystemServiceHelper;
    .locals 2

    .line 28
    sget-object v0, Landroid/app/OplusExSystemServiceHelper;->sIntance:Landroid/app/OplusExSystemServiceHelper;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Landroid/app/OplusExSystemServiceHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Landroid/app/OplusExSystemServiceHelper;->sIntance:Landroid/app/OplusExSystemServiceHelper;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Landroid/app/OplusExSystemServiceHelper;

    invoke-direct {v1}, Landroid/app/OplusExSystemServiceHelper;-><init>()V

    sput-object v1, Landroid/app/OplusExSystemServiceHelper;->sIntance:Landroid/app/OplusExSystemServiceHelper;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Landroid/app/OplusExSystemServiceHelper;->sIntance:Landroid/app/OplusExSystemServiceHelper;

    return-object v0
.end method


# virtual methods
.method public whitelist checkOplusExSystemService(Landroid/os/Handler;Ljava/lang/String;)Z
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "className"    # Ljava/lang/String;

    .line 84
    const/4 v0, 0x1

    .line 88
    .local v0, "systemThread":Z
    invoke-virtual {p0, v0, p2}, Landroid/app/OplusExSystemServiceHelper;->checkOplusExSystemService(ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist checkOplusExSystemService(ZLandroid/content/Intent;)Z
    .locals 3
    .param p1, "systemThread"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 69
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 70
    sget-object v1, Landroid/app/OplusExSystemServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "checkOplusExSystemService intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 74
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 75
    sget-object v1, Landroid/app/OplusExSystemServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "checkOplusExSystemService intent getComponent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0

    .line 79
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/OplusExSystemServiceHelper;->checkOplusExSystemService(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist checkOplusExSystemService(ZLjava/lang/String;)Z
    .locals 5
    .param p1, "systemThread"    # Z
    .param p2, "className"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "isColorExSystemService":Z
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sget-object v1, Landroid/app/OplusExSystemServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "checkOplusExSystemService className is null or empty str"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return v0

    .line 49
    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, "com.oplus.exsystemservice.OplusSharedSystemService"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.oplus.customize.coreapp.service.OplusCoreAppFeatureService"

    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.oplus.athena.systemservice.OplusAthenaSystemService"

    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 52
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 61
    sget-object v2, Landroid/app/OplusExSystemServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOplusExSystemService e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    nop

    .line 64
    :goto_1
    return v0
.end method

.method public whitelist ensureMediaProviderPriority(Landroid/os/Handler;Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "activityThread"    # Landroid/os/Handler;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "runConnection"    # Ljava/lang/Runnable;

    .line 98
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.providers.media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Landroid/app/OplusExSystemServiceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/OplusExSystemServiceHelper;->checkOplusExSystemService(Landroid/os/Handler;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p1, p3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    :goto_0
    return-void
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 93
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.oplus.exsystemservice"

    const-string v2, "com.oplus.exsystemservice.OplusSharedSystemService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
