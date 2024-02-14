.class public Lcom/oplus/theme/OplusAppIconInfo;
.super Ljava/lang/Object;
.source "OplusAppIconInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/theme/OplusAppIconInfo$IconXmlHandler;
    }
.end annotation


# static fields
.field public static final whitelist ALL_APPS:Ljava/lang/String; = "allApps.xml"

.field private static blacklist mAllIconNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mAllPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist mCurrentTag:Ljava/lang/String;

.field private static blacklist sDiffPackage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sParsered:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmAllIconNames()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmAllPackageNames()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmCurrentTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mCurrentTag:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmCurrentTag(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/oplus/theme/OplusAppIconInfo;->mCurrentTag:Ljava/lang/String;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 10

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mCurrentTag:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/theme/OplusAppIconInfo;->sDiffPackage:Ljava/util/Map;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z

    .line 55
    nop

    .line 58
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0xc07001f    # 1.0400058E-31f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "appIconsInfo":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 61
    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 62
    .local v5, "iconInfo":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    const-string v6, "/"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "iconPkgArray":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 66
    sget-object v7, Lcom/oplus/theme/OplusAppIconInfo;->sDiffPackage:Ljava/util/Map;

    const/4 v8, 0x1

    aget-object v8, v6, v8

    aget-object v9, v6, v0

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v5    # "iconInfo":Ljava/lang/String;
    .end local v6    # "iconPkgArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->sDiffPackage:Ljava/util/Map;

    const-string v3, "com.android.stk"

    const-string v4, "ic_launcher_stk.png"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->sDiffPackage:Ljava/util/Map;

    const-string v3, "com.finshell.wallet"

    const-string v4, "ic_launcher_wallet.png"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "appIconsInfo":[Ljava/lang/String;
    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkDiffPackages()V
    .locals 8

    .line 233
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->sDiffPackage:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 234
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 237
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 238
    goto :goto_0

    .line 240
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 241
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 242
    .local v4, "value":Ljava/lang/String;
    sget-object v5, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 243
    .local v5, "packIndex":I
    sget-object v6, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 244
    .local v6, "iconIndex":I
    if-ltz v6, :cond_1

    if-gez v5, :cond_2

    .line 245
    :cond_1
    sget-object v7, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v7, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "packIndex":I
    .end local v6    # "iconIndex":I
    :cond_2
    goto :goto_0

    .line 249
    :cond_3
    return-void
.end method

.method public static whitelist getAppsNumbers()I
    .locals 1

    .line 206
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static whitelist getIconName(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .line 222
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    .line 223
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 225
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static whitelist getPackageName(I)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # I

    .line 214
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist indexOfIconName(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist indexOfPackageName(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 210
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static whitelist isThirdPart(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 192
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist isThirdPartbyIconName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "iconName"    # Ljava/lang/String;

    .line 199
    sget-object v0, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static whitelist parseIconXml()Z
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public static declared-synchronized whitelist parseIconXmlForUser(I)Z
    .locals 11
    .param p0, "userId"    # I

    const-class v0, Lcom/oplus/theme/OplusAppIconInfo;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-boolean v1, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 120
    monitor-exit v0

    return v2

    .line 122
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/theme/OplusThemeUtil;->getDefaultThemePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "allApps.xml"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "defaultXml":Ljava/lang/String;
    const/4 v3, 0x0

    .line 124
    .local v3, "param":Ljava/util/zip/ZipFile;
    const/4 v4, 0x0

    .line 125
    .local v4, "input":Ljava/io/InputStream;
    sget-object v5, Lcom/oplus/theme/OplusAppIconInfo;->mAllIconNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 126
    sget-object v5, Lcom/oplus/theme/OplusAppIconInfo;->mAllPackageNames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 127
    sget-boolean v5, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x0

    if-nez v5, :cond_b

    .line 129
    const/4 v5, 0x0

    .line 130
    .local v5, "checkDiff":Z
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "icons"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    .local v7, "thirdIconPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 133
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v9

    .line 134
    const-string v9, "allApps.xml"

    invoke-virtual {v3, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 135
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    if-nez v9, :cond_1

    .line 136
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v10

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v3, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v10

    move-object v4, v10

    .line 139
    const/4 v5, 0x1

    .line 141
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    :goto_0
    goto :goto_1

    .line 142
    :cond_2
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v9

    .line 144
    :goto_1
    invoke-static {v4}, Lcom/oplus/theme/OplusAppIconInfo;->parseXml(Ljava/io/InputStream;)V

    .line 145
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 146
    if-eqz v3, :cond_3

    .line 147
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 149
    :cond_3
    if-eqz v5, :cond_4

    invoke-static {}, Lcom/oplus/theme/OplusAppIconInfo;->checkDiffPackages()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    :cond_4
    nop

    .line 157
    if-eqz v4, :cond_5

    .line 158
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 164
    :catch_0
    move-exception v6

    goto :goto_3

    .line 160
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 161
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 163
    :cond_6
    sput-boolean v2, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    goto :goto_4

    .line 165
    .local v6, "ex":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string v9, "parseIconXml"

    const-string v10, "input param error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 150
    .end local v6    # "ex":Ljava/lang/Exception;
    :goto_4
    monitor-exit v0

    return v2

    .line 156
    .end local v5    # "checkDiff":Z
    .end local v7    # "thirdIconPath":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    :catchall_0
    move-exception v5

    goto :goto_8

    .line 151
    :catch_1
    move-exception v5

    .line 152
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "parseIconXml"

    const-string v8, "parseIconXml error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    nop

    .line 157
    if-eqz v4, :cond_7

    .line 158
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_5

    .line 164
    :catch_2
    move-exception v2

    goto :goto_6

    .line 160
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 161
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 163
    :cond_8
    sput-boolean v2, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 166
    goto :goto_7

    .line 165
    .local v2, "ex":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    const-string v7, "parseIconXml"

    const-string v8, "input param error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 154
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_7
    monitor-exit v0

    return v6

    .line 157
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_8
    if-eqz v4, :cond_9

    .line 158
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_9

    .line 164
    :catch_3
    move-exception v2

    goto :goto_a

    .line 160
    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    .line 161
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 163
    :cond_a
    sput-boolean v2, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 166
    goto :goto_b

    .line 165
    .restart local v2    # "ex":Ljava/lang/Exception;
    :goto_a
    :try_start_9
    const-string v6, "parseIconXml"

    const-string v7, "input param error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_b
    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 170
    :cond_b
    :try_start_a
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 171
    invoke-static {v4}, Lcom/oplus/theme/OplusAppIconInfo;->parseXml(Ljava/io/InputStream;)V

    .line 172
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 173
    nop

    .line 180
    nop

    .line 181
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 183
    sput-boolean v2, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 186
    goto :goto_c

    .line 184
    :catch_4
    move-exception v5

    .line 185
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_c
    const-string v6, "parseIconXml"

    const-string v7, "input error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 173
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_c
    monitor-exit v0

    return v2

    .line 179
    :catchall_1
    move-exception v5

    goto :goto_e

    .line 174
    :catch_5
    move-exception v5

    .line 175
    .restart local v5    # "ex":Ljava/lang/Exception;
    :try_start_d
    const-string v7, "parseIconXml"

    const-string v8, "parseIconXml error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 177
    nop

    .line 180
    if-eqz v4, :cond_c

    .line 181
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_c
    sput-boolean v2, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 186
    goto :goto_d

    .line 184
    :catch_6
    move-exception v2

    .line 185
    .restart local v2    # "ex":Ljava/lang/Exception;
    :try_start_f
    const-string v7, "parseIconXml"

    const-string v8, "input error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 177
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_d
    monitor-exit v0

    return v6

    .line 180
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_e
    if-eqz v4, :cond_d

    .line 181
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 183
    :cond_d
    sput-boolean v2, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 186
    goto :goto_f

    .line 184
    :catch_7
    move-exception v2

    .line 185
    .restart local v2    # "ex":Ljava/lang/Exception;
    :try_start_11
    const-string v6, "parseIconXml"

    const-string v7, "input error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_f
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 118
    .end local v1    # "defaultXml":Ljava/lang/String;
    .end local v3    # "param":Ljava/util/zip/ZipFile;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local p0    # "userId":I
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static whitelist parseXml(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 106
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 107
    .local v1, "saxParser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/oplus/theme/OplusAppIconInfo$IconXmlHandler;

    invoke-direct {v2}, Lcom/oplus/theme/OplusAppIconInfo$IconXmlHandler;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 108
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 109
    return-void
.end method

.method public static declared-synchronized whitelist reset()V
    .locals 2

    const-class v0, Lcom/oplus/theme/OplusAppIconInfo;

    monitor-enter v0

    .line 229
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/oplus/theme/OplusAppIconInfo;->sParsered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit v0

    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
