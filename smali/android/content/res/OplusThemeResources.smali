.class public Landroid/content/res/OplusThemeResources;
.super Ljava/lang/Object;
.source "OplusThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/OplusThemeResources$MetaData;
    }
.end annotation


# static fields
.field public static final blacklist CUSTOM_THEME_PATH:Ljava/lang/String;

.field public static final blacklist CUSTON_FLAG:I = 0x100

.field public static final blacklist DEFAULT_CUSTOM_PROP:Ljava/lang/String;

.field public static final blacklist DEFAULT_THEME_META:[Landroid/content/res/OplusThemeResources$MetaData;

.field public static final blacklist FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final blacklist FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final blacklist ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final blacklist LAUNCHER_PACKAGE:Ljava/lang/String; = "com.android.launcher"

.field public static final blacklist LOCKSCREEN_PACKAGE:Ljava/lang/String; = "lockscreen"

.field public static final blacklist OPLUS_NAME:Ljava/lang/String; = "oplus-framework-res"

.field public static final blacklist OPLUS_PACKAGE:Ljava/lang/String; = "oplus"

.field public static final blacklist SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist SYSTEM_THEME_PATH:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusThemeResources"

.field public static final blacklist THIRD_THEME_PATH:Ljava/lang/String; = "/data/theme/"

.field public static blacklist sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

.field private static blacklist sSystem:Landroid/content/res/OplusThemeResourcesSystem;

.field public static blacklist sThemeMetaPath:[Landroid/content/res/OplusThemeResources$MetaData;


# instance fields
.field private final blacklist debug:Z

.field private blacklist mHasDrawable:Z

.field private blacklist mHasValue:Z

.field private blacklist mIsHasWrapped:Z

.field private blacklist mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

.field private blacklist mPackageName:Ljava/lang/String;

.field private volatile blacklist mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

.field private blacklist mResources:Landroid/content/res/IResourcesImplExt;

.field private blacklist mWrapped:Landroid/content/res/OplusThemeResources;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 53
    const-string v0, "custom_theme_path_default_prop"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusThemeResources;->DEFAULT_CUSTOM_PROP:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/oplus/theme/OplusThemeUtil;->getDefaultThemePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusThemeResources;->SYSTEM_THEME_PATH:Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    sput-object v1, Landroid/content/res/OplusThemeResources;->CUSTOM_THEME_PATH:Ljava/lang/String;

    .line 60
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/content/res/OplusThemeResources$MetaData;

    sput-object v3, Landroid/content/res/OplusThemeResources;->DEFAULT_THEME_META:[Landroid/content/res/OplusThemeResources$MetaData;

    .line 61
    new-array v2, v2, [Landroid/content/res/OplusThemeResources$MetaData;

    sput-object v2, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    .line 65
    new-instance v2, Landroid/content/res/OplusThemeResources$MetaData;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4, v4, v4}, Landroid/content/res/OplusThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    const/4 v5, 0x0

    aput-object v2, v3, v5

    .line 66
    new-instance v2, Landroid/content/res/OplusThemeResources$MetaData;

    const-string v6, "/data/theme/"

    invoke-direct {v2, v6, v4, v4, v4}, Landroid/content/res/OplusThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v2, v3, v4

    .line 67
    sget-object v2, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    new-instance v6, Landroid/content/res/OplusThemeResources$MetaData;

    invoke-direct {v6, v0, v4, v4, v4}, Landroid/content/res/OplusThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v6, v2, v5

    .line 68
    sget-object v0, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    new-instance v2, Landroid/content/res/OplusThemeResources$MetaData;

    invoke-direct {v2, v1, v4, v4, v4}, Landroid/content/res/OplusThemeResources$MetaData;-><init>(Ljava/lang/String;ZZZ)V

    aput-object v2, v0, v4

    .line 69
    sput-object v3, Landroid/content/res/OplusThemeResources;->sThemeMetaPath:[Landroid/content/res/OplusThemeResources$MetaData;

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/OplusThemeResources;Landroid/content/res/IResourcesImplExt;Ljava/lang/String;Landroid/content/res/OplusThemeResources$MetaData;)V
    .locals 2
    .param p1, "themeResources"    # Landroid/content/res/OplusThemeResources;
    .param p2, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "metaData"    # Landroid/content/res/OplusThemeResources$MetaData;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OplusThemeResources;->debug:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    .line 41
    iput-object v0, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    .line 43
    iput-object v0, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    .line 88
    iput-object v0, p0, Landroid/content/res/OplusThemeResources;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    .line 89
    iput-object v0, p0, Landroid/content/res/OplusThemeResources;->mPackageName:Ljava/lang/String;

    .line 93
    if-eqz p1, :cond_1

    .line 94
    iget-object v1, p1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 95
    iput-object p1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    goto :goto_0

    .line 97
    :cond_0
    iput-object v0, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    .line 100
    :cond_1
    :goto_0
    iput-object p4, p0, Landroid/content/res/OplusThemeResources;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    .line 101
    iput-object p3, p0, Landroid/content/res/OplusThemeResources;->mPackageName:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    .line 103
    invoke-virtual {p0}, Landroid/content/res/OplusThemeResources;->checkUpdate()Z

    .line 104
    return-void
.end method

.method private blacklist checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V
    .locals 1
    .param p1, "zipFile"    # Landroid/content/res/OplusThemeZipFile;

    .line 368
    if-nez p1, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    iget-boolean v0, p1, Landroid/content/res/OplusThemeZipFile;->mHasInit:Z

    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p1}, Landroid/content/res/OplusThemeZipFile;->initZipFile()Z

    .line 374
    :cond_1
    return-void
.end method

.method private blacklist checkMetaPath(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V
    .locals 8
    .param p1, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 177
    if-eqz p1, :cond_6

    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    sget-object v1, Landroid/content/res/OplusThemeResources;->DEFAULT_THEME_META:[Landroid/content/res/OplusThemeResources$MetaData;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eq v0, v3, :cond_6

    sget-object v3, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    aget-object v2, v3, v2

    if-ne v0, v2, :cond_0

    goto :goto_3

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    const-string v2, "framework-res"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "oplus-framework-res"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 184
    :cond_1
    invoke-interface {p1}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    goto :goto_1

    .line 182
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    .line 186
    :goto_1
    if-nez v0, :cond_3

    .line 187
    return-void

    .line 189
    :cond_3
    iget-wide v2, v0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 190
    .local v2, "themeFlag":J
    const-wide/16 v4, 0x100

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 191
    sget-object v1, Landroid/content/res/OplusThemeResources;->DEFAULT_CUSTOM_PROP:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Landroid/content/res/OplusThemeResources;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    sget-object v1, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    aget-object v1, v1, v5

    iget-object v4, v0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    iput-object v4, v1, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    .line 195
    :cond_4
    sget-object v1, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    aget-object v1, v1, v5

    iput-object v1, p0, Landroid/content/res/OplusThemeResources;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    goto :goto_2

    .line 197
    :cond_5
    aget-object v1, v1, v5

    iput-object v1, p0, Landroid/content/res/OplusThemeResources;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    .line 199
    :goto_2
    return-void

    .line 178
    .end local v0    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v2    # "themeFlag":J
    :cond_6
    :goto_3
    return-void
.end method

.method public static blacklist getSystem()Landroid/content/res/OplusThemeResourcesSystem;
    .locals 1

    .line 118
    sget-object v0, Landroid/content/res/OplusThemeResources;->sSystem:Landroid/content/res/OplusThemeResourcesSystem;

    return-object v0
.end method

.method public static blacklist getSystem(Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusThemeResourcesSystem;
    .locals 1
    .param p0, "resources"    # Landroid/content/res/IResourcesImplExt;

    .line 111
    sget-object v0, Landroid/content/res/OplusThemeResources;->sSystem:Landroid/content/res/OplusThemeResourcesSystem;

    if-nez v0, :cond_0

    .line 112
    invoke-static {p0}, Landroid/content/res/OplusThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Landroid/content/res/OplusThemeResources;->sSystem:Landroid/content/res/OplusThemeResourcesSystem;

    .line 114
    :cond_0
    sget-object v0, Landroid/content/res/OplusThemeResources;->sSystem:Landroid/content/res/OplusThemeResourcesSystem;

    return-object v0
.end method

.method public static blacklist getTopLevelThemeResources(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Landroid/content/res/OplusThemeResources;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p1, "path"    # Ljava/lang/String;

    .line 122
    invoke-static {p0, p1}, Landroid/content/res/OplusThemeResources;->setThemePath(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "themeResources":Landroid/content/res/OplusThemeResources;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroid/content/res/OplusThemeResources;->sThemeMetaPath:[Landroid/content/res/OplusThemeResources$MetaData;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 125
    new-instance v2, Landroid/content/res/OplusThemeResources;

    sget-object v3, Landroid/content/res/OplusThemeResources;->sThemeMetaPath:[Landroid/content/res/OplusThemeResources$MetaData;

    aget-object v3, v3, v1

    invoke-direct {v2, v0, p0, p1, v3}, Landroid/content/res/OplusThemeResources;-><init>(Landroid/content/res/OplusThemeResources;Landroid/content/res/IResourcesImplExt;Ljava/lang/String;Landroid/content/res/OplusThemeResources$MetaData;)V

    .line 127
    .local v2, "res":Landroid/content/res/OplusThemeResources;
    move-object v0, v2

    .line 124
    .end local v2    # "res":Landroid/content/res/OplusThemeResources;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private blacklist hasValuesInner()Z
    .locals 2

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, "flage":Z
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OplusThemeZipFile;->hasValues()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    .line 204
    invoke-direct {v1}, Landroid/content/res/OplusThemeResources;->hasValuesInner()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0
.end method

.method public static blacklist setThemePath(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V
    .locals 8
    .param p0, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 133
    if-nez p0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v1, 0x0

    .line 138
    .local v1, "baseConfig":Landroid/content/res/OplusBaseConfiguration;
    const-string v2, "framework-res"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const-string v2, "oplus-framework-res"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-interface {p0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    :cond_2
    move-object v0, v3

    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    invoke-interface {p0}, Landroid/content/res/IResourcesImplExt;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v3

    :cond_4
    move-object v0, v3

    .line 143
    :goto_1
    if-nez v0, :cond_5

    .line 144
    return-void

    .line 146
    :cond_5
    iget-wide v2, v0, Loplus/content/res/OplusExtraConfiguration;->mThemeChangedFlags:J

    .line 147
    .local v2, "themeFlag":J
    const-wide/16 v4, 0x100

    and-long v6, v2, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_7

    .line 148
    sget-object v4, Landroid/content/res/OplusThemeResources;->DEFAULT_CUSTOM_PROP:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    sget-object v5, Landroid/content/res/OplusThemeResources;->CUSTOM_THEME_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 150
    sget-object v4, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, v0, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/res/OplusThemeResources$MetaData;->themePath:Ljava/lang/String;

    .line 152
    :cond_6
    sget-object v4, Landroid/content/res/OplusThemeResources;->sCustomThemeMeta:[Landroid/content/res/OplusThemeResources$MetaData;

    sput-object v4, Landroid/content/res/OplusThemeResources;->sThemeMetaPath:[Landroid/content/res/OplusThemeResources$MetaData;

    goto :goto_2

    .line 154
    :cond_7
    sget-object v4, Landroid/content/res/OplusThemeResources;->DEFAULT_THEME_META:[Landroid/content/res/OplusThemeResources$MetaData;

    sput-object v4, Landroid/content/res/OplusThemeResources;->sThemeMetaPath:[Landroid/content/res/OplusThemeResources$MetaData;

    .line 156
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist checkThemePackageExit()Z
    .locals 1

    .line 361
    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v0}, Landroid/content/res/OplusThemeZipFile;->exists()Z

    move-result v0

    return v0

    .line 364
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist checkUpdate()Z
    .locals 4

    .line 159
    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/content/res/OplusThemeResources;->checkMetaPath(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/res/OplusBaseFile;->rejectTheme(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Z

    move-result v0

    .line 161
    .local v0, "reject":Z
    if-nez v0, :cond_0

    .line 162
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mMetaData:Landroid/content/res/OplusThemeResources$MetaData;

    iget-object v2, p0, Landroid/content/res/OplusThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-static {v1, v2, v3}, Landroid/content/res/OplusThemeZipFile;->getThemeZipFile(Landroid/content/res/OplusThemeResources$MetaData;Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusThemeZipFile;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    .line 164
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OplusThemeZipFile;->shouldReload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    iget-object v2, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-virtual {v1, v2}, Landroid/content/res/OplusThemeZipFile;->setResource(Landroid/content/res/IResourcesImplExt;)V

    .line 166
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OplusThemeZipFile;->clear()V

    .line 169
    :cond_1
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    .line 170
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_4

    :cond_3
    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/content/res/OplusThemeResources;->mHasValue:Z

    .line 171
    iput-boolean v2, p0, Landroid/content/res/OplusThemeResources;->mHasDrawable:Z

    .line 173
    or-int v1, v2, v2

    return v1
.end method

.method public blacklist containsEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "isExists":Z
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 220
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OplusThemeZipFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->containsEntry(Ljava/lang/String;)Z

    move-result v0

    .line 225
    :cond_0
    return v0
.end method

.method protected blacklist getIconFileStream(Ljava/lang/String;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 308
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 309
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getIconInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 312
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 313
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 314
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getIconInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 316
    :cond_1
    return-object v0
.end method

.method public blacklist getPackageThemeFileStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 251
    invoke-virtual {p0, p1, p2}, Landroid/content/res/OplusThemeResources;->getPackageThemeFileStreamInner(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getPackageThemeFileStreamInner(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 294
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/OplusThemeZipFile;->getInputStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 297
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v2, :cond_1

    .line 298
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 299
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/OplusThemeZipFile;->getInputStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 302
    :cond_1
    return-object v0
.end method

.method public blacklist getThemeCharSequence(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I

    .line 229
    invoke-virtual {p0, p1}, Landroid/content/res/OplusThemeResources;->getThemeCharSequenceInner(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getThemeCharSequenceInner(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "res":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 236
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 239
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 241
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    :cond_1
    return-object v0
.end method

.method public blacklist getThemeFileStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "id"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0, p2}, Landroid/content/res/OplusThemeResources;->getThemeFileStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeFileStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 255
    invoke-virtual {p0, p1}, Landroid/content/res/OplusThemeResources;->getThemeFileStreamInner(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getThemeFileStream(Ljava/lang/String;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .line 259
    invoke-virtual {p0, p1, p2}, Landroid/content/res/OplusThemeResources;->getThemeFileStreamInner(Ljava/lang/String;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getThemeFileStreamInner(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 280
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-boolean v2, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v2, :cond_1

    .line 284
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 285
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 287
    :cond_1
    return-object v0
.end method

.method protected blacklist getThemeFileStreamInner(Ljava/lang/String;Z)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "useWrap"    # Z

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "themeFileInfo":Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    .line 265
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 266
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 269
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 270
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 271
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getInputStream(Ljava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    .line 273
    :cond_1
    return-object v0
.end method

.method public blacklist getThemeInt(I)Ljava/lang/Integer;
    .locals 1
    .param p1, "id"    # I

    .line 320
    invoke-virtual {p0, p1}, Landroid/content/res/OplusThemeResources;->getThemeIntInner(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getThemeIntInner(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "res":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 327
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 330
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-direct {p0, v1}, Landroid/content/res/OplusThemeResources;->checkAndInitZip(Landroid/content/res/OplusThemeZipFile;)V

    .line 332
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusThemeZipFile;->getInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 335
    :cond_1
    return-object v0
.end method

.method protected blacklist hasDrawableInner()Z
    .locals 2

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "isValid":Z
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OplusThemeZipFile;->hasZipDrawables()Z

    move-result v0

    .line 347
    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OplusThemeResources;->mIsHasWrapped:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mWrapped:Landroid/content/res/OplusThemeResources;

    if-eqz v1, :cond_1

    .line 348
    iget-object v1, v1, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    invoke-virtual {v1}, Landroid/content/res/OplusThemeZipFile;->hasZipDrawables()Z

    move-result v0

    .line 350
    :cond_1
    return v0
.end method

.method public blacklist hasDrawables()Z
    .locals 1

    .line 339
    iget-boolean v0, p0, Landroid/content/res/OplusThemeResources;->mHasDrawable:Z

    return v0
.end method

.method public blacklist hasValues()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Landroid/content/res/OplusThemeResources;->mHasValue:Z

    return v0
.end method

.method protected blacklist isMutiPackage()Z
    .locals 1

    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setResource(Landroid/content/res/IResourcesImplExt;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/IResourcesImplExt;

    .line 354
    iput-object p1, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    .line 355
    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Landroid/content/res/OplusThemeResources;->mPackageZipFile:Landroid/content/res/OplusThemeZipFile;

    iget-object v1, p0, Landroid/content/res/OplusThemeResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-virtual {v0, v1}, Landroid/content/res/OplusThemeZipFile;->setResource(Landroid/content/res/IResourcesImplExt;)V

    .line 358
    :cond_0
    return-void
.end method
