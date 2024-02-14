.class public Landroid/app/LoadedApkExtImpl;
.super Ljava/lang/Object;
.source "LoadedApkExtImpl.java"

# interfaces
.implements Landroid/app/ILoadedApkExt;


# static fields
.field private static final blacklist APK_CONTAINS_ENT_CERT:I

.field private static final blacklist TAG:Ljava/lang/String; = "LoadedApkExtImpl"

.field private static blacklist sMethodLogP:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 43
    const-string v0, "sys.apk_contains_ent_cert"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/LoadedApkExtImpl;->APK_CONTAINS_ENT_CERT:I

    .line 46
    const/4 v0, 0x0

    sput-object v0, Landroid/app/LoadedApkExtImpl;->sMethodLogP:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "loadedApk"    # Ljava/lang/Object;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static blacklist activityThreadHandlerOnServiceDispatcherConnected(Landroid/os/Handler;Landroid/content/ComponentName;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "activityThread"    # Landroid/os/Handler;
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "runConnection"    # Ljava/lang/Runnable;

    .line 79
    invoke-static {}, Landroid/app/OplusExSystemServiceHelper;->getInstance()Landroid/app/OplusExSystemServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/OplusExSystemServiceHelper;->ensureMediaProviderPriority(Landroid/os/Handler;Landroid/content/ComponentName;Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public static blacklist addPathInMakePaths(Landroid/app/ActivityThread;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 4
    .param p0, "activityThread"    # Landroid/app/ActivityThread;
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityThread;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p2, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Landroid/app/IOplusEnterpriseAndOperatorFeature;->DEFAULT:Landroid/app/IOplusEnterpriseAndOperatorFeature;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/app/IOplusEnterpriseAndOperatorFeature;

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    sget v3, Landroid/app/LoadedApkExtImpl;->APK_CONTAINS_ENT_CERT:I

    if-ne v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v0, v1, p1, p2}, Landroid/app/IOplusEnterpriseAndOperatorFeature;->addCustomMdmJarToPath(ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public static blacklist afterOnReceiveInArgsRunnable(Landroid/app/LoadedApk$ReceiverDispatcher$Args;ZLandroid/content/Intent;Z)V
    .locals 3
    .param p0, "args"    # Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    .param p1, "ordered"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "hasOplusQueueFlag"    # Z

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 110
    .local v0, "flag":I
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPendingResultExt:Landroid/content/IPendingResultExt;

    const/4 v2, 0x3

    invoke-interface {v1, v0, v2}, Landroid/content/IPendingResultExt;->setBroadcastState(II)V

    .line 117
    .end local v0    # "flag":I
    :cond_0
    if-eqz p3, :cond_1

    .line 118
    const/high16 v0, 0x80000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    :cond_1
    return-void
.end method

.method public static blacklist beforeOnReceiveInArgsRunnable(Landroid/app/LoadedApk$ReceiverDispatcher$Args;ZLandroid/content/Intent;)Z
    .locals 3
    .param p0, "args"    # Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    .param p1, "ordered"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 88
    .local v0, "flag":I
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPendingResultExt:Landroid/content/IPendingResultExt;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v2}, Landroid/content/IPendingResultExt;->setBroadcastState(II)V

    .line 95
    .end local v0    # "flag":I
    :cond_0
    const/4 v0, 0x0

    .line 96
    .local v0, "hasOplusQueueFlag":Z
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 98
    invoke-virtual {p2, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 100
    :cond_1
    return v0
.end method

.method public static blacklist inExceptionOnReceiveInArgsRunnable(Landroid/app/LoadedApk$ReceiverDispatcher$Args;Landroid/content/Intent;Z)V
    .locals 1
    .param p0, "args"    # Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "hasOplusQueueFlag"    # Z

    .line 128
    if-eqz p2, :cond_0

    .line 129
    const/high16 v0, 0x80000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    :cond_0
    return-void
.end method

.method public static blacklist innerReceiverToString(Landroid/app/LoadedApk$ReceiverDispatcher;)Ljava/lang/String;
    .locals 1
    .param p0, "receiverDispatcher"    # Landroid/app/LoadedApk$ReceiverDispatcher;

    .line 68
    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher;->getIntentReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist modifyResourcesInGetResources(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V
    .locals 2
    .param p0, "resourcesImplExt"    # Landroid/content/res/IResourcesImplExt;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 61
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v0, p0, p1}, Landroid/content/res/IOplusThemeManager;->init(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static blacklist onPerformReceiveWithIntentNonNull(Landroid/app/LoadedApk$ReceiverDispatcher$Args;ZLandroid/content/Intent;)V
    .locals 3
    .param p0, "args"    # Landroid/app/LoadedApk$ReceiverDispatcher$Args;
    .param p1, "ordered"    # Z
    .param p2, "intent"    # Landroid/content/Intent;

    .line 138
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 140
    .local v0, "flag":I
    iget-object v1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPendingResultExt:Landroid/content/IPendingResultExt;

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/IPendingResultExt;->setBroadcastState(II)V

    .line 143
    .end local v0    # "flag":I
    :cond_0
    return-void
.end method

.method public static blacklist sGetOverrideDisplayId(Landroid/content/pm/ApplicationInfo;)Ljava/lang/Integer;
    .locals 3
    .param p0, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 175
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 176
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    invoke-interface {v1}, Landroid/content/pm/IApplicationInfoExt;->getLaunchingDisplayId()I

    move-result v1

    .line 177
    .local v1, "launchingDisplayId":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 178
    return-object v0

    .line 180
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 183
    .end local v1    # "launchingDisplayId":I
    :cond_1
    return-object v0
.end method

.method public static blacklist sLogP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 148
    const-string v0, "LoadedApkExtImpl"

    sget-object v1, Landroid/app/LoadedApkExtImpl;->sMethodLogP:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 150
    :try_start_0
    const-string v1, "android.util.Log"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "p"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Landroid/app/LoadedApkExtImpl;->sMethodLogP:Ljava/lang/reflect/Method;

    .line 152
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "cls":Ljava/lang/Class;
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoSuchMethodException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 153
    :catch_2
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 164
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    sget-object v0, Landroid/app/LoadedApkExtImpl;->sMethodLogP:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 166
    const/4 v1, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 169
    goto :goto_1

    .line 167
    :catch_3
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist checkUnregisterReceiver(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 192
    instance-of v0, p1, Landroid/window/WindowContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/window/WindowTokenClient;

    .line 194
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

    .line 196
    .end local v0    # "wtc":Landroid/window/WindowTokenClient;
    :cond_1
    return v1
.end method
