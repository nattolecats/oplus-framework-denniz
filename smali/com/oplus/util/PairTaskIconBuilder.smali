.class public Lcom/oplus/util/PairTaskIconBuilder;
.super Ljava/lang/Object;
.source "PairTaskIconBuilder.java"


# static fields
.field public static final whitelist ART_PLUS_BIT_LENGTH:I = 0x4

.field public static final whitelist DARKMODE_ICON_BIT_LENGTH:I = 0x1

.field public static final whitelist DARKMODE_ICON_TRANSLATE_BIT_LENGTH:I = 0x3d

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist FOREGROUND_SIZE_BIT_LENGTH:I = 0x10

.field public static final whitelist FOREIGN_BIT_LENGTH:I = 0x4

.field public static final whitelist ICON_RADIUS_BIT_LENGTH:I = 0xc

.field public static final whitelist ICON_RADIUS_PX_BIT_LENGTH:I = 0x1

.field public static final whitelist ICON_SHAPE_BIT_LENGTH:I = 0x4

.field public static final whitelist ICON_SIZE_BIT_LENGTH:I = 0x10

.field private static final blacklist ICON_WIDTH_DP:I = 0x6c

.field private static final blacklist TAG:Ljava/lang/String; = "PairTaskIconBuilder"

.field public static final whitelist THEME_BIT_LENGTH:I = 0x4

.field public static final whitelist THEME_CUSTOM:I = 0x3

.field public static final whitelist THEME_MATERIAL:I = 0x1

.field public static final whitelist THEME_PEBBLE:I = 0x4

.field public static final whitelist THEME_RECTANGLE:I = 0x2


# instance fields
.field private blacklist mAdaptiveIconDrawableExt:Ljava/lang/reflect/Field;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mIconHeight:I

.field private blacklist mIconWidth:I

.field private blacklist mIsArtPlusOn:Z

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mUxIconConfig:Ljava/lang/Long;

