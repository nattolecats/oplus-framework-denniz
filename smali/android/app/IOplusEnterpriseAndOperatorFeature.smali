.class public interface abstract Landroid/app/IOplusEnterpriseAndOperatorFeature;
.super Ljava/lang/Object;
.source "IOplusEnterpriseAndOperatorFeature.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/app/IOplusEnterpriseAndOperatorFeature;

.field public static final blacklist NAME:Ljava/lang/String; = "IOplusEnterpriseAndOperatorFeature"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/app/IOplusEnterpriseAndOperatorFeature$1;

    invoke-direct {v0}, Landroid/app/IOplusEnterpriseAndOperatorFeature$1;-><init>()V

    sput-object v0, Landroid/app/IOplusEnterpriseAndOperatorFeature;->DEFAULT:Landroid/app/IOplusEnterpriseAndOperatorFeature;

    return-void
.end method


# virtual methods
.method public blacklist addCustomMdmJarToPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "outPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist addCustomMdmJarToPath(ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;)V
    .locals 0
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

    .line 57
    .local p3, "outZipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public blacklist getDefault()Landroid/app/IOplusEnterpriseAndOperatorFeature;
    .locals 1

    .line 45
    sget-object v0, Landroid/app/IOplusEnterpriseAndOperatorFeature;->DEFAULT:Landroid/app/IOplusEnterpriseAndOperatorFeature;

    return-object v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 30
    invoke-interface {p0}, Landroid/app/IOplusEnterpriseAndOperatorFeature;->getDefault()Landroid/app/IOplusEnterpriseAndOperatorFeature;

    move-result-object v0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 40
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusEnterpriseAndOperatorFeature:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist isPackageContainsOplusCertificates(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return v0
.end method
