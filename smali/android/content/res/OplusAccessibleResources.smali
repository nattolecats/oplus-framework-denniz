.class public Landroid/content/res/OplusAccessibleResources;
.super Ljava/lang/Object;
.source "OplusAccessibleResources.java"


# static fields
.field private static blacklist mPackageCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/res/OplusAccessibleResources;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccessible:Landroid/content/res/OplusAccessibleFile;

.field private blacklist mHasDrawables:Z

.field private blacklist mHasMaterialValues:Z

.field private blacklist mHasValues:Z

.field private blacklist mMaterialFile:Landroid/content/res/OplusMaterialFile;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mResources:Landroid/content/res/IResourcesImplExt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/content/res/OplusAccessibleResources;->mPackageCaches:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mPackageName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    .line 45
    iput-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    .line 46
    iput-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    .line 48
    iput-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasDrawables:Z

    .line 49
    iput-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    .line 55
    iput-object p2, p0, Landroid/content/res/OplusAccessibleResources;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/res/OplusAccessibleResources;->checkUpdate(Z)V

    .line 58
    return-void
.end method

.method private blacklist checkAssetValues()V
    .locals 2

    .line 206
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    invoke-virtual {v0}, Landroid/content/res/OplusAccessibleFile;->hasValues()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    invoke-virtual {v0}, Landroid/content/res/OplusAccessibleFile;->initValue()Z

    .line 208
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/OplusAccessibleFile;->setParsed(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method private blacklist checkColorUpdate(Z)V
    .locals 3
    .param p1, "change"    # Z

    .line 180
    invoke-direct {p0}, Landroid/content/res/OplusAccessibleResources;->isMaterialColorEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Landroid/content/res/OplusMaterialFile;->clears()V

    .line 184
    :cond_0
    iput-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    .line 185
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-static {v0, v2}, Landroid/content/res/OplusMaterialFile;->getMaterialFile(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusMaterialFile;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    .line 188
    if-eqz v0, :cond_3

    .line 189
    invoke-virtual {v0}, Landroid/content/res/OplusMaterialFile;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 190
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    invoke-virtual {v0}, Landroid/content/res/OplusMaterialFile;->clears()V

    .line 192
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    goto :goto_0

    .line 194
    :cond_3
    iput-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    .line 196
    :goto_0
    return-void
.end method

.method private blacklist checkMaterialValues()V
    .locals 2

    .line 199
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    invoke-virtual {v0}, Landroid/content/res/OplusMaterialFile;->hasValues()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    invoke-virtual {v0}, Landroid/content/res/OplusMaterialFile;->isParsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    invoke-virtual {v0}, Landroid/content/res/OplusMaterialFile;->loadMaterialColor()Z

    .line 201
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/OplusMaterialFile;->setParsed(Z)V

    .line 203
    :cond_1
    return-void
.end method

.method public static blacklist getAccessResources(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)Landroid/content/res/OplusAccessibleResources;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/IResourcesImplExt;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "mAcessResources":Landroid/content/res/OplusAccessibleResources;
    sget-object v1, Landroid/content/res/OplusAccessibleResources;->mPackageCaches:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 64
    .local v1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/OplusAccessibleResources;>;"
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/res/OplusAccessibleResources;

    .line 67
    :cond_0
    if-eqz v0, :cond_1

    .line 68
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/OplusAccessibleResources;->checkUpdate(Z)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Landroid/content/res/OplusAccessibleResources;

    invoke-direct {v2, p0, p1}, Landroid/content/res/OplusAccessibleResources;-><init>(Landroid/content/res/IResourcesImplExt;Ljava/lang/String;)V

    move-object v0, v2

    .line 71
    sget-object v2, Landroid/content/res/OplusAccessibleResources;->mPackageCaches:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_0
    return-object v0
.end method

.method private blacklist isAssetEnable()Z
    .locals 3

    .line 125
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    .line 126
    .local v0, "extrConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    return v1

    .line 129
    :cond_0
    iget v2, v0, Loplus/content/res/OplusExtraConfiguration;->mAccessibleChanged:I

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private blacklist isMaterialColorEnable()Z
    .locals 14

    .line 133
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-interface {v0}, Landroid/content/res/IResourcesImplExt;->getSystemConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    .line 134
    .local v0, "extrConfig":Loplus/content/res/OplusExtraConfiguration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 135
    return v1

    .line 137
    :cond_0
    iget-wide v2, v0, Loplus/content/res/OplusExtraConfiguration;->mMaterialColor:J

    .line 138
    .local v2, "color":J
    iget v4, v0, Loplus/content/res/OplusExtraConfiguration;->mUserId:I

    .line 139
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "data/oplus/uxres/uxcolor/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v5, "customBuilder":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 141
    .local v6, "wallpaperBuilder":Ljava/lang/StringBuilder;
    const-string v7, "coui_theme_color_wallpaper.xml"

    const-string v8, "ux_custom_color.xml"

    if-lez v4, :cond_1

    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :goto_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v7, "custom":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v9, "data/oplus/uxres/uxcolor/coui_theme_color_online.xml"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    .local v8, "online":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v9, "wallpaper":Ljava/io/File;
    const-wide/32 v10, 0x20000

    and-long v12, v2, v10

    cmp-long v10, v12, v10

    if-nez v10, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_2
    const-wide/32 v10, 0x100000

    and-long v12, v2, v10

    cmp-long v10, v12, v10

    if-nez v10, :cond_3

    .line 152
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    const-wide/32 v10, 0x40000

    and-long v12, v2, v10

    cmp-long v10, v12, v10

    if-nez v10, :cond_5

    .line 153
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 154
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 156
    :cond_5
    return v1
.end method


# virtual methods
.method public blacklist checkAssetUpdate()V
    .locals 4

    .line 160
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-static {v0}, Landroid/content/res/OplusBaseFile;->isNightMode(Landroid/content/res/IResourcesImplExt;)Z

    move-result v0

    .line 161
    .local v0, "mNightMode":Z
    invoke-direct {p0}, Landroid/content/res/OplusAccessibleResources;->isAssetEnable()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 169
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    invoke-static {v1, v3}, Landroid/content/res/OplusAccessibleFile;->getAssetFile(Ljava/lang/String;Landroid/content/res/IResourcesImplExt;)Landroid/content/res/OplusAccessibleFile;

    move-result-object v1

    iput-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    .line 170
    if-eqz v1, :cond_1

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    .line 172
    iput-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasDrawables:Z

    goto :goto_0

    .line 174
    :cond_1
    iput-boolean v2, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    .line 175
    iput-boolean v2, p0, Landroid/content/res/OplusAccessibleResources;->mHasDrawables:Z

    .line 177
    :goto_0
    return-void

    .line 162
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 163
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/res/OplusAccessibleFile;->clearCache(Ljava/util/zip/ZipFile;)V

    .line 165
    :cond_3
    iput-boolean v2, p0, Landroid/content/res/OplusAccessibleResources;->mHasDrawables:Z

    .line 166
    iput-boolean v2, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    .line 167
    return-void
.end method

.method public blacklist checkUpdate(Z)V
    .locals 0
    .param p1, "change"    # Z

    .line 77
    invoke-virtual {p0}, Landroid/content/res/OplusAccessibleResources;->checkAssetUpdate()V

    .line 78
    invoke-direct {p0, p1}, Landroid/content/res/OplusAccessibleResources;->checkColorUpdate(Z)V

    .line 79
    return-void
.end method

.method public blacklist getAccessibleChars(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .line 111
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v0, p1}, Landroid/content/res/OplusAccessibleFile;->getCharSequence(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getAccessibleInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "value":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    if-eqz v1, :cond_0

    .line 100
    invoke-direct {p0}, Landroid/content/res/OplusAccessibleResources;->checkMaterialValues()V

    .line 101
    iget-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mMaterialFile:Landroid/content/res/OplusMaterialFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusMaterialFile;->getInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 104
    invoke-direct {p0}, Landroid/content/res/OplusAccessibleResources;->checkAssetValues()V

    .line 105
    iget-object v1, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    invoke-virtual {v1, p1}, Landroid/content/res/OplusAccessibleFile;->getInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    :cond_1
    return-object v0
.end method

.method public blacklist getAccessibleStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;
    .locals 2
    .param p1, "index"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/content/res/OplusAccessibleResources;->mAccessible:Landroid/content/res/OplusAccessibleFile;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasDrawables:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2}, Landroid/content/res/OplusAccessibleFile;->getAssetInputStream(ILjava/lang/String;)Landroid/content/res/OplusThemeZipFile$ThemeFileInfo;

    move-result-object v0

    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist hasDrawables()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasDrawables:Z

    return v0
.end method

.method public blacklist hasMaterialValues()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    return v0
.end method

.method public blacklist hasValues()Z
    .locals 2

    .line 90
    iget-boolean v0, p0, Landroid/content/res/OplusAccessibleResources;->mHasValues:Z

    iget-boolean v1, p0, Landroid/content/res/OplusAccessibleResources;->mHasMaterialValues:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public blacklist setResources(Landroid/content/res/IResourcesImplExt;)V
    .locals 0
    .param p1, "mResources"    # Landroid/content/res/IResourcesImplExt;

    .line 82
    iput-object p1, p0, Landroid/content/res/OplusAccessibleResources;->mResources:Landroid/content/res/IResourcesImplExt;

    .line 83
    return-void
.end method
