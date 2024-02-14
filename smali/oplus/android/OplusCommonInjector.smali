.class public Loplus/android/OplusCommonInjector;
.super Ljava/lang/Object;
.source "OplusCommonInjector.java"

# interfaces
.implements Landroid/app/IOplusCommonInjector;


# static fields
.field private static volatile blacklist sInstance:Loplus/android/OplusCommonInjector;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Loplus/android/OplusCommonInjector;->sInstance:Loplus/android/OplusCommonInjector;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static blacklist getInstance()Loplus/android/OplusCommonInjector;
    .locals 2

    .line 47
    sget-object v0, Loplus/android/OplusCommonInjector;->sInstance:Loplus/android/OplusCommonInjector;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Loplus/android/OplusCommonInjector;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Loplus/android/OplusCommonInjector;->sInstance:Loplus/android/OplusCommonInjector;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Loplus/android/OplusCommonInjector;

    invoke-direct {v1}, Loplus/android/OplusCommonInjector;-><init>()V

    sput-object v1, Loplus/android/OplusCommonInjector;->sInstance:Loplus/android/OplusCommonInjector;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Loplus/android/OplusCommonInjector;->sInstance:Loplus/android/OplusCommonInjector;

    return-object v0
.end method

.method private blacklist preloadDrawables(Landroid/content/res/Resources;Landroid/content/res/TypedArray;Ljava/lang/String;)I
    .locals 6
    .param p1, "mResources"    # Landroid/content/res/Resources;
    .param p2, "ar"    # Landroid/content/res/TypedArray;
    .param p3, "TAG"    # Ljava/lang/String;

    .line 145
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 146
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 147
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 151
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 152
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 153
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private blacklist preloadOplusStateLists(Landroid/content/res/Resources;Landroid/content/res/TypedArray;Ljava/lang/String;)I
    .locals 6
    .param p1, "mResources"    # Landroid/content/res/Resources;
    .param p2, "ar"    # Landroid/content/res/TypedArray;
    .param p3, "TAG"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 174
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 175
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 179
    .local v2, "id":I
    if-eqz v2, :cond_1

    .line 180
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 184
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    .end local v1    # "i":I
    :cond_2
    return v0
.end method


# virtual methods
.method public whitelist applyConfigurationToResourcesForResourcesManager(Landroid/content/res/Configuration;I)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "changes"    # I

    .line 87
    invoke-static {}, Landroid/app/OplusThemeHelper;->getInstance()Landroid/app/OplusThemeHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/OplusThemeHelper;->handleExtraConfigurationChanges(I)V

    .line 91
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/font/IOplusFontManager;->updateTypefaceInCurrProcess(Landroid/content/res/Configuration;I)V

    .line 95
    sget-object v0, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Landroid/content/res/IOplusThemeManager;

    invoke-interface {v0, p2}, Landroid/content/res/IOplusThemeManager;->updateExtraConfigForUxIcon(I)V

    .line 97
    return-void
.end method

.method public blacklist hookActivityAliasTheme(Landroid/content/pm/PackageParser$Activity;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Activity;)V
    .locals 4
    .param p1, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "target"    # Landroid/content/pm/PackageParser$Activity;

    .line 130
    sget-object v0, Lcom/oplus/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 131
    .local v0, "sb":Landroid/content/res/TypedArray;
    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, p4, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 132
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    return-void
.end method

.method public whitelist hookPreloadResources(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 9
    .param p1, "mResources"    # Landroid/content/res/Resources;
    .param p2, "tag"    # Ljava/lang/String;

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, "startTime":J
    const v2, 0xc070022    # 1.0400062E-31f

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 106
    .local v2, "ar":Landroid/content/res/TypedArray;
    invoke-direct {p0, p1, v2, p2}, Loplus/android/OplusCommonInjector;->preloadDrawables(Landroid/content/res/Resources;Landroid/content/res/TypedArray;Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, "N":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "...preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ROM drawable resources in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ms."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 108
    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 111
    const v4, 0xc070023    # 1.0400063E-31f

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 113
    invoke-direct {p0, p1, v2, p2}, Loplus/android/OplusCommonInjector;->preloadOplusStateLists(Landroid/content/res/Resources;Landroid/content/res/TypedArray;Ljava/lang/String;)I

    move-result v3

    .line 114
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ROM color resources in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {p2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method public whitelist onConfigurationChangedForApplication(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 68
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    invoke-interface {v0, p2}, Lcom/oplus/font/IOplusFontManager;->updateLanguageLocale(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method public whitelist onCreateForActivity(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    return-void
.end method

.method public whitelist onCreateForApplication(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .line 74
    if-eqz p1, :cond_0

    .line 75
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oplus/font/IOplusFontManager;->setCurrentAppName(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/oplus/font/IOplusFontManager;->DEFAULT:Lcom/oplus/font/IOplusFontManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/font/IOplusFontManager;

    invoke-interface {v0, p1}, Lcom/oplus/font/IOplusFontManager;->initVariationFontVariable(Landroid/content/Context;)V

    .line 81
    :cond_0
    return-void
.end method
