.class public interface abstract Landroid/view/performance/IOplusViewRootPerfInjector;
.super Ljava/lang/Object;
.source "IOplusViewRootPerfInjector.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final blacklist DEFAULT:Landroid/view/performance/IOplusViewRootPerfInjector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Landroid/view/performance/IOplusViewRootPerfInjector$1;

    invoke-direct {v0}, Landroid/view/performance/IOplusViewRootPerfInjector$1;-><init>()V

    sput-object v0, Landroid/view/performance/IOplusViewRootPerfInjector;->DEFAULT:Landroid/view/performance/IOplusViewRootPerfInjector;

    return-void
.end method


# virtual methods
.method public blacklist checkIsWebchatLauncherUI()V
    .locals 0

    .line 23
    return-void
.end method

.method public blacklist checkTraversalsImmediatelyProssible(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkTraversalsImmediatelyProssibleInTraversals(ZZ)Z
    .locals 1
    .param p1, "isFirst"    # Z
    .param p2, "mIsInTraversal"    # Z

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableRelayout()Z
    .locals 1

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist initViewRoomImpl()V
    .locals 0

    .line 21
    return-void
.end method

.method public blacklist isWebchatLauncherUI()Z
    .locals 1

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setIsWebchatLauncherUI(Z)V
    .locals 0
    .param p1, "isWeixinLauncherUI"    # Z

    .line 27
    return-void
.end method