.field private blacklist mUxTheme:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mTitle:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 79
    iput-object p1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 81
    .local v0, "density":F
    const/high16 v1, 0x42d80000    # 108.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    .line 82
    iput v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/util/PairTaskIconBuilder;->getUxIconConfig(Landroid/content/res/OplusBaseConfiguration;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxIconConfig:Ljava/lang/Long;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x4

    shr-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxIconConfig:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxTheme:I

    .line 85
    iget-object v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxIconConfig:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    shr-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxIconConfig:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIsArtPlusOn:Z

    .line 86
    return-void
.end method

.method private blacklist assembleForegroundAndBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "foreground"    # Landroid/graphics/Bitmap;
    .param p2, "background"    # Landroid/graphics/Bitmap;
    .param p3, "scaleForeground"    # Z

    .line 260
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v2, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 266
    .local v1, "assembledBmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 268
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 270
    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    int-to-float v5, v5

    iget v6, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2, p2, v0, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 272
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    .local v0, "matrix":Landroid/graphics/Matrix;
    if-eqz p3, :cond_1

    .line 274
    const v4, 0x3f333333    # 0.7f

    .line 275
    .local v4, "scale":F
    iget v5, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const v7, 0x3f333333    # 0.7f

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 277
    .end local v4    # "scale":F
    :cond_1
    invoke-virtual {v2, p1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 279
    return-object v1

    .line 261
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "assembledBmp":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    const-string v1, "PairTaskIconBuilder"

    const-string v2, " assembleForegroundAndBackground; Some parameters are null, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-object v0
.end method

.method private blacklist drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 283
    if-nez p1, :cond_0

    .line 284
    const-string v0, "PairTaskIconBuilder"

    const-string v1, " drawableToBitmap; Some parameters are null, return!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x0

    return-object v0

    .line 287
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 288
    .local v0, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v2, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 289
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 290
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget v3, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v4, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 291
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 293
    return-object v1
.end method

.method private static blacklist findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 107
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 111
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getAdaptiveIconDrawableExt(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 339
    iget-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mAdaptiveIconDrawableExt:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 341
    :try_start_0
    const-string v0, "android.graphics.drawable.AdaptiveIconDrawable"

    invoke-static {v0}, Lcom/oplus/util/PairTaskIconBuilder;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 342
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 343
    const-string v1, "mIconDrawableExt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mAdaptiveIconDrawableExt:Ljava/lang/reflect/Field;

    .line 344
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 350
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mAdaptiveIconDrawableExt:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 351
    return-object v1

    .line 354
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 355
    :catch_1
    move-exception v0

    .line 357
    return-object v1
.end method

.method private blacklist getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 330
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 331
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 332
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 335
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getApplicationName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 314
    const/16 v0, 0x3e7

    if-ne p2, v0, :cond_0

    .line 315
    :try_start_0
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 319
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 320
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 321
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 324
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist getDefaultBackground()Landroid/graphics/Bitmap;
    .locals 3

    .line 228
    iget v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "defaultBackground":Landroid/graphics/Bitmap;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 231
    return-object v0
.end method

.method private static blacklist getUxIconConfig(Landroid/content/res/OplusBaseConfiguration;)J
    .locals 5
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 89
    const-wide/16 v0, -0x1

    .line 91
    .local v0, "result":J
    :try_start_0
    invoke-static {p0}, Lcom/oplus/util/PairTaskIconBuilder;->typeCasting(Landroid/content/res/OplusBaseConfiguration;)Landroid/content/res/OplusBaseConfiguration;

    move-result-object v2

    .line 92
    .local v2, "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    if-eqz v2, :cond_0

    .line 93
    iget-object v3, v2, Landroid/content/res/OplusBaseConfiguration;->mOplusExtraConfiguration:Loplus/content/res/OplusExtraConfiguration;

    iget-wide v3, v3, Loplus/content/res/OplusExtraConfiguration;->mUxIconConfig:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    .line 97
    .end local v2    # "baseConfiguration":Landroid/content/res/OplusBaseConfiguration;
    :cond_0
    goto :goto_0

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PairTaskIconBuilder"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v0
.end method

.method private blacklist scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .line 297
    if-nez p1, :cond_0

    .line 298
    const/4 v0, 0x0

    return-object v0

    .line 300
    :cond_0
    iget v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 301
    .local v0, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 302
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 303
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 305
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 306
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget v4, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, p2, p2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 307
    invoke-virtual {v1, p1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 309
    return-object v0
.end method

.method private blacklist toRoundBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name"    # Ljava/lang/String;

    .line 162
    const-string v0, "PairTaskIconBuilder"

    if-nez p1, :cond_0

    .line 163
    const-string v1, " toRoundBitmap; Some parameters are null, return!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 168
    .local v1, "roundBitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxTheme:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 170
    .local v2, "isMaterialTheme":Z
    :goto_0
    instance-of v4, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_9

    .line 171
    const/high16 v4, 0x3f800000    # 1.0f

    .line 173
    .local v4, "scaleF":F
    const/high16 v5, 0x3f800000    # 1.0f

    :try_start_0
    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, v6}, Lcom/oplus/util/PairTaskIconBuilder;->getAdaptiveIconDrawableExt(Landroid/graphics/drawable/AdaptiveIconDrawable;)Landroid/graphics/drawable/IAdaptiveIconDrawableExt;

    move-result-object v6

    .line 174
    .local v6, "adaptiveIconDrawableExt":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    if-eqz v6, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/graphics/drawable/IAdaptiveIconDrawableExt;->getForegroundScalePercent()F

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v7

    .line 177
    :cond_2
    const/high16 v7, 0x3f800000    # 1.0f

    .line 178
    .local v7, "threshold":F
    cmpl-float v8, v4, v5

    if-lez v8, :cond_3

    .line 179
    const/high16 v8, 0x3fc00000    # 1.5f

    .line 180
    .local v8, "override":F
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 184
    .end local v6    # "adaptiveIconDrawableExt":Landroid/graphics/drawable/IAdaptiveIconDrawableExt;
    .end local v7    # "threshold":F
    .end local v8    # "override":F
    :cond_3
    goto :goto_1

    .line 182
    :catch_0
    move-exception v6

    .line 183
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " toRoundBitmap; Current IconConfig: theme="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/oplus/util/PairTaskIconBuilder;->mUxTheme:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isArtPlusOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIsArtPlusOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scaleF="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oplus/util/PairTaskIconBuilder;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 190
    .local v6, "foreground":Landroid/graphics/Bitmap;
    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oplus/util/PairTaskIconBuilder;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 192
    .local v7, "background":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    if-nez v7, :cond_4

    .line 193
    const-string v3, "IconDrawable\'s foreground and background are null."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v1

    .line 198
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    if-nez v6, :cond_5

    .line 199
    nop

    .line 200
    invoke-direct {p0}, Lcom/oplus/util/PairTaskIconBuilder;->getDefaultBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    invoke-direct {p0, v7, v0, v3}, Lcom/oplus/util/PairTaskIconBuilder;->assembleForegroundAndBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .end local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    .local v0, "roundBitmap":Landroid/graphics/Bitmap;
    return-object v0

    .line 204
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_5
    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    .line 205
    iget-boolean v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIsArtPlusOn:Z

    if-nez v0, :cond_6

    .line 206
    nop

    .line 207
    invoke-direct {p0, v6, v4}, Lcom/oplus/util/PairTaskIconBuilder;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    invoke-direct {p0, v7, v5}, Lcom/oplus/util/PairTaskIconBuilder;->scaleBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-boolean v5, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIsArtPlusOn:Z

    .line 206
    invoke-direct {p0, v0, v3, v5}, Lcom/oplus/util/PairTaskIconBuilder;->assembleForegroundAndBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 210
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_6
    nop

    .line 211
    invoke-direct {p0, v7}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-boolean v3, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIsArtPlusOn:Z

    .line 210
    invoke-direct {p0, v6, v0, v3}, Lcom/oplus/util/PairTaskIconBuilder;->assembleForegroundAndBackground(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 213
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_7
    if-eqz v6, :cond_8

    .line 214
    invoke-direct {p0, v6}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 216
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_8
    invoke-direct {p0, v7}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    .end local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "scaleF":F
    .end local v6    # "foreground":Landroid/graphics/Bitmap;
    .end local v7    # "background":Landroid/graphics/Bitmap;
    .restart local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    :goto_2
    goto :goto_3

    .line 220
    .end local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    :cond_9
    const-string v3, " toRoundBitmap; Drawable is not adaptive, return raw drawable!"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/oplus/util/PairTaskIconBuilder;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .end local v1    # "roundBitmap":Landroid/graphics/Bitmap;
    .restart local v0    # "roundBitmap":Landroid/graphics/Bitmap;
    :goto_3
    return-object v0
.end method

.method private blacklist toRoundBitmapInternal(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 235
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 236
    const-string v1, "PairTaskIconBuilder"

    const-string v2, " toRoundBitmapInternal; Some parameters are null, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object v0

    .line 239
    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "r":I
    iget v2, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v3, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    if-le v2, v3, :cond_1

    .line 242
    iget v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    goto :goto_0

    .line 244
    :cond_1
    iget v1, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    .line 247
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 248
    .local v2, "backgroundBmp":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 249
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 250
    .local v4, "paint":Landroid/graphics/Paint;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 251
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v1

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    .local v5, "rect":Landroid/graphics/RectF;
    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 253
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 254
    invoke-virtual {v3, p1, v0, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 255
    return-object v2
.end method

.method private static blacklist typeCasting(Landroid/content/res/OplusBaseConfiguration;)Landroid/content/res/OplusBaseConfiguration;
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 102
    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    return-object v0
.end method


# virtual methods
.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oplus/util/PairTaskIconBuilder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist makeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "drawable1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "pkgName1"    # Ljava/lang/String;
    .param p3, "drawable2"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pkgName2"    # Ljava/lang/String;

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-nez v1, :cond_0

    move-object/from16 v5, p4

    goto :goto_0

    .line 141
    :cond_0
    const/4 v3, 0x0

    .line 143
    .local v3, "createBitmap":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p2}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 144
    .local v4, "roundBitmap1":Landroid/graphics/Bitmap;
    move-object/from16 v5, p4

    invoke-direct {v0, v1, v5}, Lcom/oplus/util/PairTaskIconBuilder;->toRoundBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 146
    .local v6, "roundBitmap2":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 147
    iget v7, v0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    iget v8, v0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 148
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 150
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    new-instance v9, Landroid/graphics/RectF;

    iget v10, v0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float/2addr v10, v11

    iget v12, v0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    int-to-float v12, v12

    mul-float/2addr v12, v11

    const/4 v11, 0x0

    invoke-direct {v9, v11, v11, v10, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 153
    .local v9, "rect1":Landroid/graphics/RectF;
    invoke-virtual {v7, v4, v2, v9, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 154
    new-instance v10, Landroid/graphics/RectF;

    iget v11, v0, Lcom/oplus/util/PairTaskIconBuilder;->mIconWidth:I

    int-to-float v12, v11

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float/2addr v12, v13

    iget v14, v0, Lcom/oplus/util/PairTaskIconBuilder;->mIconHeight:I

    int-to-float v15, v14

    mul-float/2addr v15, v13

    int-to-float v11, v11

    int-to-float v13, v14

    invoke-direct {v10, v12, v15, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 155
    .local v10, "rect2":Landroid/graphics/RectF;
    invoke-virtual {v7, v6, v2, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "paint":Landroid/graphics/Paint;
    .end local v9    # "rect1":Landroid/graphics/RectF;
    .end local v10    # "rect2":Landroid/graphics/RectF;
    :cond_1
    return-object v3

    .line 136
    .end local v3    # "createBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "roundBitmap1":Landroid/graphics/Bitmap;
    .end local v6    # "roundBitmap2":Landroid/graphics/Bitmap;
    :cond_2
    move-object/from16 v5, p4

    .line 137
    :goto_0
    const-string v3, "PairTaskIconBuilder"

    const-string v4, " makeIcon; Some parameters are null, return!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object v2
.end method

.method public whitelist updateTaskIcon(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 5
    .param p1, "pkgName1"    # Ljava/lang/String;
    .param p2, "userId1"    # I
    .param p3, "pkgName2"    # Ljava/lang/String;
    .param p4, "userId2"    # I

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/oplus/util/PairTaskIconBuilder;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "applicationName1":Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/oplus/util/PairTaskIconBuilder;->getApplicationName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "applicationName2":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/oplus/util/PairTaskIconBuilder;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, p3}, Lcom/oplus/util/PairTaskIconBuilder;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3, p3}, Lcom/oplus/util/PairTaskIconBuilder;->makeIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    .local v2, "bmp":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 119
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/util/PairTaskIconBuilder;->mIcon:Landroid/graphics/drawable/Icon;

    .line 122
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/oplus/util/PairTaskIconBuilder;->mTitle:Ljava/lang/String;

    .line 125
    :cond_1
    return-void
.end method
