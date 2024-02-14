.class public Landroid/content/pm/ApplicationInfoExtImpl;
.super Ljava/lang/Object;
.source "ApplicationInfoExtImpl.java"

# interfaces
.implements Landroid/content/pm/IApplicationInfoExt;


# static fields
.field private static final blacklist OPLUS_PRIVATE_FLAG_CHECK_DISPLAY_COMPAT:I = 0x10

.field private static final blacklist OPLUS_PRIVATE_FLAG_ENABLE_DISPLAY_COMPAT:I = 0x8

.field public static final blacklist OPLUS_PRIVATE_FLAG_IGNORE_OPENNDK:I = 0x4


# instance fields
.field private blacklist mAappInvscale:F

.field private blacklist mAppscale:F

.field private blacklist mCmpactModeFlag:I

.field private blacklist mCompatDensity:I

.field private blacklist mLaunchingDisplayId:I

.field private blacklist mNewappscale:F

.field private blacklist mOverrideDensity:I

.field private blacklist mRGBNormalizeBundle:Landroid/os/Bundle;

.field private blacklist mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private blacklist oplusFreezeState:I

.field private blacklist oplusPrivateFlags:I

.field private blacklist specialNativeLibraryDirs:[Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAppscale:F

    .line 57
    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mNewappscale:F

    .line 58
    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAappInvscale:F

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mOverrideDensity:I

    .line 60
    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCompatDensity:I

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mLaunchingDisplayId:I

    .line 65
    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCmpactModeFlag:I

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    return-void
.end method


# virtual methods
.method public blacklist addPrivateFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 178
    invoke-virtual {p0, p1, p1}, Landroid/content/pm/ApplicationInfoExtImpl;->setPrivateFlags(II)V

    .line 179
    return-void
.end method

.method public blacklist clearPrivateFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/ApplicationInfoExtImpl;->setPrivateFlags(II)V

    .line 183
    return-void
.end method

.method public blacklist enableLowResolution()Z
    .locals 2

    .line 203
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist firstCheckSupportLowResolution()Z
    .locals 2

    .line 194
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfoExtImpl;->hasPrivateFlags(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfoExtImpl;->addPrivateFlags(I)V

    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getAppInvScale()F
    .locals 1

    .line 153
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAappInvscale:F

    return v0
.end method

.method public blacklist getAppScale()F
    .locals 1

    .line 145
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAppscale:F

    return v0
.end method

.method public blacklist getCompatDensity()I
    .locals 1

    .line 165
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCompatDensity:I

    return v0
.end method

.method public blacklist getCompatModeFlag()I
    .locals 1

    .line 244
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCmpactModeFlag:I

    return v0
.end method

.method public blacklist getLaunchingDisplayId()I
    .locals 1

    .line 232
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mLaunchingDisplayId:I

    return v0
.end method

.method public blacklist getNewAppScale()F
    .locals 1

    .line 149
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mNewappscale:F

    return v0
.end method

.method public blacklist getOplusFreezeState()I
    .locals 1

    .line 227
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusFreezeState:I

    return v0
.end method

.method public blacklist getOverrideDensity()I
    .locals 1

    .line 156
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mOverrideDensity:I

    return v0
.end method

.method public blacklist getPrivateFlags()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    return v0
.end method

.method public blacklist getRGBNormalizeExtraBundle()Landroid/os/Bundle;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRGBNormalizeBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getSpecialNativeLibraryDirs()[Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->specialNativeLibraryDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasPrivateFlags(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 190
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist init(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "refApplicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 77
    iput-object p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    return-void
.end method

.method public blacklist init(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "refApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "origin"    # Landroid/content/pm/ApplicationInfo;

    .line 80
    iput-object p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 84
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 87
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->mApplicationInfoExt:Landroid/content/pm/IApplicationInfoExt;

    .line 88
    .local v0, "originExt":Landroid/content/pm/IApplicationInfoExt;
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getSpecialNativeLibraryDirs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->specialNativeLibraryDirs:[Ljava/lang/String;

    .line 95
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getAppScale()F

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAppscale:F

    .line 96
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getNewAppScale()F

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mNewappscale:F

    .line 99
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getOplusFreezeState()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusFreezeState:I

    .line 101
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getOverrideDensity()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mOverrideDensity:I

    .line 102
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getAppInvScale()F

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAappInvscale:F

    .line 103
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getCompatDensity()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCompatDensity:I

    .line 104
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getPrivateFlags()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    .line 105
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getLaunchingDisplayId()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mLaunchingDisplayId:I

    .line 107
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getCompatModeFlag()I

    move-result v1

    iput v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCmpactModeFlag:I

    .line 108
    invoke-interface {v0}, Landroid/content/pm/IApplicationInfoExt;->getRGBNormalizeExtraBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRGBNormalizeBundle:Landroid/os/Bundle;

    .line 110
    :cond_0
    return-void
.end method

.method public blacklist init(Landroid/content/pm/ApplicationInfo;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "refApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "source"    # Landroid/os/Parcel;

    .line 113
    iput-object p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->specialNativeLibraryDirs:[Ljava/lang/String;

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAppscale:F

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mNewappscale:F

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusFreezeState:I

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mOverrideDensity:I

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAappInvscale:F

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCompatDensity:I

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mLaunchingDisplayId:I

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCmpactModeFlag:I

    .line 139
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRGBNormalizeBundle:Landroid/os/Bundle;

    .line 140
    return-void
.end method

.method public blacklist setAppInvScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 151
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAappInvscale:F

    return-void
.end method

.method public blacklist setAppScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 143
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAppscale:F

    return-void
.end method

.method public blacklist setCmpactModeFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 242
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCmpactModeFlag:I

    return-void
.end method

.method public blacklist setCompatDensity(I)V
    .locals 0
    .param p1, "newValue"    # I

    .line 169
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCompatDensity:I

    .line 170
    return-void
.end method

.method public blacklist setEnableLowResolution(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 208
    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfoExtImpl;->addPrivateFlags(I)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/pm/ApplicationInfoExtImpl;->clearPrivateFlags(I)V

    .line 213
    :goto_0
    return-void
.end method

.method public blacklist setLaunchingDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 237
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mLaunchingDisplayId:I

    .line 238
    return-void
.end method

.method public blacklist setNewAppScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 147
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mNewappscale:F

    return-void
.end method

.method public blacklist setOplusFreezeState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 222
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusFreezeState:I

    .line 223
    return-void
.end method

.method public blacklist setOverrideDensity(I)V
    .locals 1
    .param p1, "newValue"    # I

    .line 160
    iput p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mOverrideDensity:I

    .line 161
    iget-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iput p1, v0, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    .line 162
    return-void
.end method

.method public blacklist setPrivateFlags(II)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 186
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    .line 187
    return-void
.end method

.method public blacklist setRGBNormalizeExtraBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 254
    iput-object p1, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRGBNormalizeBundle:Landroid/os/Bundle;

    .line 255
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 267
    iget-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRefApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 273
    iget-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->specialNativeLibraryDirs:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 276
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAppscale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 277
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mNewappscale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 279
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusFreezeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mOverrideDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mAappInvscale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 284
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCompatDensity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->oplusPrivateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mLaunchingDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mCmpactModeFlag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Landroid/content/pm/ApplicationInfoExtImpl;->mRGBNormalizeBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public blacklist writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 0
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "dumpFlags"    # I

    .line 249
    return-void
.end method
