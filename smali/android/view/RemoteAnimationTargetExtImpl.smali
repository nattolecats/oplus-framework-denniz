.class public Landroid/view/RemoteAnimationTargetExtImpl;
.super Ljava/lang/Object;
.source "RemoteAnimationTargetExtImpl.java"

# interfaces
.implements Landroid/view/IRemoteAnimationTargetExt;


# instance fields
.field private blacklist mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

.field private blacklist mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/RemoteAnimationTarget;

    iput-object v0, p0, Landroid/view/RemoteAnimationTargetExtImpl;->mRemoteAnimationTarget:Landroid/view/RemoteAnimationTarget;

    .line 29
    return-void
.end method


# virtual methods
.method public blacklist getOplusLaunchViewInfo()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Landroid/view/RemoteAnimationTargetExtImpl;->mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 46
    const-class v0, Lcom/oplus/animation/LaunchViewInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/oplus/animation/LaunchViewInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/animation/LaunchViewInfo;

    iput-object v0, p0, Landroid/view/RemoteAnimationTargetExtImpl;->mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    .line 47
    return-void
.end method

.method public blacklist setOplusLaunchViewInfo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "viewInfo"    # Ljava/lang/Object;

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/oplus/animation/LaunchViewInfo;

    iput-object v0, p0, Landroid/view/RemoteAnimationTargetExtImpl;->mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    .line 37
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 41
    iget-object v0, p0, Landroid/view/RemoteAnimationTargetExtImpl;->mLaunchViewInfo:Lcom/oplus/animation/LaunchViewInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    return-void
.end method
