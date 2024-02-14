.class public Landroid/window/StartingWindowInfoExtImpl;
.super Ljava/lang/Object;
.source "StartingWindowInfoExtImpl.java"

# interfaces
.implements Landroid/window/IStartingWindowInfoExt;


# instance fields
.field private blacklist mBase:Landroid/window/StartingWindowInfo;

.field private blacklist mExtendedInfo:Landroid/window/OplusStartingWindowExtendedInfo;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    move-object v0, p1

    check-cast v0, Landroid/window/StartingWindowInfo;

    iput-object v0, p0, Landroid/window/StartingWindowInfoExtImpl;->mBase:Landroid/window/StartingWindowInfo;

    .line 12
    return-void
.end method


# virtual methods
.method public blacklist getExtendedInfo()Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Landroid/window/StartingWindowInfoExtImpl;->mExtendedInfo:Landroid/window/OplusStartingWindowExtendedInfo;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    const-class v0, Landroid/window/OplusStartingWindowExtendedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/window/OplusStartingWindowExtendedInfo;

    iput-object v0, p0, Landroid/window/StartingWindowInfoExtImpl;->mExtendedInfo:Landroid/window/OplusStartingWindowExtendedInfo;

    .line 32
    return-void
.end method

.method public blacklist setExtendedInfo(Ljava/lang/Object;)V
    .locals 1
    .param p1, "extendedInfo"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/window/OplusStartingWindowExtendedInfo;

    iput-object v0, p0, Landroid/window/StartingWindowInfoExtImpl;->mExtendedInfo:Landroid/window/OplusStartingWindowExtendedInfo;

    .line 17
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 26
    iget-object v0, p0, Landroid/window/StartingWindowInfoExtImpl;->mExtendedInfo:Landroid/window/OplusStartingWindowExtendedInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 27
    return-void
.end method
