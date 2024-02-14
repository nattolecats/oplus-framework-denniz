.class public Lcom/oplus/resolver/OplusResolverCustomIconHelper;
.super Ljava/lang/Object;
.source "OplusResolverCustomIconHelper.java"

# interfaces
.implements Lcom/oplus/resolver/IOplusResolverCustomIconHelper;


# static fields
.field private static final blacklist DEFAULT_RESOLVER_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverCustomIconHelper"

.field private static final blacklist mColumnCounts:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIconNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 6

    .line 47
    sget v0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    sput v0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mColumnCounts:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->DEFAULT_RESOLVER_ICON:Ljava/util/Map;

    .line 54
    const-string v1, "cn.wps.moffice_eng/cn.wps.moffice.documentmanager.PreStartActivity2/excel"

    const-string v2, "share_excel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "cn.wps.moffice_eng/cn.wps.moffice.documentmanager.PreStartActivity2/pdf"

    const-string v2, "share_pdf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "cn.wps.moffice_eng/cn.wps.moffice.documentmanager.PreStartActivity2/ppt"

    const-string v2, "share_ppt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "cn.wps.moffice_eng/cn.wps.moffice.documentmanager.PreStartActivity2/word"

    const-string v2, "share_word"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "com.android.bluetooth/.opp.BluetoothOppLauncherActivity"

    const-string v2, "share_blue"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "com.baidu.netdisk/.p2pshare.ui.ReceiverP2PShareFileActivity"

    const-string v2, "share_lightnin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "com.eg.android.AlipayGphone/com.alipay.mobile.quinox.splash.ShareScanQRDispenseActivity"

    const-string v2, "share_scan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "com.mt.mtxx.mtxx/com.meitu.mtxx.img.IMGMainActivity"

    const-string v2, "share_edit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "com.mt.mtxx.mtxx/.beauty.BeautyMainActivity"

    const-string v2, "share_retouch"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "com.sina.weibo/.weiyou.share.WeiyouShareDispatcher"

    const-string v2, "share_chat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v1, "com.sina.weibo/.story.publisher.StoryDispatcher"

    const-string v3, "share_story"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v1, "com.tencent.eim/com.tencent.mobileqq.activity.qfileJumpActivity"

    const-string v3, "share_pc"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v1, "com.tencent.mm/.ui.tools.AddFavoriteUI"

    const-string v4, "share_fav"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "com.tencent.mm/.ui.tools.ShareToTimeLineUI"

    const-string v5, "share_moment"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "com.tencent.mobileqq/cooperation.qqfav.widget.QfavJumpActivity"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "com.tencent.mobileqq/.activity.qfileJumpActivity"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "com.tencent.mobileqq/cooperation.qlink.QlinkShareJumpActivity"

    const-string v5, "share_quick"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "com.tencent.qqlite/cooperation.qqfav.widget.QfavJumpActivity"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "com.tencent.qqlite/com.tencent.mobileqq.activity.qfileJumpActivity"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "com.tencent.tim/cooperation.qqfav.widget.QfavJumpActivity"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "com.UCMobile/.share"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p1}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/resolver/OplusResolverInfoHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getIconsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mIconNameMap:Ljava/util/Map;

    .line 80
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    :cond_0
    sget-object v0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->DEFAULT_RESOLVER_ICON:Ljava/util/Map;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mIconNameMap:Ljava/util/Map;

    .line 83
    :cond_1
    return-void
.end method

.method private blacklist getResolveDrawableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resolveActivity"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 201
    const-string v0, "/"

    .line 202
    .local v0, "separator":Ljava/lang/String;
    const/4 v1, 0x0

    .line 203
    .local v1, "iconName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v2, "key":Ljava/lang/StringBuilder;
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mIconNameMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 210
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 211
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mIconNameMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 219
    :cond_0
    if-nez v1, :cond_1

    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mIconNameMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 226
    :cond_1
    if-nez v1, :cond_2

    .line 227
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mIconNameMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    .line 234
    :cond_2
    return-object v1
.end method


