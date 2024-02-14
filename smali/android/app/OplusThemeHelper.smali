.class public Landroid/app/OplusThemeHelper;
.super Ljava/lang/Object;
.source "OplusThemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/OplusThemeHelper$SingleTonHelper;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusThemeHelper"


# instance fields
.field private volatile blacklist mLastModified:J

.field private blacklist mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/app/OplusThemeHelper;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/OplusThemeHelper;->mLastModified:J

    return-void
.end method

.method private blacklist getExtraConfig(Landroid/content/res/IResourcesExt;Ljava/lang/String;)Loplus/content/res/OplusExtraConfiguration;
    .locals 4
    .param p1, "colorRes"    # Landroid/content/res/IResourcesExt;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "exConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v1, 0x0

    .line 263
    .local v1, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    const-string v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 264
    invoke-interface {p1}, Landroid/content/res/IResourcesExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    :cond_0
    move-object v0, v3

    goto :goto_0

    .line 266
    :cond_1
    invoke-interface {p1}, Landroid/content/res/IResourcesExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    :cond_2
    move-object v0, v3

    .line 268
    :goto_0
    return-object v0
.end method

.method public static whitelist getInstance()Landroid/app/OplusThemeHelper;
    .locals 1

    .line 66
    invoke-static {}, Landroid/app/OplusThemeHelper$SingleTonHelper;->-$$Nest$sfgetINSTANCE()Landroid/app/OplusThemeHelper;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist handleExtraConfigurationChanges(ILandroid/content/res/Configuration;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 71
    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    and-int/lit16 v0, p0, 0x200

    if-nez v0, :cond_0

    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/OplusThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 76
    :cond_1
    return-void
.end method

.method private blacklist isGoogleApps(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isDefaultTheme"    # Z

    .line 103
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, "com.google.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const-string v0, "com.googlesuit.ggkj"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "com.google.earth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "net.eeekeie.kekegdleiedec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string v0, "com.jsoh.GoogleService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, "lin.wang.allspeak"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "com.android.vending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const-string v0, "com.android.chrome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist needUpdateTheme(Loplus/content/res/OplusExtraConfiguration;I)Z
    .locals 12
    .param p1, "configuration"    # Loplus/content/res/OplusExtraConfiguration;
    .param p2, "userId"    # I

    .line 235
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 236
    return v0

    .line 238
    :cond_0
    const/4 v1, 0x0

    .line 239
    .local v1, "icons":Ljava/io/File;
    iget-wide v2, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    const-wide/16 v4, 0x100

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/16 v6, 0x1

    const-string v3, "icons"

    if-eqz v2, :cond_2

    .line 240
    iget-object v2, p1, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    new-instance v2, Ljava/io/File;

    sget-object v8, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 243
    :cond_1
    new-instance v2, Ljava/io/File;

    iget-object v8, p1, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    invoke-direct {v2, v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_0

    .line 245
    :cond_2
    iget-wide v8, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    and-long/2addr v8, v6

    cmp-long v2, v8, v4

    if-eqz v2, :cond_4

    .line 246
    const-string v2, "/data/theme/"

    if-lez p2, :cond_3

    .line 247
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    goto :goto_0

    .line 249
    :cond_3
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    .line 252
    :cond_4
    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/app/OplusThemeHelper;->mLastModified:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_5

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/app/OplusThemeHelper;->mLastModified:J

    .line 254
    return v2

    .line 256
    :cond_5
    iget-wide v8, p1, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 257
    .local v8, "flag":J
    and-long/2addr v6, v8

    cmp-long v3, v6, v4

    if-nez v3, :cond_6

    move v0, v2

    :cond_6
    sget-boolean v2, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    xor-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public whitelist getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "packagemanagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "applicationinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "packageiteminfo"    # Landroid/content/pm/PackageItemInfo;
    .param p6, "flag"    # Z

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p6, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v6, p5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/OplusThemeHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    :goto_1
    return-object v0
.end method

.method public blacklist getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p1, "packagemanagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "applicationinfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "name"    # Ljava/lang/String;

    .line 130
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "OplusThemeHelper"

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 131
    return-object v6

    .line 133
    :cond_0
    invoke-interface/range {p1 .. p3}, Landroid/content/res/IUxIconPackageManagerExt;->getCachedIconForThemeHelper(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 134
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 135
    return-object v7

    .line 137
    :cond_1
    const/4 v8, 0x1

    .line 138
    .local v8, "parseSucceed":Z
    const/4 v0, 0x0

    if-nez p4, :cond_2

    .line 140
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local p4    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .local v9, "applicationinfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 141
    .end local v9    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .restart local p4    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v6

    .line 138
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object/from16 v9, p4

    .line 145
    .end local p4    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "applicationinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const/4 v10, 0x0

    .line 146
    .local v10, "resources":Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 147
    .local v11, "colorRes":Landroid/content/res/IResourcesExt;
    const/4 v12, 0x0

    .line 148
    .local v12, "exConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v13, 0x0

    .line 150
    .local v13, "isThirdPart":Z
    :try_start_1
    invoke-interface {v2, v9}, Landroid/content/res/IUxIconPackageManagerExt;->getOplusBaseResourcesForThemeHelper(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/IResourcesExt;

    move-result-object v14

    move-object v11, v14

    .line 151
    if-nez v11, :cond_3

    .line 152
    return-object v6

    .line 154
    :cond_3
    invoke-interface {v11}, Landroid/content/res/IResourcesExt;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object v10, v14

    .line 155
    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v11, v14}, Landroid/app/OplusThemeHelper;->getExtraConfig(Landroid/content/res/IResourcesExt;Ljava/lang/String;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v14

    move-object v12, v14

    .line 156
    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    iget v0, v12, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 157
    .local v0, "userId":I
    :goto_1
    invoke-direct {v1, v12, v0}, Landroid/app/OplusThemeHelper;->needUpdateTheme(Loplus/content/res/OplusExtraConfiguration;I)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 158
    invoke-static {v10, v0}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    .line 159
    invoke-static {v0}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    move-result v14

    move v8, v14

    goto :goto_2

    .line 161
    :cond_5
    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->hasInit()Z

    move-result v14

    if-nez v14, :cond_6

    .line 162
    invoke-static {v10, v0}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    .line 164
    :cond_6
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->getAppsNumbers()I

    move-result v14

    if-gtz v14, :cond_7

    .line 165
    invoke-static {v0}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    move-result v14

    move v8, v14

    .line 168
    :cond_7
    :goto_2
    if-eqz v10, :cond_d

    .line 169
    invoke-static {v9}, Lcom/oplus/theme/OplusAppIconInfo;->isThirdPart(Landroid/content/pm/ApplicationInfo;)Z

    move-result v14

    move v13, v14

    .line 170
    if-nez v13, :cond_a

    .line 171
    sget-boolean v14, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    .line 172
    .local v14, "useWrap":Z
    iget-object v15, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v15}, Lcom/oplus/theme/OplusAppIconInfo;->indexOfPackageName(Ljava/lang/String;)I

    move-result v15

    .line 173
    .local v15, "iconIndex":I
    if-ltz v15, :cond_8

    invoke-static {v15}, Lcom/oplus/theme/OplusAppIconInfo;->getIconName(I)Ljava/lang/String;

    move-result-object v16

    goto :goto_3

    :cond_8
    move-object/from16 v16, v6

    :goto_3
    move-object/from16 p4, v16

    .line 174
    .local p4, "tempStr":Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    iget v6, v9, Landroid/content/pm/ApplicationInfo;->icon:I

    if-ne v4, v6, :cond_9

    .line 175
    move-object/from16 v6, p4

    .end local p4    # "tempStr":Ljava/lang/String;
    .local v6, "tempStr":Ljava/lang/String;
    invoke-interface {v11, v4, v6, v14}, Landroid/content/res/IResourcesExt;->loadIcon(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_4

    .line 174
    .end local v6    # "tempStr":Ljava/lang/String;
    .restart local p4    # "tempStr":Ljava/lang/String;
    :cond_9
    move-object/from16 v6, p4

    .line 177
    .end local p4    # "tempStr":Ljava/lang/String;
    .restart local v6    # "tempStr":Ljava/lang/String;
    invoke-interface {v11, v4, v14}, Landroid/content/res/IResourcesExt;->loadIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v7, v17

    .line 180
    .end local v6    # "tempStr":Ljava/lang/String;
    .end local v14    # "useWrap":Z
    .end local v15    # "iconIndex":I
    :cond_a
    :goto_4
    if-nez v7, :cond_b

    .line 181
    const/4 v13, 0x1

    .line 182
    invoke-interface/range {p1 .. p1}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v9}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object v7, v6

    .line 186
    :cond_b
    if-eqz v7, :cond_c

    if-eqz v8, :cond_c

    instance-of v6, v7, Landroid/graphics/drawable/LayerDrawable;

    if-nez v6, :cond_c

    .line 188
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {v7, v10, v13}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v6, v10, v14}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v7, v6

    .line 190
    :cond_c
    if-eqz v7, :cond_d

    .line 191
    invoke-interface {v2, v3, v4, v7}, Landroid/content/res/IUxIconPackageManagerExt;->putCachedIconForThemeHelper(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .end local v0    # "userId":I
    :cond_d
    nop

    .line 201
    return-object v7

    .line 197
    :catch_1
    move-exception v0

    .line 198
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getDrawable. Failure retrieving icon 0x"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, " in package "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const/4 v5, 0x0

    return-object v5

    .line 194
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v0

    .line 195
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getDrawable. Failure get resourcesExt for "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v14, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, ": "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v5, 0x0

    return-object v5
.end method

.method public whitelist getDrawableByConvert(Landroid/content/res/IResourcesExt;Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "colorRes"    # Landroid/content/res/IResourcesExt;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 205
    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto :goto_2

    .line 208
    :cond_0
    const/4 v0, 0x1

    .line 209
    .local v0, "parseSucceed":Z
    move-object v1, p3

    .line 210
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/app/OplusThemeHelper;->getExtraConfig(Landroid/content/res/IResourcesExt;Ljava/lang/String;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object v2

    .line 211
    .local v2, "exConfig":Loplus/content/res/OplusExtraConfiguration;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget v3, v2, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 212
    .local v3, "userId":I
    :goto_0
    invoke-direct {p0, v2, v3}, Landroid/app/OplusThemeHelper;->needUpdateTheme(Loplus/content/res/OplusExtraConfiguration;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    invoke-static {p2, v3}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    .line 214
    invoke-static {v3}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    move-result v0

    goto :goto_1

    .line 216
    :cond_2
    invoke-static {}, Lcom/oplus/theme/OplusConvertIcon;->hasInit()Z

    move-result v4

    if-nez v4, :cond_3

    .line 217
    invoke-static {p2, v3}, Lcom/oplus/theme/OplusConvertIcon;->initConvertIconForUser(Landroid/content/res/Resources;I)V

    .line 219
    :cond_3
    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->getAppsNumbers()I

    move-result v4

    if-gtz v4, :cond_4

    .line 220
    invoke-static {v3}, Lcom/oplus/theme/OplusAppIconInfo;->parseIconXmlForUser(I)Z

    move-result v0

    .line 223
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    instance-of v4, p3, Landroid/graphics/drawable/LayerDrawable;

    if-nez v4, :cond_5

    .line 224
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-static {p3, p2, v5}, Lcom/oplus/theme/OplusConvertIcon;->convertIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, p2, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v4

    .line 226
    :cond_5
    return-object v1

    .line 206
    .end local v0    # "parseSucceed":Z
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "exConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v3    # "userId":I
    :cond_6
    :goto_2
    return-object p3
.end method

.method public whitelist handleExtraConfigurationChanges(I)V
    .locals 1
    .param p1, "i"    # I

    .line 79
    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    goto :goto_0

    .line 81
    :cond_0
    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_1

    .line 82
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    goto :goto_0

    .line 83
    :cond_1
    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Landroid/graphics/Canvas;->freeCaches()V

    .line 86
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist isCustomizedIcon(Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "intentfilter"    # Landroid/content/IntentFilter;

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "flage":Z
    return v0
.end method
