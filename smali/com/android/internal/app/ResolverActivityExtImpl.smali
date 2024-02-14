.class public Lcom/android/internal/app/ResolverActivityExtImpl;
.super Ljava/lang/Object;
.source "ResolverActivityExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/IResolverActivityExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityExtImpl$OplusBaseResolveListAdapter;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResolverActivityExt"


# instance fields
.field private blacklist mCustomFlag:I

.field private blacklist mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

.field private final blacklist mResolverActivity:Lcom/android/internal/app/ResolverActivity;

.field protected blacklist mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

.field private blacklist mWorkProfileUserHandle:Landroid/os/UserHandle;

.field protected blacklist sIsOpShareUi:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "base"    # Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->sIsOpShareUi:Z

    .line 68
    iput v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mCustomFlag:I

    .line 71
    sget-object v1, Lcom/android/internal/app/IOplusResolverManager;->DEFAULT:Lcom/android/internal/app/IOplusResolverManager;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    .line 75
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ResolverActivity;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 76
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/IOplusResolverManager;->DEFAULT:Lcom/android/internal/app/IOplusResolverManager;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IOplusResolverManager;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    .line 77
    return-void
.end method


# virtual methods
.method public blacklist adaptFontSize(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 426
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 427
    .local v0, "textSizePixel":F
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 428
    .local v1, "fontScale":F
    div-float v2, v0, v1

    .line 429
    .local v2, "textSizeNoScale":F
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 430
    return-void
.end method

.method public blacklist addExtraOneAppFinish()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->addExtraOneAppFinish()Z

    move-result v0

    return v0
.end method

.method public blacklist addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    .line 323
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method public blacklist cacheCustomInfo(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-class v0, Landroid/content/OplusBaseIntent;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/OplusBaseIntent;

    .line 126
    .local v0, "oplusIntent":Landroid/content/OplusBaseIntent;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Landroid/content/OplusBaseIntent;->getOplusFlags()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mCustomFlag:I

    .line 130
    .end local v0    # "oplusIntent":Landroid/content/OplusBaseIntent;
    :cond_0
    return-void
.end method

.method public blacklist checkOpShare()V
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOpShareUi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->sIsOpShareUi:Z

    .line 338
    return-void
.end method

.method public blacklist clearInactiveProfileCache(I)V
    .locals 1
    .param p1, "page"    # I

    .line 421
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IOplusResolverManager;->clearInactiveProfileCache(I)V

    .line 422
    return-void
.end method

.method public blacklist createTypeNormalView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "targetWidth"    # I

    .line 345
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->createTypeNormalView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public blacklist displayTextAddActionButton(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "actionRow"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 311
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->displayTextAddActionButton(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 312
    return-void
.end method

.method public blacklist getChooserActionRowId()I
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->getChooserActionRowId()I

    move-result v0

    return v0
.end method

.method public blacklist getChooserPreFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileCount"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IOplusResolverManager;->getChooserPreFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayFileContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 282
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->getDisplayFileContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayImageContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 294
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->getDisplayImageContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFileSharedDisabled()Z
    .locals 4

    .line 410
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getInstance(Landroid/content/Context;)Landroid/os/customize/OplusCustomizeRestrictionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/customize/OplusCustomizeRestrictionManager;->getFileSharedDisabled()Z

    move-result v0

    .line 411
    .local v0, "isDisabled":Z
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0xc0401d3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 413
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 415
    :cond_0
    return v0
.end method

.method public blacklist getLaunchedFromUid()I
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResolverWrapper()Lcom/android/internal/app/IResolverActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityWrapper;->getLaunchedFromUid()I

    move-result v0

    return v0
.end method

.method public blacklist getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    return-object v0
.end method

.method public blacklist getReferrerPackageName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResolverActivity()Lcom/android/internal/app/ResolverActivity;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    return-object v0
.end method

.method public blacklist getWorkProfileUserHandle()Landroid/os/UserHandle;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getWorkProfileUserHandle(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 106
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mWorkProfileUserHandle:Landroid/os/UserHandle;

    .line 107
    return-void
.end method

.method public blacklist getclipData(Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 5
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .line 376
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 377
    return-object v0

    .line 379
    :cond_0
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, "extraText":Ljava/lang/String;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 381
    .local v2, "extraStream":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 382
    .local v3, "clipData":Landroid/content/ClipData;
    if-eqz v1, :cond_1

    .line 383
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    .line 384
    :cond_1
    if-eqz v2, :cond_2

    .line 385
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    .line 387
    :cond_2
    const-string v0, "ResolverActivityExt"

    const-string v4, "No data available to copy to clipboard"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :goto_0
    return-object v3
.end method

.method public blacklist hasCustomFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .line 120
    iget v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mCustomFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hookFinish()V
    .locals 3

    .line 135
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    const v2, 0xc0a0017

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 138
    :cond_0
    return-void
.end method

.method public blacklist hookconfigureContentView(ZZI)V
    .locals 1
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z
    .param p3, "layoutId"    # I

    .line 230
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p3}, Lcom/android/internal/app/IOplusResolverManager;->setOriginContentView(I)V

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->initActionSend()V

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ResolverActivityExtImpl;->initView(ZZ)V

    .line 234
    return-void
.end method

.method public blacklist hookdisplayTextContentPreview(Landroid/content/Intent;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;
    .param p2, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "listener"    # Landroid/view/View$OnClickListener;

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p2, p3}, Lcom/android/internal/app/IOplusResolverManager;->getDisplayTextContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 287
    .local v0, "contentPreviewLayout":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->getChooserActionRowId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 288
    .local v1, "actionRow":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1, p4}, Lcom/android/internal/app/ResolverActivityExtImpl;->displayTextAddActionButton(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    .line 289
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/app/ResolverActivityExtImpl;->addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V

    .line 290
    return-object v0
.end method

.method public blacklist hookgetNearbySharingComponent()Z
    .locals 2

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.resolver_share_email"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hookmaybeHideContentPreview()V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    instance-of v1, v0, Lcom/android/internal/app/ChooserActivity;

    if-eqz v1, :cond_0

    .line 401
    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserWrapper()Lcom/android/internal/app/IChooserActivityWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IChooserActivityWrapper;->hideStickyContentPreview()V

    .line 404
    :cond_0
    return-void
.end method

.method public blacklist hookonConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 149
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IOplusResolverManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    return-void
.end method

.method public blacklist hookonCopyButtonClicked(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 368
    .local p1, "streams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    return v0

    .line 371
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist hookonCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 154
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p0}, Lcom/android/internal/app/IOplusResolverManager;->onCreate(Lcom/android/internal/app/IResolverActivityExt;)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityExtImpl;->cacheCustomInfo(Landroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->checkOpShare()V

    .line 167
    return-void
.end method

.method public blacklist hookonDestroy()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->onDestroy()V

    .line 185
    return-void
.end method

.method public blacklist hookonListRebuilt()Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->setResolverContent()V

    .line 255
    const/4 v0, 0x1

    return v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 143
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->onMultiWindowModeChanged()V

    .line 144
    return-void
.end method

.method public blacklist hookonPause()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->onPause()V

    .line 179
    return-void
.end method

.method public blacklist hookonRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "tabKey"    # Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityExtImpl;->restoreProfilePager(I)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->clearInactiveProfileCache()V

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hookonResume()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->onResume()V

    .line 173
    return-void
.end method

.method public blacklist hookonSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "tabKey"    # Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hooksetLastChosen(Lcom/android/internal/app/ResolverListController;Landroid/content/Intent;Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "controller"    # Lcom/android/internal/app/ResolverListController;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "bestMatch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IOplusResolverManager;->setLastChosen(Lcom/android/internal/app/ResolverListController;Landroid/content/Intent;Landroid/content/IntentFilter;I)V

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist initActionSend()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->initActionSend()V

    .line 246
    return-void
.end method

.method public blacklist initPreferenceAndPinList()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->initPreferenceAndPinList()V

    .line 262
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    return v0
.end method

.method public blacklist initView(ZZ)V
    .locals 1
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 237
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->initView(ZZ)V

    .line 238
    return-void
.end method

.method public blacklist isOpShareUi()Z
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->isOpShareUi()Z

    move-result v0

    return v0
.end method

.method public blacklist isOriginUi()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->isOriginUi()Z

    move-result v0

    return v0
.end method

.method public blacklist performAnimation()V
    .locals 3

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityExtImpl;->isOriginUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0xc0a000e

    const v2, 0xc0a0011

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 269
    :cond_0
    return-void
.end method

.method public blacklist restoreProfilePager(I)V
    .locals 1
    .param p1, "pageNumber"    # I

    .line 303
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IOplusResolverManager;->restoreProfilePager(I)V

    .line 304
    return-void
.end method

.method public blacklist safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V
    .locals 1
    .param p1, "targetInfo"    # Lcom/android/internal/app/chooser/TargetInfo;

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 113
    :cond_0
    return-void
.end method

.method public blacklist setActionButtonTextColor(Landroid/widget/Button;)V
    .locals 1
    .param p1, "button"    # Landroid/widget/Button;

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IOplusResolverManager;->setActionButtonTextColor(Landroid/widget/Button;)V

    .line 334
    return-void
.end method

.method public blacklist setChooserHeadBackground(Landroid/view/View;)V
    .locals 1
    .param p1, "elevatedView"    # Landroid/view/View;

    .line 341
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IOplusResolverManager;->setChooserHeadBackground(Landroid/view/View;)V

    .line 342
    return-void
.end method

.method public blacklist setChooserPreFileSingleIconView(ILandroid/widget/ImageView;ZLandroid/widget/TextView;ZLjava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "iconResId"    # I
    .param p2, "fileIconView"    # Landroid/widget/ImageView;
    .param p3, "needTry"    # Z
    .param p4, "fileNameView"    # Landroid/widget/TextView;
    .param p5, "singleFile"    # Z
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "uri"    # Landroid/net/Uri;

    .line 272
    if-eqz p3, :cond_0

    invoke-virtual {p0, p7, p2, p4}, Lcom/android/internal/app/ResolverActivityExtImpl;->tryApkResourceName(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p5, p6, p7}, Lcom/android/internal/app/IOplusResolverManager;->getChooserPreFileSingleIconView(ZLjava/lang/String;Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    :cond_1
    return-void
.end method

.method public blacklist setCornerRadius(Landroid/content/Context;Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageView"    # Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;

    .line 319
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IOplusResolverManager;->getCornerRadius(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserActivity$RoundedRectImageView;->setRadius(I)V

    .line 320
    return-void
.end method

.method public blacklist setCustomRoundImage(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "roundRectPaint"    # Landroid/graphics/Paint;
    .param p2, "textPaint"    # Landroid/graphics/Paint;
    .param p3, "overlayPaint"    # Landroid/graphics/Paint;

    .line 315
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IOplusResolverManager;->setCustomRoundImage(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 316
    return-void
.end method

.method public blacklist setMultiProfilePagerAdapter(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V
    .locals 0
    .param p1, "abstractMultiProfilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 81
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mMultiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 82
    return-void
.end method

.method public blacklist setOriginTheme(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 207
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0}, Lcom/android/internal/app/IOplusResolverManager;->isLoadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public blacklist setTextOptionColor(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 354
    .local v0, "currentNightMode":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 359
    :sswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 356
    :sswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 357
    nop

    .line 362
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist startSelected(IZZ)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "always"    # Z
    .param p3, "hasIndexBeenFiltered"    # Z

    .line 90
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 91
    return-void
.end method

.method public blacklist statisticsData(Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "which"    # I

    .line 249
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->statisticsData(Landroid/content/pm/ResolveInfo;I)V

    .line 250
    return-void
.end method

.method public blacklist tryApkResourceName(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 307
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IOplusResolverManager;->tryApkResourceName(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateView(ZZ)V
    .locals 1
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityExtImpl;->mResolverManager:Lcom/android/internal/app/IOplusResolverManager;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IOplusResolverManager;->updateView(ZZ)V

    .line 242
    return-void
.end method
