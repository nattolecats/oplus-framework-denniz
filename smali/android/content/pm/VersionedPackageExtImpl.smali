.class public Landroid/content/pm/VersionedPackageExtImpl;
.super Ljava/lang/Object;
.source "VersionedPackageExtImpl.java"

# interfaces
.implements Landroid/content/pm/IVersionedPackageExt;


# instance fields
.field private blacklist mCallPid:I

.field private blacklist mCallUid:I

.field private blacklist mFlag:I

.field private blacklist mVersionedPackage:Landroid/content/pm/VersionedPackage;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mFlag:I

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mCallUid:I

    .line 28
    iput v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mCallPid:I

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mVersionedPackage:Landroid/content/pm/VersionedPackage;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getCallPid()I
    .locals 1

    .line 47
    iget v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mCallPid:I

    return v0
.end method

.method public blacklist getCallUid()I
    .locals 1

    .line 42
    iget v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mCallUid:I

    return v0
.end method

.method public blacklist getDeleteFlag()I
    .locals 1

    .line 59
    iget v0, p0, Landroid/content/pm/VersionedPackageExtImpl;->mFlag:I

    return v0
.end method

.method public blacklist setCallInfo(II)V
    .locals 0
    .param p1, "callUid"    # I
    .param p2, "callPid"    # I

    .line 36
    iput p1, p0, Landroid/content/pm/VersionedPackageExtImpl;->mCallUid:I

    .line 37
    iput p2, p0, Landroid/content/pm/VersionedPackageExtImpl;->mCallPid:I

    .line 38
    return-void
.end method

.method public blacklist setDeleteFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 54
    iput p1, p0, Landroid/content/pm/VersionedPackageExtImpl;->mFlag:I

    .line 55
    return-void
.end method