# virtual methods
.method public blacklist getAdaptiveIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "originDrawableId"    # I

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 157
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    invoke-interface {v1}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/IUxIconPackageManagerExt;

    .line 159
    .local v1, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v1, :cond_0

    .line 160
    sget-object v2, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    move-object v1, v2

    move-object v7, v1

    goto :goto_0

    .line 159
    :cond_0
    move-object v7, v1

    .line 162
    .end local v1    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .local v7, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :goto_0
    sget-object v1, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Landroid/content/res/IOplusThemeManager;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, v7

    move v4, p1

    move-object v5, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/res/IOplusThemeManager;->loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 165
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :catch_0
    move-exception v0

    .line 166
    .local v0, "igored":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAppInfo(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lcom/oplus/widget/OplusItem;
    .locals 4
    .param p1, "originIntent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "mPm"    # Landroid/content/pm/PackageManager;

    .line 87
    if-nez p2, :cond_0

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/oplus/widget/OplusItem;

    invoke-direct {v0}, Lcom/oplus/widget/OplusItem;-><init>()V

    .line 91
    .local v0, "appInfo":Lcom/oplus/widget/OplusItem;
    invoke-virtual {p2, p3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 92
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v1, p3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "label":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/oplus/widget/OplusItem;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 96
    invoke-virtual {v0, v2}, Lcom/oplus/widget/OplusItem;->setLabel(Ljava/lang/String;)V

    .line 99
    .end local v2    # "label":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->oplusLoadIconForResolveInfo(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 100
    return-object v0
.end method

.method public blacklist getDefaultAppInfo()Lcom/oplus/widget/OplusItem;
    .locals 9

    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 137
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    invoke-interface {v2}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/IUxIconPackageManagerExt;

    .line 139
    .local v2, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v2, :cond_0

    .line 140
    sget-object v3, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    move-object v2, v3

    move-object v8, v2

    goto :goto_0

    .line 139
    :cond_0
    move-object v8, v2

    .line 142
    .end local v2    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .local v8, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :goto_0
    sget-object v2, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Landroid/content/res/IOplusThemeManager;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0xc080073

    const/4 v7, 0x0

    move-object v3, v8

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Landroid/content/res/IOplusThemeManager;->loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 147
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    goto :goto_1

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "igored":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    const v3, 0xc080073

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 148
    .end local v1    # "igored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    new-instance v1, Lcom/oplus/widget/OplusItem;

    invoke-direct {v1}, Lcom/oplus/widget/OplusItem;-><init>()V

    .line 149
    .local v1, "appInfo":Lcom/oplus/widget/OplusItem;
    invoke-virtual {v1, v0}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 151
    return-object v1
.end method

.method public blacklist getDefaultAppInfo(I)Ljava/util/List;
    .locals 9
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;"
        }
    .end annotation

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 107
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    invoke-interface {v2}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/IUxIconPackageManagerExt;

    .line 109
    .local v2, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v2, :cond_0

    .line 110
    sget-object v3, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    move-object v2, v3

    move-object v8, v2

    goto :goto_0

    .line 109
    :cond_0
    move-object v8, v2

    .line 112
    .end local v2    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .local v8, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :goto_0
    sget-object v2, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v2

    check-cast v2, Landroid/content/res/IOplusThemeManager;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0xc080073

    const/4 v7, 0x0

    move-object v3, v8

    move-object v6, v1

    invoke-interface/range {v2 .. v7}, Landroid/content/res/IOplusThemeManager;->loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 117
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    goto :goto_1

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "igored":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mContext:Landroid/content/Context;

    const v3, 0xc080073

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .end local v1    # "igored":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .local v1, "appInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    int-to-double v2, p1

    sget v4, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mColumnCounts:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    double-to-int v2, v2

    .line 121
    .local v2, "rowCounts":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 122
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    sget v5, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->mColumnCounts:I

    mul-int v6, v3, v5

    sub-int v6, p1, v6

    if-ge v4, v6, :cond_1

    if-ge v4, v5, :cond_1

    .line 123
    new-instance v5, Lcom/oplus/widget/OplusItem;

    invoke-direct {v5}, Lcom/oplus/widget/OplusItem;-><init>()V

    .line 124
    .local v5, "item":Lcom/oplus/widget/OplusItem;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 125
    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 126
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v5    # "item":Lcom/oplus/widget/OplusItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 121
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 129
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public whitelist oplusLoadIconForResolveInfo(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .param p1, "originIntent"    # Landroid/content/Intent;
    .param p2, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "mPm"    # Landroid/content/pm/PackageManager;

    .line 172
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v0

    .line 173
    .local v0, "resId":I
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 174
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 175
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p2, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_0

    .line 176
    iget v0, p2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 177
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 179
    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 180
    const/4 v2, 0x0

    .line 184
    :cond_0
    if-eqz v0, :cond_3

    .line 185
    if-nez p3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p3, Landroid/content/pm/PackageManager;->mPackageManagerExt:Landroid/content/pm/IPackageManagerExt;

    .line 186
    invoke-interface {v3}, Landroid/content/pm/IPackageManagerExt;->getUxIconPackageManagerExt()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/IUxIconPackageManagerExt;

    :goto_0
    nop

    .line 187
    .local v3, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    if-nez v3, :cond_2

    .line 188
    sget-object v3, Landroid/content/res/IUxIconPackageManagerExt;->DEFAULT:Landroid/content/res/IUxIconPackageManagerExt;

    move-object v9, v3

    goto :goto_1

    .line 187
    :cond_2
    move-object v9, v3

    .line 190
    .end local v3    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    .local v9, "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :goto_1
    sget-object v3, Landroid/content/res/IOplusThemeManager;->DEFAULT:Landroid/content/res/IOplusThemeManager;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v3

    check-cast v3, Landroid/content/res/IOplusThemeManager;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v5}, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->getResolveDrawableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 190
    move-object v4, v9

    move-object v5, v1

    move v6, v0

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Landroid/content/res/IOplusThemeManager;->loadOverlayResolverDrawable(Landroid/content/res/IUxIconPackageManagerExt;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 193
    .local v3, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    .line 194
    return-object v3

    .line 197
    .end local v3    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v9    # "uxIconPackageManagerExt":Landroid/content/res/IUxIconPackageManagerExt;
    :cond_3
    invoke-virtual {p2, p3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3
.end method
