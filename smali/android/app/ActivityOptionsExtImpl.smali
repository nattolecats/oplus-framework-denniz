.class public Landroid/app/ActivityOptionsExtImpl;
.super Ljava/lang/Object;
.source "ActivityOptionsExtImpl.java"

# interfaces
.implements Landroid/app/IActivityOptionsExt;


# static fields
.field private static final blacklist KEY_LAUNCHED_FROM_MULTI_SEARCH:Ljava/lang/String; = "android.activity.launchTypeMultiSearch"

.field private static final blacklist KEY_LAUNCHED_IN_SPLIT_POSITION:Ljava/lang/String; = "android.activity.launchInSplitPosition"

.field public static final blacklist KEY_RP_LAUNCH_HINT:Ljava/lang/String; = "android:activity.isRPLaunch"

.field public static final blacklist KEY_ZOOM_LAUNCH_FLAGS:Ljava/lang/String; = "android:activity.mZoomLaunchFlags"


# instance fields
.field private blacklist mBase:Landroid/app/ActivityOptions;

.field private blacklist mIsRPLaunch:Z

.field private blacklist mLaunchedFromMultiSearch:Z

.field private blacklist mLaunchedInSplitPosition:I

.field private blacklist mZoomLaunchFlags:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityOptionsExtImpl;->mLaunchedInSplitPosition:I

    .line 49
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityOptions;

    iput-object v0, p0, Landroid/app/ActivityOptionsExtImpl;->mBase:Landroid/app/ActivityOptions;

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist getData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Landroid/app/ActivityOptionsExtImpl;->isRPLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    const-string v1, "android:activity.isRPLaunch"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityOptionsExtImpl;->getZoomLaunchFlags()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 74
    invoke-virtual {p0}, Landroid/app/ActivityOptionsExtImpl;->getZoomLaunchFlags()I

    move-result v0

    const-string v2, "android:activity.mZoomLaunchFlags"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    :cond_1
    iget-boolean v0, p0, Landroid/app/ActivityOptionsExtImpl;->mLaunchedFromMultiSearch:Z

    if-eqz v0, :cond_2

    .line 80
    const-string v2, "android.activity.launchTypeMultiSearch"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityOptionsExtImpl;->getLaunchedInSplitPosition()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 87
    invoke-virtual {p0}, Landroid/app/ActivityOptionsExtImpl;->getLaunchedInSplitPosition()I

    move-result v0

    const-string v1, "android.activity.launchInSplitPosition"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    :cond_3
    return-void
.end method

.method public blacklist getLaunchedFromMultiSearch()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Landroid/app/ActivityOptionsExtImpl;->mLaunchedFromMultiSearch:Z

    return v0
.end method

.method public blacklist getLaunchedInSplitPosition()I
    .locals 1

    .line 142
    iget v0, p0, Landroid/app/ActivityOptionsExtImpl;->mLaunchedInSplitPosition:I

    return v0
.end method

.method public blacklist getZoomLaunchFlags()I
    .locals 1

    .line 107
    iget v0, p0, Landroid/app/ActivityOptionsExtImpl;->mZoomLaunchFlags:I

    return v0
.end method

.method public blacklist isRPLaunch()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Landroid/app/ActivityOptionsExtImpl;->mIsRPLaunch:Z

    return v0
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .line 54
    const-string v0, "android:activity.isRPLaunch"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptionsExtImpl;->setRPLaunch(Z)V

    .line 55
    const-string v0, "android:activity.mZoomLaunchFlags"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptionsExtImpl;->setZoomLaunchFlags(I)V

    .line 58
    const-string v0, "android.activity.launchTypeMultiSearch"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptionsExtImpl;->setLaunchedFromMultiSearch(Z)V

    .line 63
    const-string v0, "android.activity.launchInSplitPosition"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/ActivityOptionsExtImpl;->setLaunchedInSplitPosition(I)V

    .line 65
    return-void
.end method

.method public blacklist setLaunchedFromMultiSearch(Z)V
    .locals 0
    .param p1, "fromMultiSearch"    # Z

    .line 121
    iput-boolean p1, p0, Landroid/app/ActivityOptionsExtImpl;->mLaunchedFromMultiSearch:Z

    .line 122
    return-void
.end method

.method public blacklist setLaunchedInSplitPosition(I)V
    .locals 0
    .param p1, "launchedInSplitPosition"    # I

    .line 136
    iput p1, p0, Landroid/app/ActivityOptionsExtImpl;->mLaunchedInSplitPosition:I

    .line 137
    return-void
.end method

.method public blacklist setRPLaunch(Z)V
    .locals 0
    .param p1, "rpLaunch"    # Z

    .line 101
    iput-boolean p1, p0, Landroid/app/ActivityOptionsExtImpl;->mIsRPLaunch:Z

    .line 102
    return-void
.end method

.method public blacklist setZoomLaunchFlags(I)V
    .locals 0
    .param p1, "zoomLaunchFlags"    # I

    .line 113
    iput p1, p0, Landroid/app/ActivityOptionsExtImpl;->mZoomLaunchFlags:I

    .line 114
    return-void
.end method
