.class public interface abstract Landroid/widget/IOplusListHooks;
.super Ljava/lang/Object;
.source "IOplusListHooks.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Landroid/widget/IOplusListHooks;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Landroid/widget/IOplusListHooks$1;

    invoke-direct {v0}, Landroid/widget/IOplusListHooks$1;-><init>()V

    sput-object v0, Landroid/widget/IOplusListHooks;->DEFAULT:Landroid/widget/IOplusListHooks;

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 23
    invoke-interface {p0}, Landroid/widget/IOplusListHooks;->getDefault()Landroid/widget/IOplusListHooks;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Landroid/widget/IOplusListHooks;
    .locals 1

    .line 30
    sget-object v0, Landroid/widget/IOplusListHooks;->DEFAULT:Landroid/widget/IOplusListHooks;

    return-object v0
.end method

.method public blacklist getFastScroller(Landroid/widget/AbsListView;I)Landroid/widget/FastScroller;
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "style"    # I

    .line 43
    new-instance v0, Landroid/widget/FastScroller;

    invoke-direct {v0, p1, p2}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 35
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusListHooks:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist setForceUsingSpring(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 50
    return-void
.end method

.method public whitelist setOptEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 47
    return-void
.end method
