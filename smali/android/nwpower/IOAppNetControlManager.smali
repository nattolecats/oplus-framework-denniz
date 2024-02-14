.class public interface abstract Landroid/nwpower/IOAppNetControlManager;
.super Ljava/lang/Object;
.source "IOAppNetControlManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/nwpower/IOAppNetControlManager;

.field public static final blacklist NAME:Ljava/lang/String; = "IOAppNetControlManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/nwpower/IOAppNetControlManager$1;

    invoke-direct {v0}, Landroid/nwpower/IOAppNetControlManager$1;-><init>()V

    sput-object v0, Landroid/nwpower/IOAppNetControlManager;->DEFAULT:Landroid/nwpower/IOAppNetControlManager;

    return-void
.end method


# virtual methods
.method public blacklist destroySocket(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 39
    return-void
.end method

.method public whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 33
    sget-object v0, Landroid/nwpower/IOAppNetControlManager;->DEFAULT:Landroid/nwpower/IOAppNetControlManager;

    return-object v0
.end method

.method public blacklist getStaticOAppNetControlEnable()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 29
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOAppNetControlManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public blacklist legacyDestroySocket()V
    .locals 0

    .line 40
    return-void
.end method

.method public blacklist networkDisableWhiteList(Ljava/util/List;I)I
    .locals 1
    .param p2, "enable"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 42
    .local p1, "appConfigUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestAppFireWallHistoryStamp(I)[J
    .locals 1
    .param p1, "uid"    # I

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public blacklist setFirewall(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 37
    return-void
.end method

.method public blacklist setFirewallWithArgs(IZII)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .param p3, "netrestore"    # I
    .param p4, "scenes"    # I

    .line 38
    return-void
.end method
