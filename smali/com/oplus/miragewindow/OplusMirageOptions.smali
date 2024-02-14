.class public Lcom/oplus/miragewindow/OplusMirageOptions;
.super Ljava/lang/Object;
.source "OplusMirageOptions.java"


# static fields
.field public static final whitelist INVALID_DISPLAY:I = -0x1

.field private static final blacklist KEY_MIRAGE_CAR_MULTI_LAUNCH_LIST:Ljava/lang/String; = "mirage:car_multi_white_list"

.field private static final blacklist KEY_MIRAGE_CAST_MODE:Ljava/lang/String; = "mirage:castmode"

.field private static final blacklist KEY_MIRAGE_DENSITY_DPI:Ljava/lang/String; = "mirage:densitydpi"

.field private static final blacklist KEY_MIRAGE_DISPLAY_HEIGHT:Ljava/lang/String; = "mirage:displayheight"

.field private static final blacklist KEY_MIRAGE_DISPLAY_ID:Ljava/lang/String; = "mirage:displayid"

.field private static final blacklist KEY_MIRAGE_DISPLAY_WIDTH:Ljava/lang/String; = "mirage:dislaywidth"

.field private static final blacklist KEY_MIRAGE_MOVE_TO_FRONT:Ljava/lang/String; = "mirage:movetofront"

.field private static final blacklist KEY_MIRAGE_OLD_VERSION:Ljava/lang/String; = "mirage:oldversion"

.field private static final blacklist KEY_MIRAGE_OWNER_PACKAGE_NAME:Ljava/lang/String; = "mirage:ownerPackageName"

.field private static final blacklist KEY_MIRAGE_REFRESH_RATE:Ljava/lang/String; = "mirage:refreshrate"

.field private static final blacklist KEY_MIRAGE_ROTATION:Ljava/lang/String; = "mirage:rotation"

.field private static final blacklist KEY_MIRAGE_SESSION_ID:Ljava/lang/String; = "mirage:sessionid"

.field private static final blacklist KEY_MIRAGE_X_DPI:Ljava/lang/String; = "mirage:xdpi"

.field private static final blacklist KEY_MIRAGE_Y_DPI:Ljava/lang/String; = "mirage:ydpi"


# instance fields
.field private blacklist mCarMultiLaunchWhiteList:Ljava/lang/String;

.field private blacklist mCastMode:I

.field private blacklist mDensityDpi:I

.field private blacklist mDisplayHeight:I

.field private blacklist mDisplayId:I

.field private blacklist mDisplayWidth:I

.field private blacklist mMoveToFront:Z

.field private blacklist mOldVersion:Z

.field private blacklist mOwnerPackageName:Ljava/lang/String;

.field private blacklist mRefreshRate:I

.field private blacklist mRotation:I

.field private blacklist mSessionId:I

.field private blacklist mXDpi:F

