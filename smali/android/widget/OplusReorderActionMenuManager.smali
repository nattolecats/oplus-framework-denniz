.class public Landroid/widget/OplusReorderActionMenuManager;
.super Ljava/lang/Object;
.source "OplusReorderActionMenuManager.java"

# interfaces
.implements Landroid/widget/IOplusReorderActionMenuManager;


# static fields
.field private static final blacklist DEFAULT_START_ORDER:I = 0x64

.field private static final blacklist MENU_ENABLE_NAME:Ljava/lang/String; = "enable"

.field private static final blacklist MENU_ENTITIES_NAME:Ljava/lang/String; = "menuEntities"

.field private static final blacklist MENU_LABEL_NAME:Ljava/lang/String; = "menuName"

.field private static final blacklist MENU_TYPE_NAME:Ljava/lang/String; = "menuType"

.field private static final blacklist NOTE_MENU_ORDER:I = 0x32

.field private static final blacklist REORDER_ACTION_MENU_ACTION:Ljava/lang/String; = "com.oplus.action.reorder_action_menu"

.field private static final blacklist SUPER_TEXT_PROPERTY_NAME:Ljava/lang/String; = "supertext_input_entry"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusReorderActionMenuManager"

.field private static final blacklist TYPE_VALUE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final blacklist TYPE_VALUE_SERVICE:Ljava/lang/String; = "service"


# instance fields
.field private blacklist mSuperTextObject:Lorg/json/JSONObject;

.field private blacklist mSupportedActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedActivities:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedServices:Ljava/util/List;

    return-void
.end method

