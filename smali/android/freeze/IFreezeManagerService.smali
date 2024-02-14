.class public interface abstract Landroid/freeze/IFreezeManagerService;
.super Ljava/lang/Object;
.source "IFreezeManagerService.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/freeze/IFreezeManagerService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Landroid/freeze/IFreezeManagerService$1;

    invoke-direct {v0}, Landroid/freeze/IFreezeManagerService$1;-><init>()V

    sput-object v0, Landroid/freeze/IFreezeManagerService;->DEFAULT:Landroid/freeze/IFreezeManagerService;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 28
    invoke-interface {p0}, Landroid/freeze/IFreezeManagerService;->getDefault()Landroid/freeze/IFreezeManagerService;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/freeze/IFreezeManagerService;
    .locals 1

    .line 35
    sget-object v0, Landroid/freeze/IFreezeManagerService;->DEFAULT:Landroid/freeze/IFreezeManagerService;

    return-object v0
.end method

.method public blacklist getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 51
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 40
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IFreezeManagerService:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist isFreezeEnabled()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setFreezeEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 48
    return-void
.end method

.method public blacklist setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 59
    return-void
.end method

.method public blacklist setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "setting"    # I
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 62
    return-void
.end method
