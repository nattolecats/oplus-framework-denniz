.class public interface abstract Lcom/oplus/multiapp/IOplusMultiApp;
.super Ljava/lang/Object;
.source "IOplusMultiApp.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Lcom/oplus/multiapp/IOplusMultiApp;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/oplus/multiapp/IOplusMultiApp$1;

    invoke-direct {v0}, Lcom/oplus/multiapp/IOplusMultiApp$1;-><init>()V

    sput-object v0, Lcom/oplus/multiapp/IOplusMultiApp;->DEFAULT:Lcom/oplus/multiapp/IOplusMultiApp;

    return-void
.end method


# virtual methods
.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 44
    sget-object v0, Lcom/oplus/multiapp/IOplusMultiApp;->DEFAULT:Lcom/oplus/multiapp/IOplusMultiApp;

    return-object v0
.end method

.method public blacklist getMaxCreateNum()I
    .locals 1

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiAppAccessMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 68
    const-string v0, "unkown"

    return-object v0
.end method

.method public blacklist getMultiAppAllAccessMode()Ljava/util/Map;
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

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public blacklist getMultiAppConfig()Lcom/oplus/multiapp/OplusMultiAppConfig;
    .locals 1

    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiAppList(I)Ljava/util/List;
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

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public blacklist getMultiAppUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 39
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusMultiApp:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist isCrossUserAuthority(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiApp(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiAppSupport()Z
    .locals 1

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiAppUserHandle(Landroid/os/UserHandle;)Z
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiAppUserId(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isProfileFilterPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist scanFileIfNeed(ILjava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 115
    return-void
.end method

.method public blacklist setMultiAppAccessMode(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiAppAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiAppConfig(Lcom/oplus/multiapp/OplusMultiAppConfig;)Z
    .locals 1
    .param p1, "config"    # Lcom/oplus/multiapp/OplusMultiAppConfig;

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setMultiAppPackageStatus(Ljava/lang/String;I)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 100
    const/4 v0, -0x1

    return v0
.end method
