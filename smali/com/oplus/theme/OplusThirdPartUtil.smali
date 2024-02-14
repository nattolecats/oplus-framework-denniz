.class public Lcom/oplus/theme/OplusThirdPartUtil;
.super Ljava/lang/Object;
.source "OplusThirdPartUtil.java"


# static fields
.field public static final whitelist CHARS:[C

.field private static final blacklist DIRS_DRAWABLE:[Ljava/lang/String;

.field private static final blacklist DIRS_DRAWABLE_XH:[Ljava/lang/String;

.field private static final blacklist DIRS_DRAWABLE_XXH:[Ljava/lang/String;

.field public static final whitelist LAUNCHER_PACKAGE:Ljava/lang/String; = "com.android.launcher"

.field private static final blacklist NUM:I = 0x3

.field public static final whitelist O:Ljava/lang/String;

.field private static final blacklist TAG:Ljava/lang/String; = "OplusThirdPartUtil"

.field private static final blacklist THIRD_FLAG:J = 0x1L

.field public static final whitelist ZIPICONS:Ljava/lang/String; = "icons"

.field public static final whitelist ZIPLAUNCHER:Ljava/lang/String;

.field public static whitelist mIsDefaultTheme:Z

.field public static whitelist sThemePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 44
    const/16 v0, 0x34

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->CHARS:[C

    .line 51
    const/4 v1, 0x4

    new-array v1, v1, [C

    const/16 v2, 0xe

    aget-char v2, v0, v2

    const/4 v3, 0x0

    aput-char v2, v1, v3

    const/16 v3, 0xf

    aget-char v0, v0, v3

    const/4 v3, 0x1

    aput-char v0, v1, v3

    const/4 v4, 0x2

    aput-char v0, v1, v4

    const/4 v0, 0x3

    aput-char v2, v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->O:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".launcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->ZIPLAUNCHER:Ljava/lang/String;

    .line 55
    const-string v0, "/data/theme/"

    sput-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 57
    sput-boolean v3, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    .line 61
    const-string v0, "res/drawable-hdpi/"

    const-string v1, "res/drawable-xhdpi/"

    const-string v2, "res/drawable-xxhdpi/"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/theme/OplusThirdPartUtil;->DIRS_DRAWABLE:[Ljava/lang/String;

    .line 65
    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/oplus/theme/OplusThirdPartUtil;->DIRS_DRAWABLE_XH:[Ljava/lang/String;

    .line 69
    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->DIRS_DRAWABLE_XXH:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist clearDir(Ljava/lang/String;)Z
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "themeDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 106
    .local v5, "str":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v6, "oldTheme":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v5    # "str":Ljava/lang/String;
    .end local v6    # "oldTheme":Ljava/io/File;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "themeDir":Ljava/io/File;
    :cond_1
    nop

    .line 115
    const/4 v0, 0x1

    return v0

    .line 111
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    return v0
.end method

.method public static whitelist getDefaultTheme()Z
    .locals 1

    .line 331
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/theme/OplusThirdPartUtil;->getDefaultTheme(I)Z

    move-result v0

    return v0
.end method

.method public static whitelist getDefaultTheme(I)Z
    .locals 7
    .param p0, "userId"    # I

    .line 351
    invoke-static {p0}, Lcom/oplus/theme/OplusThirdPartUtil;->getThemeKeyForUser(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 352
    .local v3, "themeFlag":J
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    .line 353
    const/4 v0, 0x1

    return v0

    .line 355
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getDrawable(ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;

    .line 213
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "nameString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForLauncher(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "zipPath"    # Ljava/lang/String;

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 246
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 247
    .local v2, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 249
    .local v3, "file":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 250
    invoke-static {p0, v3, p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableStream(Landroid/content/res/Resources;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 251
    if-eqz v2, :cond_0

    .line 252
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 253
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 259
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    nop

    .line 261
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v4

    .line 266
    :goto_0
    if-eqz v2, :cond_4

    .line 268
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    :goto_1
    goto :goto_5

    .line 269
    :catch_1
    move-exception v4

    goto :goto_1

    .line 259
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 261
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 264
    goto :goto_2

    .line 262
    :catch_2
    move-exception v5

    .line 266
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 268
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 271
    goto :goto_3

    .line 269
    :catch_3
    move-exception v5

    .line 273
    :cond_2
    :goto_3
    throw v4

    .line 255
    :catch_4
    move-exception v4

    .line 259
    if-eqz v3, :cond_3

    .line 261
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 264
    goto :goto_4

    .line 262
    :catch_5
    move-exception v4

    .line 266
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 268
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 275
    :cond_4
    :goto_5
    return-object v0
.end method

.method public static whitelist getDrawableByNameForLauncher(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 140
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 141
    .local v2, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 142
    .local v3, "file":Ljava/util/zip/ZipFile;
    invoke-static {v1}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "launcherName":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 145
    invoke-static {p0, v3, p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableStream(Landroid/content/res/Resources;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 146
    if-eqz v2, :cond_0

    .line 147
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 148
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, p0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v6

    .line 154
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    nop

    .line 156
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    goto :goto_0

    .line 157
    :catch_0
    move-exception v5

    .line 161
    :goto_0
    if-eqz v2, :cond_4

    .line 163
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 166
    :goto_1
    goto :goto_5

    .line 164
    :catch_1
    move-exception v5

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_1

    .line 156
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 159
    goto :goto_2

    .line 157
    :catch_2
    move-exception v6

    .line 161
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 163
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 166
    goto :goto_3

    .line 164
    :catch_3
    move-exception v6

    .line 168
    :cond_2
    :goto_3
    throw v5

    .line 150
    :catch_4
    move-exception v5

    .line 154
    if-eqz v3, :cond_3

    .line 156
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 159
    goto :goto_4

    .line 157
    :catch_5
    move-exception v5

    .line 161
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 163
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 170
    :cond_4
    :goto_5
    return-object v0
.end method

.method public static whitelist getDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 133
    invoke-static {p0, p1, p2}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForLauncher(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "zipPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget-object v1, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 177
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 178
    .local v2, "iStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 180
    .local v3, "file":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    .line 181
    invoke-static {p0, v3, p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableStream(Landroid/content/res/Resources;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    .line 182
    if-eqz v2, :cond_0

    .line 183
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 184
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, p0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v5

    .line 190
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    nop

    .line 192
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v4

    .line 197
    :goto_0
    if-eqz v2, :cond_4

    .line 199
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :goto_1
    goto :goto_5

    .line 200
    :catch_1
    move-exception v4

    goto :goto_1

    .line 190
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 192
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 195
    goto :goto_2

    .line 193
    :catch_2
    move-exception v5

    .line 197
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 199
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 202
    goto :goto_3

    .line 200
    :catch_3
    move-exception v5

    .line 204
    :cond_2
    :goto_3
    throw v4

    .line 186
    :catch_4
    move-exception v4

    .line 190
    if-eqz v3, :cond_3

    .line 192
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 195
    goto :goto_4

    .line 193
    :catch_5
    move-exception v4

    .line 197
    :cond_3
    :goto_4
    if-eqz v2, :cond_4

    .line 199
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 206
    :cond_4
    :goto_5
    return-object v0
.end method

.method public static whitelist getDrawableForUser(ILandroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "id"    # I
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "userId"    # I

    .line 119
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "nameString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {p1, v0, p2}, Lcom/oplus/theme/OplusThirdPartUtil;->getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getDrawableStream(Landroid/content/res/Resources;Ljava/util/zip/ZipFile;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "file"    # Ljava/util/zip/ZipFile;
    .param p2, "entryname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    sget-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->DIRS_DRAWABLE:[Ljava/lang/String;

    .line 281
    .local v0, "temdirs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 282
    .local v1, "dpi":F
    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .line 283
    sget-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->DIRS_DRAWABLE_XXH:[Ljava/lang/String;

    goto :goto_0

    .line 284
    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 285
    sget-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->DIRS_DRAWABLE_XH:[Ljava/lang/String;

    .line 287
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v3, 0x2

    if-gt v2, v3, :cond_3

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 289
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_2

    .line 290
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 291
    .local v4, "is":Ljava/io/InputStream;
    return-object v4

    .line 287
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public static whitelist getIconDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;

    .line 229
    const-string v0, "icons"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getIconDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 129
    const-string v0, "icons"

    invoke-static {p0, p1, v0, p2}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getLauncherDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForLauncher(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getLauncherDrawableByNameForUser(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "nameString"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 125
    invoke-static {p0, p1, p2}, Lcom/oplus/theme/OplusThirdPartUtil;->getDrawableByNameForLauncher(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getLauncherName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "com.android.launcher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    return-object v2

    .line 372
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/oplus/theme/OplusThirdPartUtil;->ZIPLAUNCHER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v2, v4

    :cond_1
    return-object v2
.end method

.method public static whitelist getThemeKeyForUser(I)Ljava/lang/String;
    .locals 3
    .param p0, "userId"    # I

    .line 359
    const-string v0, "persist.sys.themeflag"

    .line 360
    .local v0, "key":Ljava/lang/String;
    if-gtz p0, :cond_0

    .line 361
    return-object v0

    .line 363
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 364
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static whitelist getThemePathForUser(Landroid/content/res/Resources;JI)Ljava/lang/String;
    .locals 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "themeFlag"    # J
    .param p3, "userId"    # I

    .line 298
    const-string v0, ""

    .line 299
    .local v0, "themePath":Ljava/lang/String;
    const-wide/16 v1, 0x100

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v2

    move-object v1, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    const-string v2, "custom_theme_path_default_prop"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, v1, Loplus/content/res/OplusExtraConfiguration;->mThemePrefix:Ljava/lang/String;

    .line 312
    .end local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    .end local v2    # "path":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 302
    .restart local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    :cond_2
    :goto_1
    sget-object v0, Lcom/oplus/theme/OplusThemeUtil;->CUSTOM_THEME_PATH:Ljava/lang/String;

    .line 303
    return-object v0

    .line 312
    .end local v1    # "extraConfig":Loplus/content/res/OplusExtraConfiguration;
    :cond_3
    const-wide/16 v1, 0x1

    and-long/2addr v1, p1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 313
    if-gtz p3, :cond_4

    .line 314
    const-string v0, "/data/theme/"

    goto :goto_2

    .line 316
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/theme/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 319
    :cond_5
    invoke-static {}, Lcom/oplus/theme/OplusThemeUtil;->getDefaultThemePath()Ljava/lang/String;

    move-result-object v0

    .line 321
    :goto_2
    return-object v0
.end method

.method public static whitelist moveFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "themeFileName"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "destName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 87
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 88
    return v2

    .line 90
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 91
    .local v3, "stream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "out":Ljava/io/FileOutputStream;
    const v5, 0xfa000

    new-array v5, v5, [B

    .line 94
    .local v5, "buf":[B
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "count":I
    if-lez v6, :cond_1

    .line 95
    invoke-virtual {v4, v5, v2, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 98
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 99
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist setDefaultTheme()V
    .locals 1

    .line 326
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/theme/OplusThirdPartUtil;->setDefaultTheme(I)V

    .line 327
    return-void
.end method

.method public static whitelist setDefaultTheme(I)V
    .locals 0
    .param p0, "userId"    # I

    .line 338
    return-void
.end method

.method public static whitelist setDefaultTheme(Landroid/content/res/Resources;I)V
    .locals 7
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "userId"    # I

    .line 341
    invoke-static {p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getThemeKeyForUser(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 342
    .local v3, "themeFlag":J
    const-wide/16 v5, 0x1

    and-long/2addr v5, v3

    cmp-long v0, v5, v1

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    goto :goto_0

    .line 345
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/theme/OplusThirdPartUtil;->mIsDefaultTheme:Z

    .line 347
    :goto_0
    invoke-static {p0, v3, v4, p1}, Lcom/oplus/theme/OplusThirdPartUtil;->getThemePathForUser(Landroid/content/res/Resources;JI)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/theme/OplusThirdPartUtil;->sThemePath:Ljava/lang/String;

    .line 348
    return-void
.end method
