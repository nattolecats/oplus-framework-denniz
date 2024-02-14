.class public Landroid/app/OplusUXIconLoadHelper;
.super Ljava/lang/Object;
.source "OplusUXIconLoadHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusUXIconLoader"

.field private static final blacklist sIconLoader:Landroid/app/OplusUXIconLoader;

.field private static blacklist sSupportUxOnline:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    const/4 v0, -0x1

    sput v0, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    .line 40
    invoke-static {}, Landroid/app/OplusUXIconLoader;->getLoader()Landroid/app/OplusUXIconLoader;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    .line 41
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "loadByResolver"    # Z

    move-object v0, p0

    move-object v8, p1

    move/from16 v9, p3

    const-class v10, Landroid/app/OplusUXIconLoadHelper;

    monitor-enter v10

    .line 57
    :try_start_0
    invoke-interface {p0, p1, v9}, Landroid/content/res/IUxIconPackageManagerExt;->getCachedIconForThemeHelper(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v11, v1

    .line 58
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v1, v11, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_0

    move-object v1, v11

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v11

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 59
    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getWrapper()Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableWrapper;->getAdaptiveIconDrawableExt()Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v1

    invoke-interface {v1}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->hookGetIconMask()Landroid/graphics/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    invoke-virtual {v1, v11}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v10

    return-object v11

    .line 64
    :cond_0
    :try_start_1
    const-string v1, "#UxIcon.getDrawable"

    const-wide/16 v12, 0x2000

    invoke-static {v12, v13, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 67
    if-nez p5, :cond_1

    .line 68
    sget-object v1, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    sget-object v2, Landroid/app/IOplusResolverUxIconDrawableManager;->DEFAULT:Landroid/app/IOplusResolverUxIconDrawableManager;

    iput-object v2, v1, Landroid/app/OplusUXIconLoader;->mOplusUxIconDrawableManager:Landroid/app/IOplusResolverUxIconDrawableManager;

    .line 70
    :cond_1
    sget-object v1, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/app/OplusUXIconLoader;->loadUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 73
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-interface {p0, p1, v9, v1}, Landroid/content/res/IUxIconPackageManagerExt;->putCachedIconForThemeHelper(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    monitor-exit v10

    return-object v1

    .line 80
    :cond_2
    const/4 v2, 0x0

    monitor-exit v10

    return-object v2

    .line 56
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p0    # "packageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "activityName":Ljava/lang/String;
    .end local p3    # "id":I
    .end local p4    # "app":Landroid/content/pm/ApplicationInfo;
    .end local p5    # "loadByResolver":Z
    :catchall_0
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static declared-synchronized whitelist getUxIconDrawable(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "oplusRes"    # Landroid/content/res/IResourcesExt;
    .param p2, "src"    # Landroid/graphics/drawable/Drawable;
    .param p3, "isForegroundDrawable"    # Z

    const-class v0, Landroid/app/OplusUXIconLoadHelper;

    monitor-enter v0

    .line 129
    :try_start_0
    sget-object v1, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/app/OplusUXIconLoader;->getUxIconDrawable(Landroid/content/res/Resources;Landroid/content/res/IResourcesExt;Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 129
    .end local p0    # "res":Landroid/content/res/Resources;
    .end local p1    # "oplusRes":Landroid/content/res/IResourcesExt;
    .end local p2    # "src":Landroid/graphics/drawable/Drawable;
    .end local p3    # "isForegroundDrawable":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized whitelist loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "packageManagerExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "resolverIconName"    # Ljava/lang/String;

    const-class v0, Landroid/app/OplusUXIconLoadHelper;

    monitor-enter v0

    .line 202
    :try_start_0
    sget-object v1, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    new-instance v2, Landroid/app/OplusResolverUxIconDrawableImpl;

    invoke-direct {v2, p4}, Landroid/app/OplusResolverUxIconDrawableImpl;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/OplusUXIconLoader;->mOplusUxIconDrawableManager:Landroid/app/IOplusResolverUxIconDrawableManager;

    .line 203
    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v3 .. v8}, Landroid/app/OplusUXIconLoadHelper;->getDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 201
    .end local p0    # "packageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "resourceId":I
    .end local p3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local p4    # "resolverIconName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized whitelist setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    const-class v0, Landroid/app/OplusUXIconLoadHelper;

    monitor-enter v0

    .line 207
    :try_start_0
    sget-object v1, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    invoke-virtual {v1, p0}, Landroid/app/OplusUXIconLoader;->setDarkFilterToDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit v0

    return-void

    .line 206
    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist supportUxIcon(Landroid/content/res/IUxIconPackageManagerExt;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 18
    .param p0, "pmExt"    # Landroid/content/res/IUxIconPackageManagerExt;
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 85
    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    :cond_1
    return v0

    .line 86
    :cond_2
    const/4 v2, 0x0

    .line 88
    .local v2, "supportUxIcon":Z
    const-string v3, "OplusUXIconLoader"

    if-nez p1, :cond_3

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 89
    invoke-interface/range {p0 .. p0}, Landroid/content/res/IUxIconPackageManagerExt;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p2

    :try_start_1
    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_1

    .line 120
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v5, p2

    :goto_0
    move-object/from16 v4, p1

    goto/16 :goto_5

    .line 88
    :cond_3
    move-object/from16 v5, p2

    .line 91
    move-object/from16 v4, p1

    .end local p1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-nez v4, :cond_4

    .line 92
    return v0

    .line 95
    :cond_4
    :try_start_2
    invoke-interface {v1, v4}, Landroid/content/res/IUxIconPackageManagerExt;->getOplusBaseResourcesForThemeHelper(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/IResourcesExt;

    move-result-object v6

    .line 96
    .local v6, "oplusRes":Landroid/content/res/IResourcesExt;
    if-nez v6, :cond_5

    .line 97
    return v0

    .line 99
    :cond_5
    const/4 v7, 0x0

    .line 100
    .local v7, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v8, 0x0

    .line 101
    .local v8, "configuration":Landroid/content/res/OplusBaseConfiguration;
    const-string v9, "system"

    iget-object v10, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 102
    invoke-interface {v6}, Landroid/content/res/IResourcesExt;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object v8, v9

    goto :goto_2

    .line 104
    :cond_6
    invoke-interface {v6}, Landroid/content/res/IResourcesExt;->getSystemConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    move-object v8, v9

    .line 106
    :goto_2
    if-eqz v8, :cond_7

    .line 107
    invoke-virtual {v8}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v9

    move-object v7, v9

    .line 109
    :cond_7
    if-nez v7, :cond_8

    move v9, v0

    goto :goto_3

    :cond_8
    iget v9, v7, Loplus/content/res/OplusExtraConfiguration;->mUserId:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 110
    .local v9, "userId":I
    :goto_3
    const-string v10, "persist.sys.themeflag"

    move-object v11, v10

    .line 111
    .local v11, "key":Ljava/lang/String;
    if-lez v9, :cond_9

    .line 112
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "."

    .line 113
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .line 115
    :cond_9
    const-wide/16 v12, 0x0

    if-nez v7, :cond_a

    invoke-static {v11, v12, v13}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v14

    goto :goto_4

    :cond_a
    iget-wide v14, v7, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    :goto_4
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 116
    .local v10, "themeFlag":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x10

    and-long v14, v14, v16

    cmp-long v12, v14, v12

    if-nez v12, :cond_b

    const/4 v0, 0x1

    :cond_b
    move v2, v0

    .line 117
    sget-boolean v0, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v0, :cond_c

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "supportUxIcon themeFlag =:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "; supportUxIcon = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 124
    .end local v6    # "oplusRes":Landroid/content/res/IResourcesExt;
    .end local v7    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v8    # "configuration":Landroid/content/res/OplusBaseConfiguration;
    .end local v9    # "userId":I
    .end local v10    # "themeFlag":Ljava/lang/Long;
    .end local v11    # "key":Ljava/lang/String;
    :cond_c
    goto :goto_6

    .line 120
    :catch_2
    move-exception v0

    .line 121
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_5
    sget-boolean v6, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v6, :cond_d

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "supportUxIcon NameNotFoundException =:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_d
    :goto_6
    return v2
.end method

.method public static declared-synchronized whitelist supportUxOnline(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 9
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "sourcePackageName"    # Ljava/lang/String;

    const-class v0, Landroid/app/OplusUXIconLoadHelper;

    monitor-enter v0

    .line 141
    :try_start_0
    sget v1, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ne v1, v3, :cond_9

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    sput v2, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    .line 146
    :cond_0
    sget-boolean v1, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v1, :cond_1

    .line 147
    const-string v1, "OplusUXIconLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supportUxOnline sourcePackageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    sget v1, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    if-ne v1, v3, :cond_2

    .line 151
    invoke-static {p1}, Landroid/app/OplusUxIconAppCheckUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    sput v4, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    .line 155
    :cond_2
    sget v1, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_6

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v5, 0x80

    :try_start_1
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v5

    .line 160
    .local v5, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string v6, "OplusUXIconLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportUxOnline ex :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v5    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-eqz v1, :cond_6

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_6

    .line 165
    :try_start_3
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.oplus.support_uxonline"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 166
    .local v5, "supportUxOnline":Ljava/lang/Boolean;
    sget-boolean v6, Landroid/app/OplusUxIconConstants;->DEBUG_UX_ICON:Z

    if-eqz v6, :cond_3

    .line 167
    const-string v6, "OplusUXIconLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportUxOnline :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_3
    if-eqz v5, :cond_5

    .line 170
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v4

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_1
    sput v6, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    .end local v5    # "supportUxOnline":Ljava/lang/Boolean;
    :cond_5
    goto :goto_2

    .line 172
    :catch_1
    move-exception v5

    .line 173
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v6, "OplusUXIconLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportUxOnline error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_6
    :goto_2
    sget v1, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v1, v3, :cond_9

    .line 180
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0xc07002e    # 1.0400076E-31f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "prefixs":[Ljava/lang/String;
    array-length v5, v1

    move v6, v2

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v1, v6

    .line 182
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 183
    sput v4, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    goto :goto_4

    .line 181
    .end local v7    # "prefix":Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 188
    .end local v1    # "prefixs":[Ljava/lang/String;
    :cond_8
    :goto_4
    goto :goto_5

    .line 187
    :catch_2
    move-exception v1

    .line 189
    :goto_5
    :try_start_6
    sget v1, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    if-ne v1, v3, :cond_9

    .line 190
    sput v2, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I

    .line 194
    :cond_9
    sget v1, Landroid/app/OplusUXIconLoadHelper;->sSupportUxOnline:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v1, v4, :cond_a

    move v2, v4

    :cond_a
    monitor-exit v0

    return v2

    .line 140
    .end local p0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local p1    # "sourcePackageName":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist updateExtraConfig(I)V
    .locals 1
    .param p0, "changes"    # I

    .line 133
    const/high16 v0, 0x800000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    invoke-virtual {v0}, Landroid/app/OplusUXIconLoader;->updateExtraConfig()V

    goto :goto_0

    .line 135
    :cond_0
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Landroid/app/OplusUXIconLoadHelper;->sIconLoader:Landroid/app/OplusUXIconLoader;

    invoke-virtual {v0}, Landroid/app/OplusUXIconLoader;->updateDarkModeConfig()V

    .line 138
    :cond_1
    :goto_0
    return-void
.end method
