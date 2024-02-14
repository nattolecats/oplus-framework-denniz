.class public Landroid/view/OplusBurmeseZgFlagHooksImpl;
.super Ljava/lang/Object;
.source "OplusBurmeseZgFlagHooksImpl.java"

# interfaces
.implements Landroid/view/IOplusBurmeseZgHooks;


# static fields
.field private static final blacklist BURMESE_FONT_LINK_ON_DATA:Ljava/lang/String; = "/data/format_unclear/font/OplusOSUI-Myanmar.ttf"

.field private static final blacklist CURRENT_FONT_BURMESE:Ljava/lang/String; = "current_typeface_burmese"

.field private static final blacklist CURRENT_FONT_BURMESE_OLD:Ljava/lang/String; = "current_typeface"

.field private static final blacklist FLIP_FONT_FLAG_FOR_BURMESE_UNICODE:I = 0x2713

.field private static final blacklist FLIP_FONT_FLAG_FOR_BURMESE_ZG:I = 0x2712

.field private static final blacklist SYSTEM_BURMESE_UNICODE_REAL_FONT_FILE:Ljava/lang/String; = "/system/fonts/OplusOSUI-XThin.ttf"

.field private static final blacklist SYSTEM_BURMESE_ZG_REAL_FONT_FILE:Ljava/lang/String; = "/system/fonts/MyanmarZg.ttf"

.field private static final blacklist SYSTEM_DEFAULT_FONT:Ljava/lang/String; = "system.default.font"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusZGSupport"


# instance fields
.field private blacklist mIsZgFlagInited:Z

.field private blacklist mIsZgFlagOn:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist flipBurmeseEncoding(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 81
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-direct {p0, p1, p2}, Landroid/view/OplusBurmeseZgFlagHooksImpl;->isCurrentUseZgEncoding(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/system/fonts/MyanmarZg.ttf"

    goto :goto_0

    :cond_0
    const-string v1, "/system/fonts/OplusOSUI-XThin.ttf"

    :goto_0
    const-string v2, "/data/format_unclear/font/OplusOSUI-Myanmar.ttf"

    invoke-direct {p0, v2, v1}, Landroid/view/OplusBurmeseZgFlagHooksImpl;->relinkFontFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private blacklist isCurrentUseZgEncoding(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Landroid/content/res/OplusBaseConfiguration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    const-string v3, "ZG"

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/OplusBaseConfiguration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/res/OplusBaseConfiguration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    return v1

    .line 105
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/OplusBaseConfiguration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 107
    .local v2, "defaultLocale":Ljava/util/Locale;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    return v1

    .line 114
    .end local v2    # "defaultLocale":Ljava/util/Locale;
    :cond_1
    if-eqz p1, :cond_4

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_typeface_burmese"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "currentFontStr":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_typeface"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "currentOldFontStr":Ljava/lang/String;
    const-string v4, "/system/fonts/MyanmarZg.ttf"

    if-eqz v2, :cond_3

    const-string v5, ""

    if-ne v2, v5, :cond_2

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 125
    return v1

    .line 119
    :cond_3
    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    return v1

    .line 129
    .end local v2    # "currentFontStr":Ljava/lang/String;
    .end local v3    # "currentOldFontStr":Ljava/lang/String;
    :cond_4
    return v0
.end method

.method private blacklist relinkFontFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dataLink"    # Ljava/lang/String;
    .param p2, "targetFont"    # Ljava/lang/String;

    .line 86
    const-string v0, "OplusZGSupport"

    :try_start_0
    invoke-static {p1}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "burmeseFont":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 89
    invoke-static {p2, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 94
    .end local v1    # "burmeseFont":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update selinux policy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELinux policy update malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    nop

    .line 97
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public whitelist getZgFlag()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/oplus/util/OplusFontUtils;->getNeedReplaceAllTypefaceApp()Z

    move-result v0

    return v0
.end method

.method public whitelist initBurmeseZgFlag(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    iget-boolean v0, p0, Landroid/view/OplusBurmeseZgFlagHooksImpl;->mIsZgFlagInited:Z

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/OplusBurmeseZgFlagHooksImpl;->isCurrentUseZgEncoding(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusBurmeseZgFlagHooksImpl;->mIsZgFlagOn:Z

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusBurmeseZgFlagHooksImpl;->mIsZgFlagInited:Z

    .line 55
    :cond_0
    iget-boolean v0, p0, Landroid/view/OplusBurmeseZgFlagHooksImpl;->mIsZgFlagOn:Z

    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->setNeedReplaceAllTypefaceApp(Z)V

    .line 56
    return-void
.end method

.method public whitelist updateBurmeseEncodingForUser(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "userId"    # I

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/OplusBurmeseZgFlagHooksImpl;->flipBurmeseEncoding(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)Z

    goto :goto_0

    .line 75
    :cond_0
    const-string v0, "OplusZGSupport"

    const-string v1, "updateBurmeseEncodingForUser : WARNING context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void
.end method

.method public whitelist updateBurmeseZgFlag(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/OplusBurmeseZgFlagHooksImpl;->isCurrentUseZgEncoding(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusBurmeseZgFlagHooksImpl;->mIsZgFlagOn:Z

    .line 62
    invoke-static {v0}, Lcom/oplus/util/OplusFontUtils;->setNeedReplaceAllTypefaceApp(Z)V

    .line 63
    return-void
.end method
