.class public Landroid/nfc/NfcAdapterExtImpl;
.super Ljava/lang/Object;
.source "NfcAdapterExtImpl.java"

# interfaces
.implements Landroid/nfc/INfcAdapterExt;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist hookDisable()Z
    .locals 5

    .line 38
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 39
    const-string v3, "android.permission.NFC"

    const-string v4, "disableNfc"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 38
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist hookEnable()Z
    .locals 5

    .line 29
    sget-object v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;->DEFAULT:Lcom/oplus/permission/IOplusPermissionCheckInjector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/permission/IOplusPermissionCheckInjector;

    .line 30
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 30
    const-string v3, "android.permission.NFC"

    const-string v4, "enableNfc"

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/oplus/permission/IOplusPermissionCheckInjector;->checkPermission(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    .line 29
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
