.class public Lcom/oplus/util/OplusContextUtil;
.super Ljava/lang/Object;
.source "OplusContextUtil.java"


# static fields
.field private static final blacklist METADATA_STYLE_VALUE:Ljava/lang/String; = "true"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusContextUtil"

.field private static blacklist sIsOplusStyleActivity:Z

.field private static blacklist sIsOplusStyleApplication:Z

.field private static blacklist sIsOplusStyleApplicationAssigned:Z

.field private static blacklist sLastActivityHash:I


# instance fields
.field private final blacklist mIsOplusOSStyle:Z

.field private final blacklist mIsOplusStyle:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/util/OplusContextUtil;->mIsOplusStyle:Z

    .line 54
    invoke-static {p1, v0}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/util/OplusContextUtil;->mIsOplusOSStyle:Z

    .line 55
    return-void
.end method

.method public static whitelist getActivityContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 220
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_2

    .line 221
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 222
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 224
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    .line 225
    .local v0, "wrapper":Landroid/content/ContextWrapper;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 226
    .local v1, "base":Landroid/content/Context;
    if-ne v1, p0, :cond_1

    .line 227
    goto :goto_1

    .line 229
    :cond_1
    move-object p0, v1

    .line 230
    .end local v0    # "wrapper":Landroid/content/ContextWrapper;
    .end local v1    # "base":Landroid/content/Context;
    goto :goto_0

    .line 231
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getActivityContextName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 235
    invoke-static {p0}, Lcom/oplus/util/OplusContextUtil;->getActivityContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 236
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 237
    const/4 v1, 0x0

    return-object v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getAttrColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 249
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 250
    .local v0, "colorAttr":[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 251
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 252
    .local v1, "color":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 253
    return v1
.end method

.method public static whitelist getOplusThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget-object v1, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/oplus/theme/IOplusThemeStyle;

    const v2, 0xc030002

    invoke-interface {v1, v2}, Lcom/oplus/theme/IOplusThemeStyle;->getSystemThemeStyle(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method

.method public static whitelist getResId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 93
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 94
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 95
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static whitelist getWindowStyle(Landroid/content/Context;)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 216
    sget-object v0, Landroid/R$styleable;->Window:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isOplusAlertDialogBuilderStyle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "isOplusAlertDialogBuilderStyle":Z
    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/oplus/internal/R$styleable;->OplusTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 82
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 83
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v0
.end method

.method public static whitelist isOplusOSStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 212
    invoke-static {p0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyle(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/oplus/util/OplusContextUtil;->isOplusOSStyle(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static whitelist isOplusOSStyle(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isOplusStyle"    # Z

    .line 110
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 111
    return v0

    .line 114
    :cond_0
    if-nez p0, :cond_1

    .line 115
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_1
    const/4 v1, 0x0

    .line 119
    .local v1, "isOplusOSStyle":Z
    invoke-static {p0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyleInApplication(Landroid/content/Context;)Z

    move-result v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    return v0

    .line 128
    :cond_2
    :goto_0
    :try_start_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_5

    .line 129
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 130
    goto :goto_1

    .line 133
    :cond_3
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v0, "ctx":Landroid/content/Context;
    if-ne p0, v0, :cond_4

    .line 135
    goto :goto_1

    .line 137
    :cond_4
    move-object p0, v0

    .line 139
    .end local v0    # "ctx":Landroid/content/Context;
    goto :goto_0

    .line 142
    :cond_5
    :goto_1
    goto :goto_2

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusContextUtil"

    invoke-static {v3, v2}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_6

    .line 146
    invoke-static {p0}, Lcom/oplus/util/OplusContextUtil;->isOplusStyleInActivity(Landroid/content/Context;)Z

    move-result v1

    .line 149
    :cond_6
    return v1
.end method

.method public static whitelist isOplusStyle(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "isOplusTheme":Z
    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/oplus/internal/R$styleable;->OplusTheme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 72
    .local v1, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 73
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v0
.end method

.method private static blacklist isOplusStyleInActivity(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 155
    const-string v0, "true"

    const/4 v1, 0x0

    :try_start_0
    sget v2, Lcom/oplus/util/OplusContextUtil;->sLastActivityHash:I

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 156
    sget-boolean v0, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleActivity:Z

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    .line 160
    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 161
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    sget-object v4, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v4

    check-cast v4, Lcom/oplus/theme/IOplusThemeStyle;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/oplus/theme/IOplusThemeStyle;->getMetaDataStyleTitle(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    sget-object v4, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    new-array v6, v1, [Ljava/lang/Object;

    .line 163
    invoke-static {v4, v6}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v4

    check-cast v4, Lcom/oplus/theme/IOplusThemeStyle;

    invoke-interface {v4, v1}, Lcom/oplus/theme/IOplusThemeStyle;->getMetaDataStyleTitle(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    :cond_1
    sput-boolean v5, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleActivity:Z

    .line 165
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/oplus/util/OplusContextUtil;->sLastActivityHash:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    return v5

    .line 171
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    :cond_2
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusContextUtil"

    invoke-static {v3, v2}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    sput-boolean v1, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleActivity:Z

    .line 174
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/oplus/util/OplusContextUtil;->sLastActivityHash:I

    .line 175
    return v1
.end method

.method private static blacklist isOplusStyleInApplication(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    const-string v0, "true"

    const-string v1, "OplusContextUtil"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v4, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleApplicationAssigned:Z

    if-eqz v4, :cond_0

    .line 182
    sget-boolean v0, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleApplication:Z

    return v0

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 187
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 188
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v6, v7}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v6

    check-cast v6, Lcom/oplus/theme/IOplusThemeStyle;

    invoke-interface {v6, v2}, Lcom/oplus/theme/IOplusThemeStyle;->getMetaDataStyleTitle(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sget-object v6, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    new-array v7, v3, [Ljava/lang/Object;

    .line 189
    invoke-static {v6, v7}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v6

    check-cast v6, Lcom/oplus/theme/IOplusThemeStyle;

    invoke-interface {v6, v3}, Lcom/oplus/theme/IOplusThemeStyle;->getMetaDataStyleTitle(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    :cond_1
    sput-boolean v2, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleApplication:Z

    .line 191
    sput-boolean v2, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleApplicationAssigned:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return v2

    .line 197
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/AbstractMethodError;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbstraceMethod not implemented by App : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/lang/AbstractMethodError;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    nop

    .line 201
    :goto_0
    sput-boolean v3, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleApplication:Z

    .line 202
    sput-boolean v2, Lcom/oplus/util/OplusContextUtil;->sIsOplusStyleApplicationAssigned:Z

    .line 203
    return v3
.end method


# virtual methods
.method public whitelist isOplusOSStyle()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/oplus/util/OplusContextUtil;->mIsOplusOSStyle:Z

    return v0
.end method

.method public whitelist isOplusStyle()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/oplus/util/OplusContextUtil;->mIsOplusStyle:Z

    return v0
.end method
