.class public Landroid/app/OplusUxIconConfigParser;
.super Ljava/lang/Object;
.source "OplusUxIconConfigParser.java"


# static fields
.field public static final whitelist AND_NUM_FFFF:I = 0xffff

.field public static final whitelist ICON_DEFAULT_SIZE_DP:I = 0x1388

.field private static final blacklist ICON_DEFAULT_SIZE_DP_FOLD:I = 0x1518

.field private static final blacklist ICON_DEFAULT_SIZE_DP_TABLET:I = 0x15e0

.field private static final blacklist ONEPLUS_ICON_PACK_SETTINGS:Ljava/lang/String; = "launcher_iconpack"

.field private static final blacklist PAC_MAN_ICON_PACK_APK:Ljava/lang/String; = "OPIconpackPacman.apk"

.field private static final blacklist PAC_MAN_ICON_PACK_DIR:Ljava/lang/String;

.field private static final blacklist PAC_MAN_ICON_PACK_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.iconpack.pacman"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusUxIconConfigParser"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCompanyDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OPIconpackPacman"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConfigParser;->PAC_MAN_ICON_PACK_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist float2int(F)I
    .locals 6
    .param p0, "f"    # F

    .line 246
    float-to-int v0, p0

    .line 247
    .local v0, "i":I
    int-to-float v1, v0

    sub-float v1, p0, v1

    .line 248
    .local v1, "ferror":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 251
    :cond_0
    return v0
.end method

