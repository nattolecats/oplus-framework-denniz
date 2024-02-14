.class public Landroid/app/OplusIconConfig;
.super Ljava/lang/Object;
.source "OplusIconConfig.java"


# static fields
.field public static final whitelist UPDATE_DARKMODE_CONFIG:I = 0x2

.field public static final whitelist UPDATE_ICON_CONFIG:I = 0x1

.field public static final whitelist UPDATE_NONE:I


# instance fields
.field private blacklist artPlusOn:Z

.field private blacklist foregroundSize:I

.field private blacklist iconShape:I

.field private blacklist iconSize:I

.field private blacklist isEmpty:Z

.field private blacklist isForeign:Z

.field private blacklist mEnableDarkModeIcon:Z

.field private blacklist mIsDarkMode:Z

.field private blacklist mNeedUpdateConfig:I

.field private blacklist mUserId:I

.field private blacklist shapePath:Landroid/graphics/Path;

.field private blacklist theme:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/OplusIconConfig;->isEmpty:Z

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    .line 37
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/OplusIconConfig;->mUserId:I

    .line 38
    iput-boolean v1, p0, Landroid/app/OplusIconConfig;->mIsDarkMode:Z

    .line 39
    iput-boolean v0, p0, Landroid/app/OplusIconConfig;->mEnableDarkModeIcon:Z

    return-void
.end method


# virtual methods
.method public whitelist addUpdateConfig(I)V
    .locals 1
    .param p1, "update"    # I

    .line 110
    iget v0, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    .line 111
    return-void
.end method

.method public whitelist getForegroundSize()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/app/OplusIconConfig;->foregroundSize:I

    return v0
.end method

.method public whitelist getIconShape()I
    .locals 1

    .line 46
    iget v0, p0, Landroid/app/OplusIconConfig;->iconShape:I

    return v0
.end method

.method public whitelist getIconSize()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/app/OplusIconConfig;->iconSize:I

    return v0
.end method

.method public whitelist getNeedUpdateConfig()I
    .locals 1

    .line 122
    iget v0, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    return v0
.end method

.method public whitelist getShapePath()Landroid/graphics/Path;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/app/OplusIconConfig;->shapePath:Landroid/graphics/Path;

    return-object v0
.end method

.method public whitelist getTheme()I
    .locals 1

    .line 54
    iget v0, p0, Landroid/app/OplusIconConfig;->theme:I

    return v0
.end method

.method public whitelist getUserId()I
    .locals 1

    .line 146
    iget v0, p0, Landroid/app/OplusIconConfig;->mUserId:I

    return v0
.end method

.method public whitelist isArtPlusOn()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Landroid/app/OplusIconConfig;->artPlusOn:Z

    return v0
.end method

.method public whitelist isDarkMode()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Landroid/app/OplusIconConfig;->mIsDarkMode:Z

    return v0
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Landroid/app/OplusIconConfig;->isEmpty:Z

    return v0
.end method

.method public whitelist isEnableDarkModeIcon()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Landroid/app/OplusIconConfig;->mEnableDarkModeIcon:Z

    return v0
.end method

.method public whitelist isForeign()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Landroid/app/OplusIconConfig;->isForeign:Z

    return v0
.end method

.method public whitelist isNeedUpdate()Z
    .locals 1

    .line 118
    iget v0, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist removeUpdateConfig(I)V
    .locals 2
    .param p1, "update"    # I

    .line 114
    iget v0, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/OplusIconConfig;->mNeedUpdateConfig:I

    .line 115
    return-void
.end method

.method public whitelist setArtPlusOn(Z)V
    .locals 0
    .param p1, "artPlusOn"    # Z

    .line 82
    iput-boolean p1, p0, Landroid/app/OplusIconConfig;->artPlusOn:Z

    .line 83
    return-void
.end method

.method public whitelist setEmpty(Z)V
    .locals 0
    .param p1, "empty"    # Z

    .line 102
    iput-boolean p1, p0, Landroid/app/OplusIconConfig;->isEmpty:Z

    .line 103
    return-void
.end method

.method public whitelist setEnableDarkModeIcon(Z)V
    .locals 0
    .param p1, "enableDarkModeIcon"    # Z

    .line 134
    iput-boolean p1, p0, Landroid/app/OplusIconConfig;->mEnableDarkModeIcon:Z

    .line 135
    return-void
.end method

.method public whitelist setForegroundSize(I)V
    .locals 0
    .param p1, "foregroundSize"    # I

    .line 74
    iput p1, p0, Landroid/app/OplusIconConfig;->foregroundSize:I

    .line 75
    return-void
.end method

.method public whitelist setForeign(Z)V
    .locals 0
    .param p1, "foreign"    # Z

    .line 98
    iput-boolean p1, p0, Landroid/app/OplusIconConfig;->isForeign:Z

    .line 99
    return-void
.end method

.method public whitelist setIconShape(I)V
    .locals 0
    .param p1, "iconShape"    # I

    .line 50
    iput p1, p0, Landroid/app/OplusIconConfig;->iconShape:I

    .line 51
    return-void
.end method

.method public whitelist setIconSize(I)V
    .locals 0
    .param p1, "iconSize"    # I

    .line 66
    iput p1, p0, Landroid/app/OplusIconConfig;->iconSize:I

    .line 67
    return-void
.end method

.method public whitelist setIsDarkMode(Z)V
    .locals 0
    .param p1, "isDarkMode"    # Z

    .line 126
    iput-boolean p1, p0, Landroid/app/OplusIconConfig;->mIsDarkMode:Z

    .line 127
    return-void
.end method

.method public whitelist setShapePath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "shapePath"    # Landroid/graphics/Path;

    .line 90
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v0, p0, Landroid/app/OplusIconConfig;->shapePath:Landroid/graphics/Path;

    .line 91
    return-void
.end method

.method public whitelist setTheme(I)V
    .locals 0
    .param p1, "theme"    # I

    .line 58
    iput p1, p0, Landroid/app/OplusIconConfig;->theme:I

    .line 59
    return-void
.end method

.method public whitelist setUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .line 142
    iput p1, p0, Landroid/app/OplusIconConfig;->mUserId:I

    .line 143
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OplusIconConfig = [ isForeign : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusIconConfig;->isForeign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",theme : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusIconConfig;->theme:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",iconSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusIconConfig;->iconSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",iconShape : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusIconConfig;->iconShape:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",foregroundSize : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusIconConfig;->foregroundSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",artPlusOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusIconConfig;->artPlusOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shapePath \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/OplusIconConfig;->shapePath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nightMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusIconConfig;->mIsDarkMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";enableDarkModeIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/OplusIconConfig;->mEnableDarkModeIcon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/OplusIconConfig;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
