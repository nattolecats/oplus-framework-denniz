.class public Landroid/app/OplusUxIconConstants$IconLoader;
.super Ljava/lang/Object;
.source "OplusUxIconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/OplusUxIconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconLoader"
.end annotation


# static fields
.field public static final whitelist BASE_PRODUCT_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final whitelist BASE_SYSTEM_DEFAULT_THEME_FILE_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field public static final whitelist BASE_UX_ICONS_FILE_PATH:Ljava/lang/String; = "/data/oplus/uxicons/"

.field public static final whitelist COM_ANDROID_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field public static final whitelist COM_HEYTAP_MATKET:Ljava/lang/String; = "com.heytap.market"

.field public static final whitelist DEFAULT_BACKGROUND_COLOR:Ljava/lang/String; = "#FFFBFBFB"

.field public static final whitelist DIALER_PREFIX:Ljava/lang/String; = "dialer_"

.field public static final whitelist FILE_SEPARATOR:Ljava/lang/String; = "/"

.field public static final whitelist ICON_SIZE_THRESHOLD:I = 0x25

.field public static final whitelist MATERIAL_FOREGROUND_SCALE:F = 1.25f

.field public static final whitelist MY_CARRIER_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final whitelist MY_CARRIER_ROOT_PATH:Ljava/lang/String;

.field public static final whitelist MY_COUNTRY_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final whitelist MY_COUNTRY_ROOT_PATH:Ljava/lang/String;

.field public static final whitelist MY_PRODUCT_ROOT_PATH:Ljava/lang/String;

.field public static final whitelist MY_STOCK_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

.field public static final whitelist MY_STOCK_ROOT_PATH:Ljava/lang/String;

.field public static final whitelist PIXEL_ALPHA_THRESHOLD:I = 0xdc

.field public static final whitelist PIXEL_ROUNDING_UP:F = 0.5f

.field public static final whitelist PIXEL_SAMPLE:I = 0x4

.field public static final whitelist PIXEL_THRESHOLD:I = 0x6

.field public static final whitelist PNG_REG:Ljava/lang/String; = ".png"

.field public static final whitelist TRANSPARENT_ICON_FG_SIZE_DP:I = 0x26


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/OplusUxIconConstants$IconLoader;->getMyProductDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/theme/default/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->BASE_PRODUCT_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_PRODUCT_ROOT_PATH:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyRegionDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_COUNTRY_ROOT_PATH:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyCarrierDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_CARRIER_ROOT_PATH:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/OplusBaseEnvironment;->getMyStockDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_STOCK_ROOT_PATH:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/OplusUxIconConstants$IconLoader;->getMyCountryDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/media/theme/uxicons/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_COUNTRY_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/OplusUxIconConstants$IconLoader;->getMyCarrierDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_CARRIER_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/OplusUxIconConstants$IconLoader;->getMyStockDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_STOCK_DEFAULT_THEME_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getDensityName(I)Ljava/lang/String;
    .locals 1
    .param p0, "density"    # I

    .line 132
    const/16 v0, 0x1e0

    if-le p0, v0, :cond_0

    .line 133
    const-string v0, "xxxhdpi"

    .local v0, "name":Ljava/lang/String;
    goto :goto_0

    .line 134
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x140

    if-le p0, v0, :cond_1

    .line 135
    const-string v0, "xxhdpi"

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 137
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string v0, "xhdpi"

    .line 139
    .restart local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method static blacklist getMyCarrierDirectory()Ljava/lang/String;
    .locals 4

    .line 99
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyCarrierDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "product":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 103
    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 107
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "product":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_CARRIER_ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getMyCountryDirectory()Ljava/lang/String;
    .locals 4

    .line 79
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyCountryDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 81
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    .local v1, "product":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 83
    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 88
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "product":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_COUNTRY_ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getMyProductDirectory()Ljava/lang/String;
    .locals 4

    .line 61
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyProductDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 62
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 64
    .local v1, "product":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 65
    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 69
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "product":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_PRODUCT_ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static blacklist getMyStockDirectory()Ljava/lang/String;
    .locals 4

    .line 118
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "getMyStockDirectory"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 119
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 120
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "product":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 122
    move-object v2, v1

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 126
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "product":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Landroid/app/OplusUxIconConstants$IconLoader;->MY_STOCK_ROOT_PATH:Ljava/lang/String;

    return-object v0
.end method
