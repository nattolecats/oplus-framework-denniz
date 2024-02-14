.class public Landroid/content/pm/ActivityInfoExtImpl;
.super Ljava/lang/Object;
.source "ActivityInfoExtImpl.java"

# interfaces
.implements Landroid/content/pm/IActivityInfoExt;


# instance fields
.field private blacklist mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private blacklist mDisableOverrideMinAspectRatio:Z

.field private blacklist mMinAspectRatioForCompatMode:F

.field private blacklist mOplusFlags:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist copy(Landroid/content/pm/IActivityInfoExt;)V
    .locals 1
    .param p1, "other"    # Landroid/content/pm/IActivityInfoExt;

    .line 55
    invoke-interface {p1}, Landroid/content/pm/IActivityInfoExt;->getOplusFlags()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    .line 56
    invoke-interface {p1}, Landroid/content/pm/IActivityInfoExt;->getActivityInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 59
    invoke-interface {p1}, Landroid/content/pm/IActivityInfoExt;->getOverrideMinAspectRatioForCompatMode()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    .line 61
    return-void
.end method

.method public blacklist disableOverrideMinAspectRatioForCompatMode(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 124
    iput-boolean p1, p0, Landroid/content/pm/ActivityInfoExtImpl;->mDisableOverrideMinAspectRatio:Z

    .line 125
    return-void
.end method

.method public blacklist dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 83
    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oplusFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method

.method public blacklist getActivityInfo()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public blacklist getOplusFlags()I
    .locals 1

    .line 45
    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    return v0
.end method

.method public blacklist getOverrideMinAspectRatioForCompatMode()F
    .locals 1

    .line 119
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mDisableOverrideMinAspectRatio:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    :goto_0
    return v0
.end method

.method public blacklist getRawOverrideMinAspectRatioForCompatMode()F
    .locals 1

    .line 114
    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    return v0
.end method

.method public blacklist getRealConfigChanged(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "changes"    # I

    .line 93
    move v0, p2

    .line 95
    .local v0, "configChange":I
    new-instance v1, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v1}, Landroid/content/pm/OplusPackageManager;-><init>()V

    .line 96
    .local v1, "pm":Landroid/content/pm/OplusPackageManager;
    const/16 v2, 0x2b5

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    or-int/lit16 v0, p2, 0x480

    .line 101
    :cond_0
    return v0
.end method

.method public blacklist inOplusCompatMode()Z
    .locals 2

    .line 129
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mDisableOverrideMinAspectRatio:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    .line 70
    return-void
.end method

.method public blacklist setOplusFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 40
    iput p1, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    .line 41
    return-void
.end method

.method public blacklist setOverrideMinAspectRatioForCompatMode(F)V
    .locals 0
    .param p1, "minAspectRatio"    # F

    .line 109
    iput p1, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    .line 110
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 74
    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mOplusFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Landroid/content/pm/ActivityInfoExtImpl;->mMinAspectRatioForCompatMode:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    return-void
.end method