.method public static whitelist getDefaultIconConfig(ZLandroid/content/Context;I)J
    .locals 17
    .param p0, "isForeign"    # Z
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 185
    const/4 v0, 0x2

    .line 186
    .local v0, "defaultTheme":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 188
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "launcher_iconpack"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "iconPackName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-static {}, Landroid/app/OplusUxIconConfigParser;->productIconPack()Ljava/lang/String;

    move-result-object v3

    .line 192
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    const-string v4, "icon_pack_name"

    move/from16 v5, p2

    invoke-static {v2, v4, v3, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 194
    const/4 v0, 0x5

    goto :goto_0

    .line 192
    :cond_1
    move/from16 v5, p2

    .line 196
    :goto_0
    const-wide/16 v6, 0x0

    .line 197
    .local v6, "uxIconConfig":J
    move/from16 v4, p0

    .line 199
    .local v4, "foreign":I
    const/4 v8, 0x1

    .line 200
    .local v8, "isDarkModeIcon":I
    and-int/lit8 v9, v8, 0x1

    int-to-long v9, v9

    or-long/2addr v6, v9

    .line 202
    const v9, 0xc05008f

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 203
    .local v9, "defaultRadiusPx":I
    invoke-static {v1, v9}, Landroid/app/OplusUxIconConfigParser;->getDpFromIconConfigPx(Landroid/content/res/Resources;I)I

    move-result v10

    .line 204
    .local v10, "defaultRadiusDp":I
    const/16 v11, 0xd

    shl-long/2addr v6, v11

    .line 205
    and-int/lit16 v11, v10, 0xfff

    int-to-long v11, v11

    or-long/2addr v6, v11

    .line 208
    const v11, 0xc05008e

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 209
    .local v11, "defaultIconSizePx":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 210
    const v12, 0xc0500db

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    goto :goto_1

    .line 211
    :cond_2
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 212
    const v12, 0xc0500dc

    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 214
    :cond_3
    :goto_1
    invoke-static {v1, v11}, Landroid/app/OplusUxIconConfigParser;->getDpFromIconConfigPx(Landroid/content/res/Resources;I)I

    move-result v12

    .line 215
    .local v12, "defaultIconSizeDp":I
    const/16 v13, 0x10

    shl-long/2addr v6, v13

    .line 216
    const v14, 0xffff

    and-int v15, v12, v14

    int-to-long v14, v15

    or-long/2addr v6, v14

    .line 218
    shl-long/2addr v6, v13

    .line 219
    const/16 v13, 0x1388

    .line 220
    .local v13, "defaultIconSize":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 221
    const/16 v13, 0x1518

    goto :goto_2

    .line 222
    :cond_4
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 223
    const/16 v13, 0x15e0

    .line 225
    :cond_5
    :goto_2
    const v14, 0xffff

    and-int/2addr v14, v13

    int-to-long v14, v14

    or-long/2addr v6, v14

    .line 227
    const/4 v14, 0x4

    shl-long/2addr v6, v14

    .line 228
    const-wide/16 v15, 0x0

    or-long/2addr v6, v15

    .line 230
    shl-long/2addr v6, v14

    .line 231
    or-long/2addr v6, v15

    .line 233
    shl-long/2addr v6, v14

    .line 234
    int-to-long v14, v0

    or-long/2addr v6, v14

    .line 236
    const/4 v14, 0x4

    shl-long/2addr v6, v14

    .line 237
    int-to-long v14, v4

    or-long/2addr v6, v14

    .line 238
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DefaultIconConfig[foreign ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; isDarkModeIcon ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; defaultTheme ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "OplusUXIconLoader"

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-wide v6
.end method

.method public static whitelist getDpFromIconConfigPx(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "px"    # I

    .line 166
    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/app/OplusUxIconConfigParser;->float2int(F)I

    move-result v0

    return v0
.end method

.method public static whitelist getPxFromIconConfigDp(Landroid/content/res/Resources;I)I
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dp"    # I

    .line 170
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/app/OplusUxIconConfigParser;->float2int(F)I

    move-result v0

    return v0
.end method

.method public static whitelist parseConfig(Landroid/app/OplusIconConfig;Loplus/content/res/OplusExtraConfiguration;Landroid/content/res/Resources;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 28
    .param p0, "config"    # Landroid/app/OplusIconConfig;
    .param p1, "extraConfiguration"    # Loplus/content/res/OplusExtraConfiguration;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p5, "commonStylePathArray"    # [Ljava/lang/String;
    .param p6, "specialStlytPathArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/OplusIconConfig;",
            "Loplus/content/res/OplusExtraConfiguration;",
            "Landroid/content/res/Resources;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    .local p3, "commonStyleConfigArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "specialStyleConfigArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    if-nez v1, :cond_0

    return-void

    .line 80
    :cond_0
    const/4 v6, 0x0

    .line 81
    .local v6, "path":Landroid/graphics/Path;
    iget-wide v7, v1, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 82
    .local v7, "uxIconConfig":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    const/4 v9, 0x1

    if-nez v8, :cond_1

    .line 83
    invoke-virtual {v0, v9}, Landroid/app/OplusIconConfig;->setEmpty(Z)V

    .line 84
    return-void

    .line 86
    :cond_1
    move-object v8, v7

    .line 87
    .local v8, "tempConfig":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/16 v12, 0x3d

    shr-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v8, v10

    invoke-virtual {v10}, Ljava/lang/Long;->intValue()I

    move-result v10

    and-int/2addr v10, v9

    .line 88
    .local v10, "darkModeIcon":I
    if-ne v10, v9, :cond_2

    move v12, v9

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v0, v12}, Landroid/app/OplusIconConfig;->setEnableDarkModeIcon(Z)V

    .line 89
    invoke-virtual {v7}, Ljava/lang/Long;->intValue()I

    move-result v12

    and-int/lit8 v12, v12, 0xf

    if-ne v12, v9, :cond_3

    move v12, v9

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 90
    .local v12, "isForeign":Z
    :goto_1
    invoke-virtual {v0, v12}, Landroid/app/OplusIconConfig;->setForeign(Z)V

    .line 91
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const/4 v15, 0x4

    shr-long/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v7, v13

    invoke-virtual {v13}, Ljava/lang/Long;->intValue()I

    move-result v13

    and-int/lit8 v13, v13, 0xf

    .line 92
    .local v13, "theme":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "theme="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v9, "; uxIconConfig = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v14, "OplusUXIconLoader"

    invoke-static {v14, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0, v13}, Landroid/app/OplusIconConfig;->setTheme(I)V

    .line 94
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    shr-long v17, v17, v15

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v7, v9

    invoke-virtual {v9}, Ljava/lang/Long;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0xf

    const/4 v15, 0x1

    if-ne v9, v15, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 95
    .local v9, "artPlusOn":Z
    :goto_2
    invoke-virtual {v0, v9}, Landroid/app/OplusIconConfig;->setArtPlusOn(Z)V

    .line 97
    const v15, 0xc05008e

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 98
    .local v15, "defaultIconSizePx":I
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isFoldDisplay()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 99
    const v1, 0xc0500db

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    goto :goto_3

    .line 100
    :cond_5
    invoke-static {}, Lcom/oplus/util/UxScreenUtil;->isTabletDevices()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 101
    const v1, 0xc0500dc

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 103
    :cond_6
    :goto_3
    invoke-static {v2, v15}, Landroid/app/OplusUxIconConfigParser;->getDpFromIconConfigPx(Landroid/content/res/Resources;I)I

    move-result v1

    .line 104
    .local v1, "defaultIconSizeDp":I
    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->setIconSize(I)V

    .line 105
    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->setForegroundSize(I)V

    .line 106
    const/16 v18, 0x0

    .line 107
    .local v18, "i":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v20, v1

    const/16 v16, 0x1

    .end local v1    # "defaultIconSizeDp":I
    .local v20, "defaultIconSizeDp":I
    add-int/lit8 v1, v19, -0x1

    .line 108
    .local v1, "themeCustomPos":I
    if-eqz v4, :cond_c

    .line 109
    move-object/from16 v19, v6

    .end local v6    # "path":Landroid/graphics/Path;
    .local v19, "path":Landroid/graphics/Path;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v8

    .end local v8    # "tempConfig":Ljava/lang/Long;
    .local v21, "tempConfig":Ljava/lang/Long;
    const-string v8, "themeCustomPos="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ";commonStylePathArray size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v8, v4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v6, 0x5

    const/16 v8, 0x8

    const v22, 0xffff

    if-ne v13, v6, :cond_7

    .line 112
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    shr-long v23, v23, v8

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v7, v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    and-int v6, v6, v22

    .line 113
    .local v6, "iconSize":I
    invoke-virtual {v0, v6}, Landroid/app/OplusIconConfig;->setIconSize(I)V

    .line 114
    const/4 v8, 0x0

    aget-object v11, v4, v8

    invoke-static {v11}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .line 115
    .end local v19    # "path":Landroid/graphics/Path;
    .local v6, "path":Landroid/graphics/Path;
    move/from16 v24, v1

    move/from16 v8, v18

    goto/16 :goto_6

    .line 116
    .end local v6    # "path":Landroid/graphics/Path;
    .restart local v19    # "path":Landroid/graphics/Path;
    :cond_7
    const/4 v6, 0x0

    move v8, v6

    move-object/from16 v6, v19

    .end local v18    # "i":I
    .end local v19    # "path":Landroid/graphics/Path;
    .restart local v6    # "path":Landroid/graphics/Path;
    .local v8, "i":I
    :goto_4
    move-object/from16 v18, v6

    .end local v6    # "path":Landroid/graphics/Path;
    .local v18, "path":Landroid/graphics/Path;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v8, v6, :cond_b

    .line 118
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v13, :cond_8

    if-ne v8, v1, :cond_8

    .line 119
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const/4 v6, 0x4

    shr-long v24, v24, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v7, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->intValue()I

    move-result v17

    and-int/lit8 v6, v17, 0xf

    .line 120
    .local v6, "iconShape":I
    invoke-virtual {v0, v6}, Landroid/app/OplusIconConfig;->setIconShape(I)V

    .line 121
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    const/16 v17, 0x4

    shr-long v24, v24, v17

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v7, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->intValue()I

    move-result v19

    move/from16 v24, v1

    .end local v1    # "themeCustomPos":I
    .local v24, "themeCustomPos":I
    and-int v1, v19, v22

    .line 122
    .local v1, "iconSize":I
    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->setIconSize(I)V

    .line 123
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const/16 v19, 0x10

    shr-long v25, v25, v19

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v7, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->intValue()I

    move-result v19

    move/from16 v25, v1

    .end local v1    # "iconSize":I
    .local v25, "iconSize":I
    and-int v1, v19, v22

    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->setForegroundSize(I)V

    .line 124
    invoke-static {v7, v2, v6}, Landroid/app/OplusUxIconConfigParser;->parseCustomConfig(Ljava/lang/Long;Landroid/content/res/Resources;I)Landroid/graphics/Path;

    move-result-object v6

    .line 125
    .end local v18    # "path":Landroid/graphics/Path;
    .end local v25    # "iconSize":I
    .local v6, "path":Landroid/graphics/Path;
    goto/16 :goto_5

    .line 118
    .end local v6    # "path":Landroid/graphics/Path;
    .end local v24    # "themeCustomPos":I
    .local v1, "themeCustomPos":I
    .restart local v18    # "path":Landroid/graphics/Path;
    :cond_8
    move/from16 v24, v1

    const/16 v17, 0x4

    .line 125
    .end local v1    # "themeCustomPos":I
    .restart local v24    # "themeCustomPos":I
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_a

    array-length v1, v4

    if-ge v8, v1, :cond_a

    .line 128
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    const/16 v1, 0x8

    shr-long v25, v25, v1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v7, v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    and-int v6, v6, v22

    .line 129
    .local v6, "iconSize":I
    invoke-virtual {v0, v6}, Landroid/app/OplusIconConfig;->setIconSize(I)V

    .line 131
    const/4 v1, 0x1

    if-ne v8, v1, :cond_9

    .line 134
    const v1, 0xc050090

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 135
    .local v1, "defaultMaterialIconSizePx":I
    invoke-static {v2, v1}, Landroid/app/OplusUxIconConfigParser;->getDpFromIconConfigPx(Landroid/content/res/Resources;I)I

    move-result v3

    .line 136
    .local v3, "defaultMaterialIconSizeDp":I
    invoke-virtual {v0, v3}, Landroid/app/OplusIconConfig;->setForegroundSize(I)V

    .line 137
    move/from16 v19, v1

    .end local v1    # "defaultMaterialIconSizePx":I
    .local v19, "defaultMaterialIconSizePx":I
    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v1

    move/from16 v25, v3

    .end local v3    # "defaultMaterialIconSizeDp":I
    .local v25, "defaultMaterialIconSizeDp":I
    new-instance v3, Landroid/graphics/Rect;

    move/from16 v26, v6

    .end local v6    # "iconSize":I
    .local v26, "iconSize":I
    const/16 v6, 0x96

    move-object/from16 v27, v7

    const/4 v7, 0x0

    .end local v7    # "uxIconConfig":Ljava/lang/Long;
    .local v27, "uxIconConfig":Ljava/lang/Long;
    invoke-direct {v3, v7, v7, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v1, v3, v6}, Lcom/oplus/util/OplusRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v6

    .line 140
    .end local v18    # "path":Landroid/graphics/Path;
    .end local v19    # "defaultMaterialIconSizePx":I
    .end local v25    # "defaultMaterialIconSizeDp":I
    .local v6, "path":Landroid/graphics/Path;
    move-object/from16 v7, v27

    goto :goto_5

    .line 141
    .end local v26    # "iconSize":I
    .end local v27    # "uxIconConfig":Ljava/lang/Long;
    .local v6, "iconSize":I
    .restart local v7    # "uxIconConfig":Ljava/lang/Long;
    .restart local v18    # "path":Landroid/graphics/Path;
    :cond_9
    move/from16 v26, v6

    move-object/from16 v27, v7

    .end local v6    # "iconSize":I
    .end local v7    # "uxIconConfig":Ljava/lang/Long;
    .restart local v26    # "iconSize":I
    .restart local v27    # "uxIconConfig":Ljava/lang/Long;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; pathData ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v4, v8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UXIconPaser"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    aget-object v1, v4, v8

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .end local v18    # "path":Landroid/graphics/Path;
    .local v6, "path":Landroid/graphics/Path;
    goto :goto_5

    .line 116
    .end local v6    # "path":Landroid/graphics/Path;
    .end local v26    # "iconSize":I
    .end local v27    # "uxIconConfig":Ljava/lang/Long;
    .restart local v7    # "uxIconConfig":Ljava/lang/Long;
    .restart local v18    # "path":Landroid/graphics/Path;
    :cond_a
    move-object/from16 v6, v18

    .end local v18    # "path":Landroid/graphics/Path;
    .restart local v6    # "path":Landroid/graphics/Path;
    :goto_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    move/from16 v1, v24

    goto/16 :goto_4

    .end local v6    # "path":Landroid/graphics/Path;
    .end local v24    # "themeCustomPos":I
    .local v1, "themeCustomPos":I
    .restart local v18    # "path":Landroid/graphics/Path;
    :cond_b
    move/from16 v24, v1

    .end local v1    # "themeCustomPos":I
    .restart local v24    # "themeCustomPos":I
    move-object/from16 v6, v18

    goto :goto_6

    .line 108
    .end local v21    # "tempConfig":Ljava/lang/Long;
    .end local v24    # "themeCustomPos":I
    .restart local v1    # "themeCustomPos":I
    .restart local v6    # "path":Landroid/graphics/Path;
    .local v8, "tempConfig":Ljava/lang/Long;
    .local v18, "i":I
    :cond_c
    move/from16 v24, v1

    move-object/from16 v19, v6

    move-object/from16 v21, v8

    .end local v1    # "themeCustomPos":I
    .end local v6    # "path":Landroid/graphics/Path;
    .end local v8    # "tempConfig":Ljava/lang/Long;
    .local v19, "path":Landroid/graphics/Path;
    .restart local v21    # "tempConfig":Ljava/lang/Long;
    .restart local v24    # "themeCustomPos":I
    move/from16 v8, v18

    .line 148
    .end local v18    # "i":I
    .end local v19    # "path":Landroid/graphics/Path;
    .restart local v6    # "path":Landroid/graphics/Path;
    .local v8, "i":I
    :goto_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v8, v1, :cond_f

    .line 149
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 150
    move-object/from16 v3, p4

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v13, :cond_d

    array-length v11, v5

    if-ge v1, v11, :cond_d

    .line 151
    aget-object v11, v5, v1

    invoke-static {v11}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .line 149
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_e
    move-object/from16 v3, p4

    goto :goto_8

    .line 148
    .end local v1    # "j":I
    :cond_f
    move-object/from16 v3, p4

    .line 155
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "path = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "; config = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/OplusIconConfig;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-nez v6, :cond_10

    .line 157
    const v1, 0xc0400d3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6

    .line 159
    :cond_10
    invoke-virtual {v0, v6}, Landroid/app/OplusIconConfig;->setShapePath(Landroid/graphics/Path;)V

    .line 160
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->setEmpty(Z)V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/OplusIconConfig;->removeUpdateConfig(I)V

    .line 162
    return-void
.end method

.method private static blacklist parseCustomConfig(Ljava/lang/Long;Landroid/content/res/Resources;I)Landroid/graphics/Path;
    .locals 1
    .param p0, "uxIconConfig"    # Ljava/lang/Long;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconShape"    # I

    .line 255
    invoke-static {p0, p1, p2}, Landroid/app/OplusUxIconConfigParser;->parseCustomPlusConfig(Ljava/lang/Long;Landroid/content/res/Resources;I)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist parseCustomPlusConfig(Ljava/lang/Long;Landroid/content/res/Resources;I)Landroid/graphics/Path;
    .locals 5
    .param p0, "uxIconConfig"    # Ljava/lang/Long;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "iconShape"    # I

    .line 259
    packed-switch p2, :pswitch_data_0

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 270
    :pswitch_0
    const v0, 0xc0400d5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 267
    :pswitch_1
    const v0, 0xc0400d3

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 264
    :pswitch_2
    const v0, 0xc0400d2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 261
    :pswitch_3
    const v0, 0xc0400d1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 275
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object p0, v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xfff

    .line 276
    .local v0, "iconRadiusPx":I
    const/16 v1, 0x4b

    if-le v0, v1, :cond_0

    .line 277
    invoke-static {p1, v0}, Landroid/app/OplusUxIconConfigParser;->getPxFromIconConfigDp(Landroid/content/res/Resources;I)I

    move-result v0

    .line 279
    :cond_0
    if-ne v0, v1, :cond_1

    .line 280
    const v1, 0xc0400d4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    return-object v1

    .line 282
    :cond_1
    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/16 v4, 0x96

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/oplus/util/OplusRoundRectUtil;->getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist productIconPack()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/app/OplusUxIconConfigParser;->PAC_MAN_ICON_PACK_DIR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OPIconpackPacman.apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "productIconPack has exists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusUxIconConfigParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v1, "com.oneplus.iconpack.pacman"

    return-object v1

    .line 181
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
