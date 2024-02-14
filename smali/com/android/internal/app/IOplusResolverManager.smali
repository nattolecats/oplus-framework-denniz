.class public interface abstract Lcom/android/internal/app/IOplusResolverManager;
.super Ljava/lang/Object;
.source "IOplusResolverManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/android/internal/app/IOplusResolverManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/android/internal/app/IOplusResolverManager$1;

    invoke-direct {v0}, Lcom/android/internal/app/IOplusResolverManager$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/IOplusResolverManager;->DEFAULT:Lcom/android/internal/app/IOplusResolverManager;

    return-void
.end method


# virtual methods
.method public whitelist addExtraOneAppFinish()Z
    .locals 1

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    .line 198
    return-void
.end method

.method public whitelist clearInactiveProfileCache(I)V
    .locals 0
    .param p1, "page"    # I

    .line 169
    return-void
.end method

.method public whitelist createTypeNormalView(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetWidth"    # I

    .line 221
    return-object p1
.end method

.method public whitelist displayTextAddActionButton(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "actionRow"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 188
    return-void
.end method

.method public whitelist getChooserActionRowId()I
    .locals 1

    .line 225
    const v0, 0x1020246

    return v0
.end method

.method public whitelist getChooserPreFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileCount"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    add-int/lit8 v1, p2, -0x1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    add-int/lit8 v3, p2, -0x1

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 201
    const v3, 0x10403e0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getChooserPreFileSingleIconView(ZLjava/lang/String;Landroid/net/Uri;)I
    .locals 1
    .param p1, "singleFile"    # Z
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 153
    if-eqz p1, :cond_0

    const v0, 0x1080261

    goto :goto_0

    :cond_0
    const v0, 0x10803b6

    :goto_0
    return v0
.end method

.method public whitelist getChooserProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 180
    const v0, 0x1090061

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist getCornerRadius(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 43
    invoke-interface {p0}, Lcom/android/internal/app/IOplusResolverManager;->getDefault()Lcom/android/internal/app/IOplusResolverManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Lcom/android/internal/app/IOplusResolverManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/internal/app/IOplusResolverManager;->DEFAULT:Lcom/android/internal/app/IOplusResolverManager;

    return-object v0
.end method

.method public whitelist getDisplayFileContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 165
    const v0, 0x109005e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist getDisplayImageContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 157
    const v0, 0x109005f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist getDisplayTextContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 161
    const v0, 0x1090060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "ii"    # Landroid/content/Intent;
    .param p2, "mPm"    # Landroid/content/pm/PackageManager;

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 144
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_0

    .line 145
    const/4 v1, 0x0

    return-object v1

    .line 147
    :cond_0
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 148
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 149
    return-object v1
.end method

.method public whitelist getResolverProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 184
    const v0, 0x10900ff

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 55
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusResolverManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist initActionSend()V
    .locals 0

    .line 88
    return-void
.end method

.method public whitelist initPreferenceAndPinList()V
    .locals 0

    .line 135
    return-void
.end method

.method public whitelist initView(ZZ)V
    .locals 0
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 111
    return-void
.end method

.method public whitelist isLoadTheme()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isOpShareUi()Z
    .locals 1

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOriginUi()Z
    .locals 1

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/OplusBaseConfiguration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/OplusBaseConfiguration;

    .line 125
    return-void
.end method

.method public whitelist onCreate(Lcom/android/internal/app/IResolverActivityExt;)V
    .locals 0
    .param p1, "activity"    # Lcom/android/internal/app/IResolverActivityExt;

    .line 68
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 0

    .line 83
    return-void
.end method

.method public whitelist onMultiWindowModeChanged()V
    .locals 0

    .line 121
    return-void
.end method

.method public whitelist onPause()V
    .locals 0

    .line 78
    return-void
.end method

.method public whitelist onResume()V
    .locals 0

    .line 73
    return-void
.end method

.method public whitelist restoreProfilePager(I)V
    .locals 0
    .param p1, "pageNumber"    # I

    .line 173
    return-void
.end method

.method public whitelist setActionButtonTextColor(Landroid/widget/Button;)V
    .locals 0
    .param p1, "button"    # Landroid/widget/Button;

    .line 215
    return-void
.end method

.method public whitelist setChooserHeadBackground(Landroid/view/View;)V
    .locals 0
    .param p1, "elevatedView"    # Landroid/view/View;

    .line 218
    return-void
.end method

.method public whitelist setCustomRoundImage(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "roundRectPaint"    # Landroid/graphics/Paint;
    .param p2, "textPaint"    # Landroid/graphics/Paint;
    .param p3, "overlayPaint"    # Landroid/graphics/Paint;

    .line 191
    return-void
.end method

.method public whitelist setLastChosen(Lcom/android/internal/app/ResolverListController;Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .locals 0
    .param p1, "controller"    # Lcom/android/internal/app/ResolverListController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "bestMatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V

    .line 99
    return-void
.end method

.method public whitelist setOriginContentView(I)V
    .locals 0
    .param p1, "layoutId"    # I

    .line 212
    return-void
.end method

.method public whitelist setResolverContent()V
    .locals 0

    .line 130
    return-void
.end method

.method public whitelist showActiveEmptyViewState()V
    .locals 0

    .line 171
    return-void
.end method

.method public whitelist statisticsData(Landroid/content/pm/ResolveInfo;I)V
    .locals 0
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "which"    # I

    .line 139
    return-void
.end method

.method public whitelist tryApkResourceName(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateView(ZZ)V
    .locals 0
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 116
    return-void
.end method