.method private blacklist activityMenuEnabledByApp(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 229
    const-string v0, "enable"

    const-string v1, "menuType"

    const-string v2, "menuName"

    iget-object v3, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    const-string v5, "menuEntities"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 235
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 236
    .local v3, "menuEntities":Lorg/json/JSONArray;
    if-nez v3, :cond_1

    .line 237
    return v4

    .line 240
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 241
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 243
    .local v6, "menuProperty":Lorg/json/JSONObject;
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 244
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 245
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 247
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 248
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    .line 250
    const/4 v0, 0x1

    return v0

    .line 240
    .end local v6    # "menuProperty":Lorg/json/JSONObject;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 256
    .end local v3    # "menuEntities":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_3
    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityMenuEnabledByApp failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusReorderActionMenuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 231
    :cond_4
    :goto_2
    return v4
.end method

.method private blacklist createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 150
    invoke-direct {p0}, Landroid/widget/OplusReorderActionMenuManager;->createReorderProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    .line 151
    invoke-virtual {p2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method private blacklist createProcessTextIntentForResolveInfoService(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 156
    invoke-direct {p0}, Landroid/widget/OplusReorderActionMenuManager;->createReorderProcessTextIntent()Landroid/content/Intent;

    move-result-object v0

    .line 157
    invoke-virtual {p2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "android.intent.extra.PROCESS_TEXT_READONLY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 159
    const-string v1, "service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 156
    return-object v0
.end method

.method private blacklist createReorderProcessTextIntent()Landroid/content/Intent;
    .locals 2

    .line 292
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 293
    const-string v1, "com.oplus.action.reorder_action_menu"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 292
    return-object v0
.end method

.method private blacklist getLabel(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private blacklist isAnyForbiddenType(Landroid/widget/TextView;)Z
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 299
    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 300
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    .line 301
    .local v1, "type":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 304
    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 211
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 214
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/OplusReorderActionMenuManager;->activityMenuEnabledByApp(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 211
    :goto_1
    return v0
.end method

.method private blacklist isSupportedService(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 220
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 223
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/OplusReorderActionMenuManager;->serviceMenuEnabledByApp(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 220
    :goto_1
    return v0
.end method

.method private blacklist loadMenuPropertiesFromSettings(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 179
    invoke-direct {p0, p1}, Landroid/widget/OplusReorderActionMenuManager;->loadSuperTextMenuProperty(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method private blacklist loadSuperTextMenuProperty(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "supertext_input_entry"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "propertyStr":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v0    # "propertyStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadScanTextMenuProperty failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusReorderActionMenuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private blacklist loadSupportedActivities(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    iget-object v0, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    return-void

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 169
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Landroid/widget/OplusReorderActionMenuManager;->createReorderProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 171
    .local v1, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 172
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3, p1}, Landroid/widget/OplusReorderActionMenuManager;->isSupportedActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    iget-object v4, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 176
    :cond_2
    return-void
.end method

.method private blacklist loadSupportedServices(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 195
    iget-object v0, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->canStartActivityForResult()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 201
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-direct {p0}, Landroid/widget/OplusReorderActionMenuManager;->createReorderProcessTextIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 203
    .local v1, "unfiltered":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 204
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3, p1}, Landroid/widget/OplusReorderActionMenuManager;->isSupportedService(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    iget-object v4, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedServices:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 208
    :cond_2
    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 311
    const-string v0, "OplusReorderActionMenuManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method private blacklist serviceMenuEnabledByApp(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .locals 9
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "context"    # Landroid/content/Context;

    .line 262
    const-string v0, "enable"

    const-string v1, "menuType"

    const-string v2, "menuName"

    iget-object v3, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string v5, "menuEntities"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 268
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/widget/OplusReorderActionMenuManager;->mSuperTextObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 270
    .local v3, "menuEntities":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 271
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 273
    .local v6, "menuProperty":Lorg/json/JSONObject;
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 274
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 275
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 277
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 278
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "service"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 279
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_1

    .line 280
    const/4 v0, 0x1

    return v0

    .line 270
    .end local v6    # "menuProperty":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v3    # "menuEntities":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_2
    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serviceMenuEnabledByApp failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusReorderActionMenuManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 264
    :cond_3
    :goto_2
    return v4
.end method


# virtual methods
.method public blacklist hookFireIntent(Landroid/widget/TextView;Landroid/content/Intent;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    invoke-virtual {p1}, Landroid/widget/TextView;->stopTextActionMode()V

    goto :goto_0

    .line 118
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 120
    :goto_0
    return-void
.end method

.method public blacklist isOplusReorderActionMenu(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oplus.action.reorder_action_menu"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist onInitializeReorderActionMenu(Landroid/view/Menu;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 67
    invoke-virtual {p3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getSelectedText()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "selectedStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 73
    return-void

    .line 76
    :cond_1
    invoke-virtual {p3}, Landroid/widget/TextView;->isAnyPasswordInputType()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0, p3}, Landroid/widget/OplusReorderActionMenuManager;->isAnyForbiddenType(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 81
    :cond_2
    invoke-direct {p0, p2}, Landroid/widget/OplusReorderActionMenuManager;->loadMenuPropertiesFromSettings(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0, p2}, Landroid/widget/OplusReorderActionMenuManager;->loadSupportedActivities(Landroid/content/Context;)V

    .line 85
    iget-object v1, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 86
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ge v2, v1, :cond_3

    .line 87
    iget-object v5, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedActivities:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 88
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v6, v2, 0x64

    .line 90
    invoke-direct {p0, v5, p2}, Landroid/widget/OplusReorderActionMenuManager;->getLabel(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 88
    invoke-interface {p1, v4, v4, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 91
    invoke-direct {p0, v5, p3}, Landroid/widget/OplusReorderActionMenuManager;->createProcessTextIntentForResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v4

    .line 92
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 86
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0, p2}, Landroid/widget/OplusReorderActionMenuManager;->loadSupportedServices(Landroid/content/Context;)V

    .line 96
    iget-object v2, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 97
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 98
    iget-object v5, p0, Landroid/widget/OplusReorderActionMenuManager;->mSupportedServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 99
    .restart local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v6, v2, 0x64

    .line 101
    invoke-direct {p0, v5, p2}, Landroid/widget/OplusReorderActionMenuManager;->getLabel(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 99
    invoke-interface {p1, v4, v4, v6, v7}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    .line 102
    invoke-direct {p0, v5, p3}, Landroid/widget/OplusReorderActionMenuManager;->createProcessTextIntentForResolveInfoService(Landroid/content/pm/ResolveInfo;Landroid/widget/TextView;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v6

    .line 103
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 97
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 105
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 77
    .end local v1    # "size":I
    :cond_5
    :goto_2
    return-void
.end method

.method public blacklist raiseOplusMenuPriority(ILjava/lang/CharSequence;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "order"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p5, "menu"    # Landroid/view/Menu;

    .line 134
    const-string v0, "com.coloros.note"

    .line 135
    .local v0, "notePackageName":Ljava/lang/String;
    iget-object v1, p4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 136
    return v2

    .line 139
    :cond_0
    const/16 v1, 0x32

    invoke-interface {p5, v2, v2, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 140
    invoke-interface {v1, p3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v1

    .line 141
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    return v2
.end method