.field private blacklist mYDpi:F


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayId:I

    .line 48
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "opts"    # Landroid/os/Bundle;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayId:I

    .line 51
    const-string v1, "mirage:displayid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayId:I

    .line 52
    const-string v1, "mirage:castmode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCastMode:I

    .line 53
    const-string v1, "mirage:movetofront"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mMoveToFront:Z

    .line 54
    const-string v1, "mirage:dislaywidth"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayWidth:I

    .line 55
    const-string v1, "mirage:displayheight"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayHeight:I

    .line 56
    const-string v1, "mirage:densitydpi"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDensityDpi:I

    .line 57
    const-string v1, "mirage:xdpi"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mXDpi:F

    .line 58
    const-string v1, "mirage:ydpi"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mYDpi:F

    .line 59
    const-string v1, "mirage:refreshrate"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRefreshRate:I

    .line 60
    const-string v1, "mirage:sessionid"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mSessionId:I

    .line 61
    const-string v1, "mirage:rotation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRotation:I

    .line 62
    const-string v0, "mirage:oldversion"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOldVersion:Z

    .line 63
    const-string v0, "mirage:ownerPackageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOwnerPackageName:Ljava/lang/String;

    .line 64
    const-string v0, "mirage:car_multi_white_list"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCarMultiLaunchWhiteList:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static whitelist fromBundle(Landroid/os/Bundle;)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 1
    .param p0, "bOptions"    # Landroid/os/Bundle;

    .line 79
    if-eqz p0, :cond_0

    new-instance v0, Lcom/oplus/miragewindow/OplusMirageOptions;

    invoke-direct {v0, p0}, Lcom/oplus/miragewindow/OplusMirageOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static whitelist makeBackgroundStreamModeOptions()Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 2

    .line 89
    new-instance v0, Lcom/oplus/miragewindow/OplusMirageOptions;

    invoke-direct {v0}, Lcom/oplus/miragewindow/OplusMirageOptions;-><init>()V

    .line 90
    .local v0, "opts":Lcom/oplus/miragewindow/OplusMirageOptions;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/miragewindow/OplusMirageOptions;->setCastMode(I)Lcom/oplus/miragewindow/OplusMirageOptions;

    .line 91
    return-object v0
.end method

.method public static whitelist makeBasic()Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 1

    .line 74
    new-instance v0, Lcom/oplus/miragewindow/OplusMirageOptions;

    invoke-direct {v0}, Lcom/oplus/miragewindow/OplusMirageOptions;-><init>()V

    .line 75
    .local v0, "opts":Lcom/oplus/miragewindow/OplusMirageOptions;
    return-object v0
.end method

