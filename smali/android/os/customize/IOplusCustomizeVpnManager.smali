.class public interface abstract Landroid/os/customize/IOplusCustomizeVpnManager;
.super Ljava/lang/Object;
.source "IOplusCustomizeVpnManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/os/customize/IOplusCustomizeVpnManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Landroid/os/customize/IOplusCustomizeVpnManager$1;

    invoke-direct {v0}, Landroid/os/customize/IOplusCustomizeVpnManager$1;-><init>()V

    sput-object v0, Landroid/os/customize/IOplusCustomizeVpnManager;->DEFAULT:Landroid/os/customize/IOplusCustomizeVpnManager;

    return-void
.end method


# virtual methods
.method public blacklist deleteVpnProfile(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "key"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disestablishVpnConnection(Landroid/content/ComponentName;)I
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 60
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 28
    invoke-interface {p0}, Landroid/os/customize/IOplusCustomizeVpnManager;->getDefault()Landroid/os/customize/IOplusCustomizeVpnManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Landroid/os/customize/IOplusCustomizeVpnManager;
    .locals 1

    .line 40
    sget-object v0, Landroid/os/customize/IOplusCustomizeVpnManager;->DEFAULT:Landroid/os/customize/IOplusCustomizeVpnManager;

    return-object v0
.end method

.method public blacklist getVpnAlwaysOnPersis(Ljava/lang/String;)Z
    .locals 1
    .param p1, "defval"    # Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getVpnList(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getVpnServiceState()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 35
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusCustomizeVpnManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist isVpnDisabled(Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "vpnPackage"    # Ljava/lang/String;
    .param p3, "lockdown"    # Z

    .line 52
    return-void
.end method

.method public blacklist setVpnAlwaysOnPersis(Z)V
    .locals 0
    .param p1, "lockdown"    # Z

    .line 66
    return-void
.end method

.method public blacklist setVpnDisabled(Landroid/content/ComponentName;Z)V
    .locals 0
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "disabled"    # Z

    .line 47
    return-void
.end method
