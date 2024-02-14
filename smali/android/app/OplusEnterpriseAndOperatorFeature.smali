.class public Landroid/app/OplusEnterpriseAndOperatorFeature;
.super Ljava/lang/Object;
.source "OplusEnterpriseAndOperatorFeature.java"

# interfaces
.implements Landroid/app/IOplusEnterpriseAndOperatorFeature;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusEnterpriseAndOperatorFeature"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addCustomMdmJarToPath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "outPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "/system_ext/framework/OplusMdmInterface.jar"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "/system_ext/framework/OplusMdmAdapter.jar"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public blacklist addCustomMdmJarToPath(ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 3
    .param p1, "isActivityThreadExist"    # Z
    .param p2, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p3, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 72
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 73
    .local v0, "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v0, :cond_0

    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/OplusEnterpriseAndOperatorFeature;->isPackageContainsOplusCertificates(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p3}, Landroid/app/OplusEnterpriseAndOperatorFeature;->addCustomMdmJarToPath(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0    # "iPackageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OplusEnterpriseAndOperatorFeature"

    const-string v2, "addCustomMdmJarToPath errror"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 81
    :goto_1
    return-void
.end method

.method public blacklist isPackageContainsOplusCertificates(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    const-string v0, "opluscoreappservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 51
    .local v0, "mRemote":Landroid/os/IBinder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 52
    return v1

    .line 55
    :cond_0
    invoke-static {v0}, Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService;

    move-result-object v2

    .line 57
    .local v2, "service":Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService;
    if-nez v2, :cond_1

    .line 58
    return v1

    .line 61
    :cond_1
    invoke-interface {v2, p1}, Lcom/oplus/customize/coreapp/aidl/IOplusCoreAppService;->isPackageContainsOplusCertificates(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