.method public static whitelist makeShareModeOptions(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 2
    .param p0, "displayId"    # I

    .line 102
    new-instance v0, Lcom/oplus/miragewindow/OplusMirageOptions;

    invoke-direct {v0}, Lcom/oplus/miragewindow/OplusMirageOptions;-><init>()V

    .line 103
    .local v0, "opts":Lcom/oplus/miragewindow/OplusMirageOptions;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oplus/miragewindow/OplusMirageOptions;->setCastMode(I)Lcom/oplus/miragewindow/OplusMirageOptions;

    .line 104
    invoke-virtual {v0, p0}, Lcom/oplus/miragewindow/OplusMirageOptions;->setDisplayId(I)Lcom/oplus/miragewindow/OplusMirageOptions;

    .line 105
    return-object v0
.end method


# virtual methods
.method public whitelist getCarMultiWhiteList()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCarMultiLaunchWhiteList:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCastMode()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCastMode:I

    return v0
.end method

.method public whitelist getDensityDpi()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDensityDpi:I

    return v0
.end method

.method public whitelist getDisplayHeight()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayHeight:I

    return v0
.end method

.method public whitelist getDisplayId()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayId:I

    return v0
.end method

.method public whitelist getDisplayWidth()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayWidth:I

    return v0
.end method

.method public whitelist getMoveToFront()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mMoveToFront:Z

    return v0
.end method

.method public whitelist getOldVersion()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOldVersion:Z

    return v0
.end method

.method public whitelist getOwnerPackageName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOwnerPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRefreshRate()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRefreshRate:I

    return v0
.end method

.method public whitelist getRotation()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRotation:I

    return v0
.end method

.method public whitelist getSessionId()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mSessionId:I

    return v0
.end method

.method public whitelist getXDpi()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mXDpi:F

    return v0
.end method

.method public whitelist getYDpi()F
    .locals 1

    .line 137
    iget v0, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mYDpi:F

    return v0
.end method

.method public whitelist setCarMultiLaunchWhiteList(Ljava/lang/String;)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "carMultiLaunchWhiteList"    # Ljava/lang/String;

    .line 322
    iput-object p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCarMultiLaunchWhiteList:Ljava/lang/String;

    .line 323
    return-object p0
.end method

.method public whitelist setCastMode(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "castMode"    # I

    .line 184
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCastMode:I

    .line 185
    return-object p0
.end method

.method public whitelist setDensityDpi(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "densityDpi"    # I

    .line 233
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDensityDpi:I

    .line 234
    return-object p0
.end method

.method public whitelist setDisplayHeight(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "displayHeight"    # I

    .line 221
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayHeight:I

    .line 222
    return-object p0
.end method

.method public whitelist setDisplayId(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "displayId"    # I

    .line 172
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayId:I

    .line 173
    return-object p0
.end method

.method public whitelist setDisplayWidth(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "displayWidth"    # I

    .line 209
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayWidth:I

    .line 210
    return-object p0
.end method

.method public whitelist setMoveToFront(Z)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "moveToFront"    # Z

    .line 197
    iput-boolean p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mMoveToFront:Z

    .line 198
    return-object p0
.end method

.method public whitelist setOldVersion(Z)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "old"    # Z

    .line 305
    iput-boolean p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOldVersion:Z

    .line 306
    return-object p0
.end method

.method public whitelist setOwnerPackageName(Ljava/lang/String;)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 310
    iput-object p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOwnerPackageName:Ljava/lang/String;

    .line 311
    return-object p0
.end method

.method public whitelist setRefreshRate(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "refreshRate"    # I

    .line 269
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRefreshRate:I

    .line 270
    return-object p0
.end method

.method public whitelist setRotation(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "rotation"    # I

    .line 293
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRotation:I

    .line 294
    return-object p0
.end method

.method public whitelist setSession(I)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "sessionId"    # I

    .line 281
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mSessionId:I

    .line 282
    return-object p0
.end method

.method public whitelist setXDpi(F)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "xDpi"    # F

    .line 245
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mXDpi:F

    .line 246
    return-object p0
.end method

.method public whitelist setYDpi(F)Lcom/oplus/miragewindow/OplusMirageOptions;
    .locals 0
    .param p1, "yDpi"    # F

    .line 257
    iput p1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mYDpi:F

    .line 258
    return-object p0
.end method

.method public whitelist toBundle()Landroid/os/Bundle;
    .locals 4

    .line 333
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v0, "b":Landroid/os/Bundle;
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCastMode:I

    if-eqz v1, :cond_0

    .line 335
    const-string v2, "mirage:castmode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 338
    :cond_0
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 339
    const-string v2, "mirage:displayid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    :cond_1
    iget-boolean v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mMoveToFront:Z

    const-string v2, "mirage:movetofront"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 344
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayWidth:I

    if-lez v1, :cond_2

    .line 345
    const-string v2, "mirage:dislaywidth"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 348
    :cond_2
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDisplayHeight:I

    if-lez v1, :cond_3

    .line 349
    const-string v2, "mirage:displayheight"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    :cond_3
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mDensityDpi:I

    if-lez v1, :cond_4

    .line 353
    const-string v2, "mirage:densitydpi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    :cond_4
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mXDpi:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-lez v3, :cond_5

    .line 357
    const-string v3, "mirage:xdpi"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 360
    :cond_5
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mYDpi:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_6

    .line 361
    const-string v2, "mirage:ydpi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 364
    :cond_6
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRefreshRate:I

    if-lez v1, :cond_7

    .line 365
    const-string v2, "mirage:refreshrate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    :cond_7
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mSessionId:I

    if-lez v1, :cond_8

    .line 369
    const-string v2, "mirage:sessionid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    :cond_8
    iget v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mRotation:I

    if-ltz v1, :cond_9

    .line 373
    const-string v2, "mirage:rotation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    :cond_9
    iget-boolean v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOldVersion:Z

    const-string v2, "mirage:oldversion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mOwnerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 379
    const-string v2, "mirage:ownerPackageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 382
    :cond_a
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageOptions;->mCarMultiLaunchWhiteList:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 383
    const-string v2, "mirage:car_multi_white_list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_b
    return-object v0
.end method
