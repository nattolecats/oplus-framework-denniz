.class public Landroid/content/pm/PackageUserStateExtImpl;
.super Ljava/lang/Object;
.source "PackageUserStateExtImpl.java"

# interfaces
.implements Landroid/content/pm/IPackageUserStateExt;


# instance fields
.field private blacklist oplusFreezeFlag:I

.field private blacklist oplusFreezeState:I

.field public blacklist pendingDataMig:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "base"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getFreezeFlag()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeFlag:I

    return v0
.end method

.method public blacklist getFreezeState()I
    .locals 1

    .line 51
    iget v0, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeState:I

    return v0
.end method

.method public blacklist ignorePackageDisabledInIsEnabled(IJ)Z
    .locals 5
    .param p1, "enabled"    # I
    .param p2, "flags"    # J

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "filterForFreeze":Z
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget v2, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeState:I

    if-ne v2, v1, :cond_0

    const-wide/32 v1, 0x40000000

    and-long/2addr v1, p2

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 83
    const/4 v0, 0x1

    .line 85
    :cond_0
    return v0
.end method

.method public blacklist isPendingDataMig()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Landroid/content/pm/PackageUserStateExtImpl;->pendingDataMig:Z

    return v0
.end method

.method public blacklist setExtraData(Landroid/content/pm/IPackageUserStateExt;)V
    .locals 1
    .param p1, "mExt"    # Landroid/content/pm/IPackageUserStateExt;

    .line 71
    invoke-interface {p1}, Landroid/content/pm/IPackageUserStateExt;->getFreezeState()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeState:I

    .line 72
    invoke-interface {p1}, Landroid/content/pm/IPackageUserStateExt;->getFreezeFlag()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeFlag:I

    .line 73
    return-void
.end method

.method public blacklist setFreezeFlag(I)V
    .locals 0
    .param p1, "oplusFreezeFlag"    # I

    .line 66
    iput p1, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeFlag:I

    .line 67
    return-void
.end method

.method public blacklist setFreezeState(I)V
    .locals 0
    .param p1, "oplusFreezeState"    # I

    .line 61
    iput p1, p0, Landroid/content/pm/PackageUserStateExtImpl;->oplusFreezeState:I

    .line 62
    return-void
.end method

.method public blacklist setPendingDataMig(Z)V
    .locals 0
    .param p1, "pendingDataMig"    # Z

    .line 40
    iput-boolean p1, p0, Landroid/content/pm/PackageUserStateExtImpl;->pendingDataMig:Z

    .line 41
    return-void
.end method
