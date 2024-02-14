.class public Lcom/android/internal/app/OplusResolverManager;
.super Ljava/lang/Object;
.source "OplusResolverManager.java"

# interfaces
.implements Lcom/android/internal/app/IOplusResolverManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OplusResolverManager$ItemClickListener;,
        Lcom/android/internal/app/OplusResolverManager$TabChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CHECK_SCREEN_WIDTH:I = 0x280

.field private static final blacklist FIRST_SELECTED_POSITION:I = 0x0

.field private static final blacklist GALLERY_PIN_LIST:Ljava/lang/String; = "gallery_pin_list"

.field private static final blacklist MAIN_APP_ACCESS:I = 0x1

.field private static final blacklist NAVIGATION_MODE:Ljava/lang/String; = "navigation_mode"

.field private static final blacklist NAVIGATION_MODE_GESTURE:I = 0x2

.field private static final blacklist PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverManager"

.field private static final blacklist TYPE_GALLERY:Ljava/lang/String; = "gallery"


# instance fields
.field private blacklist mApkPreView:Lcom/oplus/resolver/OplusResolverApkPreView;

.field private blacklist mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private blacklist mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

.field private blacklist mGalleryPinList:Ljava/lang/String;

.field protected whitelist mIsActionSend:Z

.field private blacklist mIsMainScreen:Z

.field private blacklist mLastSelected:I

.field private blacklist mLoadedPages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected whitelist mOpenFlag:Z

.field private blacklist mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private blacklist mPreView:Landroid/view/View;

.field private blacklist mPreviewContainer:Landroid/view/ViewGroup;

.field private blacklist mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

.field private blacklist mResolverActivity:Lcom/android/internal/app/ResolverActivity;

.field private blacklist mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

.field private blacklist mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

.field private blacklist mTabHost:Landroid/widget/TabHost;

.field private blacklist mTabListener:Lcom/android/internal/app/OplusResolverManager$TabChangeListener;

.field private blacklist mTransparentBottomView:Landroid/widget/ImageView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLoadedPages(Lcom/android/internal/app/OplusResolverManager;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusResolverManager;->mLoadedPages:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPinnedSharedPrefs(Lcom/android/internal/app/OplusResolverManager;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusResolverManager;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverActivity(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverActivityExt(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/IResolverActivityExt;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverDialogHelper(Lcom/android/internal/app/OplusResolverManager;)Lcom/oplus/resolver/OplusResolverDialogHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mchangeOShareAndNfc(Lcom/android/internal/app/OplusResolverManager;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/OplusResolverManager;->changeOShareAndNfc(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetActiveResolverAdapter(Lcom/android/internal/app/OplusResolverManager;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBackgroundDrawable(Lcom/android/internal/app/OplusResolverManager;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/OplusResolverManager;->getBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetPlaceholderCount(Lcom/android/internal/app/OplusResolverManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getPlaceholderCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleClickEvent(Lcom/android/internal/app/OplusResolverManager;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/OplusResolverManager;->handleClickEvent(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshouldShowEmptyState(Lcom/android/internal/app/OplusResolverManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->shouldShowEmptyState()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mshowEmptyViewState(Lcom/android/internal/app/OplusResolverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->showEmptyViewState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdatePreviewArea(Lcom/android/internal/app/OplusResolverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->updatePreviewArea()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mLoadedPages:Ljava/util/Set;

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/OplusResolverManager;->mLastSelected:I

    .line 915
    new-instance v0, Lcom/android/internal/app/OplusResolverManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/OplusResolverManager$2;-><init>(Lcom/android/internal/app/OplusResolverManager;)V

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-void
.end method

.method private blacklist changeOShareAndNfc(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 658
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->tearDown(Landroid/view/View;)V

    goto :goto_0

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initOShareView(Landroid/view/View;)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/OplusResolverManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initNfcView(Landroid/view/View;)V

    .line 666
    :goto_0
    return-void
.end method

.method private varargs blacklist displayTextSuitSize(I[Landroid/widget/TextView;)V
    .locals 7
    .param p1, "suitSize"    # I
    .param p2, "childs"    # [Landroid/widget/TextView;

    .line 644
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 645
    .local v0, "fontScale":F
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 646
    .local v4, "child":Landroid/widget/TextView;
    if-nez v4, :cond_0

    .line 647
    return-void

    .line 649
    :cond_0
    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    .line 650
    .local v5, "textSize":F
    nop

    .line 651
    invoke-static {v5, v0, p1}, Lcom/oplus/util/OplusChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v6

    float-to-int v6, v6

    int-to-float v5, v6

    .line 652
    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 645
    .end local v4    # "child":Landroid/widget/TextView;
    .end local v5    # "textSize":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 654
    :cond_1
    return-void
.end method

.method private blacklist getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 749
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getActiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getBackgroundDrawable(II)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 637
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 638
    .local v0, "radius":I
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc060038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 639
    .local v1, "backgroundColor":I
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0xc06003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 640
    .local v8, "foregroundColor":I
    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, v0

    move v6, v1

    move v7, v8

    invoke-virtual/range {v2 .. v7}, Lcom/oplus/util/OplusRoundRectUtil;->getRoundRectDrawable(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getCurrentIsMainScreen()V
    .locals 4

    .line 323
    const-string v0, "OplusResolverManager"

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oplus_system_folding_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    goto :goto_0

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get value error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMainScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method private blacklist getInactiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;
    .locals 1

    .line 753
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getInactiveListAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

    invoke-interface {v0}, Lcom/android/internal/app/IResolverActivityExt;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 889
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 891
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 890
    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 893
    .local v0, "prefsFile":Ljava/io/File;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getPlaceholderCount()I
    .locals 5

    .line 738
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->getWrapper()Lcom/android/internal/app/IResolverListAdapterWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterWrapper;->getResolverListAdapterExt()Lcom/android/internal/app/IResolverListAdapterExt;

    move-result-object v0

    .line 739
    .local v0, "resolverListAdapterExt":Lcom/android/internal/app/IResolverListAdapterExt;
    invoke-interface {v0}, Lcom/android/internal/app/IResolverListAdapterExt;->getPlaceholderResolveList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/OplusResolverManager;->getUnsortResolveInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 740
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getApkSubContractListSize(Ljava/util/List;Ljava/lang/String;)I

    move-result v2

    .line 741
    .local v2, "apkSubContractSize":I
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getExpandSizeWithoutMoreIcon(Ljava/util/List;Landroid/content/Intent;)I

    move-result v3

    .line 742
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/oplus/util/OplusResolverIntentUtil;->isChooserAction(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    if-lez v3, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 743
    add-int/lit8 v4, v3, 0x1

    sub-int/2addr v4, v2

    goto :goto_0

    .line 744
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .line 742
    :goto_0
    return v4
.end method

.method private blacklist getResolveInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 828
    .local p1, "drlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v0, "mRiList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p1, :cond_1

    .line 830
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 831
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 832
    .local v2, "resolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 833
    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    .end local v2    # "resolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_0
    goto :goto_0

    .line 837
    :cond_1
    return-object v0
.end method

.method private blacklist getScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 909
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 910
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 911
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 912
    return-object v0
.end method

.method private blacklist getUnsortResolveInfo(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 767
    .local p1, "componentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 768
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x1

    .line 769
    .local v1, "hasProcessSort":Z
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 770
    :cond_0
    const/4 v1, 0x0

    .line 771
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/app/ResolverListAdapter;->processSortedList(Ljava/util/List;Z)V

    .line 773
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 774
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 775
    .local v3, "resolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 776
    invoke-virtual {v3}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v3    # "resolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_2
    goto :goto_0

    .line 780
    :cond_3
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 781
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 783
    :cond_4
    return-object v0
.end method

.method private blacklist handleClickEvent(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 864
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oplus/util/OplusResolverUtil;->isResolverCtsTest(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 869
    iput p2, p0, Lcom/android/internal/app/OplusResolverManager;->mLastSelected:I

    .line 870
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->setButtonAlwaysListener()V

    .line 871
    return-void

    .line 873
    :cond_1
    const/4 v0, 0x0

    .line 874
    .local v0, "always":Z
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0x1020229

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 875
    .local v1, "alwaysOption":Landroid/widget/CheckBox;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 876
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 878
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 879
    return-void

    .line 865
    .end local v0    # "always":Z
    .end local v1    # "alwaysOption":Landroid/widget/CheckBox;
    :cond_3
    :goto_0
    const-string v0, "OplusResolverManager"

    const-string v1, "handleClickEvent size error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private blacklist initDialogHelper(Z)V
    .locals 7
    .param p1, "supportsAlwaysUseOption"    # Z

    .line 822
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getInstance(Landroid/content/Context;)Lcom/oplus/resolver/OplusResolverInfoHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    .line 823
    new-instance v0, Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    .line 824
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/internal/app/OplusResolverManager;->getResolveInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const/4 v4, 0x0

    move-object v1, v0

    move v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/resolver/OplusResolverDialogHelper;-><init>(Landroid/app/Activity;Landroid/content/Intent;[Landroid/content/Intent;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    .line 825
    return-void
.end method

.method private blacklist initMultiappCheckBoxIfNeed(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 288
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .line 290
    .restart local v0    # "packageName":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 291
    .local v1, "needInit":Z
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v2

    const/16 v3, 0x3e7

    invoke-virtual {v2, v3, v0}, Lcom/oplus/multiapp/OplusMultiAppManager;->isMultiApp(ILjava/lang/String;)Z

    move-result v1

    .line 292
    if-nez v1, :cond_1

    .line 293
    return-void

    .line 296
    :cond_1
    const v2, 0xc0200a5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 297
    .local v2, "multiappCheckBoxContainer":Landroid/view/View;
    instance-of v3, v2, Landroid/view/ViewStub;

    if-eqz v3, :cond_2

    .line 298
    move-object v3, v2

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 300
    :cond_2
    const v3, 0xc0200a4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 301
    .local v3, "multiappAlwaysOption":Landroid/widget/CheckBox;
    if-eqz v3, :cond_3

    .line 302
    new-instance v4, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/OplusResolverManager;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    :cond_3
    return-void
.end method

.method private blacklist preViewAllGone(Landroid/view/View;)Z
    .locals 6
    .param p1, "parent"    # Landroid/view/View;

    .line 965
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 968
    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 969
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v4, p1

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 970
    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 971
    return v3

    .line 969
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 974
    .end local v1    # "i":I
    .end local v4    # "count":I
    :cond_2
    return v0

    .line 976
    :cond_3
    return v3

    .line 966
    :cond_4
    :goto_1
    return v0
.end method

.method private blacklist resortDisplayList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 807
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v0, "mDRIList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    if-eqz p1, :cond_3

    .line 809
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 810
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 811
    .local v4, "dresolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 812
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    .end local v4    # "dresolveInfo":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :cond_0
    goto :goto_1

    .line 815
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    goto :goto_0

    .line 816
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 817
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 819
    :cond_3
    return-void
.end method

.method private blacklist resortListAndNotifyChange(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 791
    .local p1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->shouldShowEmptyState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0x1020011

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 793
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 794
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 795
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 799
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 798
    invoke-virtual {v1, v2, v3, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->resortListAndNotifyChange(ZLandroid/os/UserHandle;Ljava/util/List;)V

    .line 800
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->getResolveInforList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/app/OplusResolverManager;->resortDisplayList(Ljava/util/List;)V

    .end local v0    # "parent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 801
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->shouldShowEmptyState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 802
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->showEmptyViewState()V

    goto :goto_1

    .line 801
    :cond_2
    :goto_0
    nop

    .line 804
    :goto_1
    return-void
.end method

.method private blacklist setButtonAlwaysListener()V
    .locals 2

    .line 956
    iget v0, p0, Lcom/android/internal/app/OplusResolverManager;->mLastSelected:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0x1020229

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 958
    .local v0, "buttonAlways":Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->hasOnClickListeners()Z

    move-result v1

    if-nez v1, :cond_0

    .line 959
    new-instance v1, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/OplusResolverManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 962
    .end local v0    # "buttonAlways":Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method

.method private blacklist setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 897
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->setContentView(Landroid/view/View;)V

    .line 898
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->shouldShowEmptyState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->showEmptyViewState()V

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0x1020263

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    .line 903
    new-instance v1, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/OplusResolverManager;)V

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->setOnDismissedListener(Lcom/android/internal/widget/ResolverDrawerLayout$OnDismissedListener;)V

    .line 904
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getCurrentIsMainScreen()V

    .line 905
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->updatePreviewArea()V

    .line 906
    return-void
.end method

.method private blacklist shouldShowEmptyState()Z
    .locals 3

    .line 702
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 703
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v2, 0x1020467

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist showEmptyViewState()V
    .locals 7

    .line 707
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 708
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0x1020011

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 709
    .local v1, "parent":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 710
    return-void

    .line 713
    :cond_0
    iget-object v2, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v3, 0x102046a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 714
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 715
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    if-ne v5, v6, :cond_2

    .line 716
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 717
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 719
    :cond_1
    return-void

    .line 721
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 722
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    instance-of v5, v3, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 723
    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 725
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 726
    .end local v3    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 727
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 729
    :goto_0
    iget-object v3, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 730
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_5

    .line 731
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 733
    :cond_5
    return-void
.end method

.method private blacklist showTransparentBottomView(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 373
    if-eqz p1, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 375
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "hide_navigationbar_enable"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 376
    .local v0, "navigationBarEnableStatus":I
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v4, 0xc08008c

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ResolverActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mTransparentBottomView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 378
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 379
    if-eqz v0, :cond_0

    .line 380
    const v4, 0xc0500c7

    goto :goto_0

    .line 381
    :cond_0
    const v4, 0xc0500c5

    .line 378
    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 382
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mTransparentBottomView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mTransparentBottomView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    .end local v0    # "navigationBarEnableStatus":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v2, 0xc060038

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setBackgroundColor(I)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mTransparentBottomView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    :goto_1
    return-void
.end method

.method private blacklist updatePreviewArea()V
    .locals 6

    .line 933
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 934
    return-void

    .line 936
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 937
    .local v0, "realSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 938
    .local v1, "port":Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 939
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 941
    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 943
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 944
    :cond_3
    invoke-static {}, Lcom/oplus/resolver/OplusResolverUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 945
    :cond_4
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 946
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/internal/app/OplusResolverManager;->preViewAllGone(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 947
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    invoke-virtual {v3, v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 949
    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 950
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 951
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 953
    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist updateViewByConfigChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 333
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    const-string v1, "OplusResolverManager"

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mTransparentBottomView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 337
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 338
    .local v0, "config":Landroid/content/res/Configuration;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->setIsSplitScreenMode(Z)V

    .line 340
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 341
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 342
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v3

    .line 344
    .local v3, "orientation":I
    const/4 v4, 0x0

    .line 345
    .local v4, "show":Z
    iget-boolean v5, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_4

    .line 346
    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v5, v8

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    move v4, v5

    goto :goto_4

    .line 349
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v6, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    move v5, v8

    :goto_3
    move v4, v5

    .line 353
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orientation="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 355
    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 354
    const-string v9, "navigation_mode"

    invoke-static {v5, v9, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_6

    move v5, v7

    goto :goto_5

    :cond_6
    move v5, v8

    .line 356
    .local v5, "isGestureNavMode":Z
    :goto_5
    iget-object v9, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v9}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 357
    invoke-virtual {v10}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_8

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    move v6, v8

    goto :goto_7

    :cond_8
    :goto_6
    move v6, v7

    .line 356
    :goto_7
    invoke-virtual {v9, v6}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 362
    invoke-static {}, Lcom/oplus/resolver/OplusResolverUtils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 363
    const-string v6, "isTablet"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v6, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v9, 0x280

    if-le v6, v9, :cond_9

    move v8, v7

    :cond_9
    move v4, v8

    .line 365
    iget-object v6, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 367
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/internal/app/OplusResolverManager;->showTransparentBottomView(Z)V

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    iget-boolean v6, p0, Lcom/android/internal/app/OplusResolverManager;->mIsMainScreen:Z

    iget-object v7, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v7}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v7

    invoke-virtual {v1, v6, v0, v7, v4}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->setConfiguration(ZLandroid/content/res/Configuration;ZZ)V

    .line 370
    return-void

    .line 334
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "orientation":I
    .end local v4    # "show":Z
    .end local v5    # "isGestureNavMode":Z
    :cond_b
    :goto_8
    const-string v0, "the view not init"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method


# virtual methods
.method public whitelist addExtraOneAppFinish()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist addNearbyAction(Landroid/view/ViewGroup;Landroid/content/Intent;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "targetIntent"    # Landroid/content/Intent;

    .line 604
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getChooserWrapper()Lcom/android/internal/app/IChooserActivityWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/app/IChooserActivityWrapper;->getNearbySharingTarget(Landroid/content/Intent;)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 605
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-nez v0, :cond_0

    .line 606
    return-void

    .line 608
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0xc090421

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 609
    .local v1, "child":Landroid/view/ViewGroup;
    const v2, 0xc02000f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 610
    .local v2, "nearbyTx":Landroid/widget/TextView;
    if-nez v2, :cond_1

    .line 611
    return-void

    .line 613
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 614
    .local v3, "observer":Landroid/view/ViewTreeObserver;
    new-instance v4, Lcom/android/internal/app/OplusResolverManager$1;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/app/OplusResolverManager$1;-><init>(Lcom/android/internal/app/OplusResolverManager;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 625
    new-instance v4, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/app/OplusResolverManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/OplusResolverManager;Lcom/android/internal/app/chooser/TargetInfo;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    const/4 v4, 0x4

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/widget/TextView;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-direct {p0, v4, v5}, Lcom/android/internal/app/OplusResolverManager;->displayTextSuitSize(I[Landroid/widget/TextView;)V

    .line 630
    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v5, -0x1

    const/4 v7, -0x2

    invoke-direct {v4, v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 631
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0xc05009b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 632
    .local v5, "bottomMargin":I
    invoke-virtual {v4, v6, v6, v6, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    .line 633
    invoke-virtual {p1, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 634
    return-void
.end method

.method public whitelist clearInactiveProfileCache(I)V
    .locals 2
    .param p1, "page"    # I

    .line 549
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mLoadedPages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 550
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mLoadedPages:Ljava/util/Set;

    rsub-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 553
    return-void
.end method

.method public whitelist displayTextAddActionButton(Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "actionRow"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .line 581
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 582
    .local v0, "imageView":Landroid/widget/ImageView;
    const v1, 0xc080062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 584
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 585
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    return-void
.end method

.method public whitelist getChooserPreFileName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileCount"    # I
    .param p3, "file"    # Ljava/lang/String;

    .line 982
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 983
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 982
    const v2, 0x10403e0

    invoke-virtual {v0, v2, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "fileName":Ljava/lang/String;
    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 985
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 986
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    :cond_0
    return-object v0
.end method

.method public whitelist getChooserPreFileSingleIconView(ZLjava/lang/String;Landroid/net/Uri;)I
    .locals 17
    .param p1, "singleFile"    # Z
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 456
    move-object/from16 v0, p2

    if-nez p1, :cond_0

    .line 457
    const v1, 0xc08006c

    return v1

    .line 459
    :cond_0
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "type":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 461
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const v5, 0xc08006d

    .line 464
    .local v5, "iconRes":I
    invoke-static {v4}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "preType":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, -0x1

    sparse-switch v7, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v7, "application"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x6

    goto :goto_1

    :sswitch_1
    const-string v7, "excel"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    :sswitch_2
    const-string v7, "audio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v9

    goto :goto_1

    :sswitch_3
    const-string v7, "word"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v13

    goto :goto_1

    :sswitch_4
    const-string v7, "txt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    goto :goto_1

    :sswitch_5
    const-string v7, "ppt"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v11

    goto :goto_1

    :sswitch_6
    const-string v7, "pdf"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v12

    goto :goto_1

    :goto_0
    move v7, v14

    :goto_1
    packed-switch v7, :pswitch_data_0

    goto :goto_2

    .line 485
    :pswitch_0
    const v5, 0xc080063

    goto :goto_2

    .line 482
    :pswitch_1
    const v5, 0xc080064

    .line 483
    goto :goto_2

    .line 479
    :pswitch_2
    const v5, 0xc08006f

    .line 480
    goto :goto_2

    .line 476
    :pswitch_3
    const v5, 0xc08006e

    .line 477
    goto :goto_2

    .line 473
    :pswitch_4
    const v5, 0xc080069

    .line 474
    goto :goto_2

    .line 470
    :pswitch_5
    const v5, 0xc080067

    .line 471
    goto :goto_2

    .line 467
    :pswitch_6
    const v5, 0xc080070

    .line 468
    nop

    .line 487
    :goto_2
    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 488
    .local v7, "suffixIndex":I
    if-eq v7, v14, :cond_3

    .line 489
    add-int/lit8 v15, v7, 0x1

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 490
    .local v15, "suffix":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    :cond_2
    goto :goto_3

    :sswitch_7
    const-string v8, "ebook"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    goto :goto_4

    :sswitch_8
    const-string v8, "html"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v12

    goto :goto_4

    :sswitch_9
    const-string v8, "zip"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v10

    goto :goto_4

    :sswitch_a
    const-string v8, "rar"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v13

    goto :goto_4

    :sswitch_b
    const-string v8, "lrc"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v11

    goto :goto_4

    :sswitch_c
    const-string v9, "apk"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_4

    :goto_3
    move v8, v14

    :goto_4
    packed-switch v8, :pswitch_data_1

    goto :goto_5

    .line 507
    :pswitch_7
    const v5, 0xc080068

    goto :goto_5

    .line 504
    :pswitch_8
    const v5, 0xc08006b

    .line 505
    goto :goto_5

    .line 501
    :pswitch_9
    const v5, 0xc08006a

    .line 502
    goto :goto_5

    .line 498
    :pswitch_a
    const v5, 0xc080063

    .line 499
    goto :goto_5

    .line 495
    :pswitch_b
    const v5, 0xc080065

    .line 496
    goto :goto_5

    .line 492
    :pswitch_c
    const v5, 0xc080066

    .line 511
    .end local v15    # "suffix":Ljava/lang/String;
    :cond_3
    :goto_5
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1b0f2 -> :sswitch_6
        0x1b274 -> :sswitch_5
        0x1c270 -> :sswitch_4
        0x37c70a -> :sswitch_3
        0x58d9bd6 -> :sswitch_2
        0x5c752b7 -> :sswitch_1
        0x5ca40550 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x17a1c -> :sswitch_c
        0x1a39d -> :sswitch_b
        0x1b823 -> :sswitch_a
        0x1d721 -> :sswitch_9
        0x3107ab -> :sswitch_8
        0x5bd80ce -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist getChooserProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 571
    const v0, 0xc090420

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

    .line 599
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public whitelist getDisplayFileContentPreview(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 534
    const v0, 0xc09041c

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

    .line 539
    const v0, 0xc09041d

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

    .line 544
    const v0, 0xc09041e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public whitelist getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .param p1, "ii"    # Landroid/content/Intent;
    .param p2, "mPm"    # Landroid/content/pm/PackageManager;

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v1, 0x0

    .line 433
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 434
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 436
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object v1, v3

    .line 437
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v0, v3

    .line 438
    iput-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v3

    .line 443
    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 444
    const/high16 v4, 0x10000

    invoke-virtual {p2, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_1

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    move-object v1, v4

    .line 447
    :cond_2
    if-nez v1, :cond_3

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusResolverManager"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v3

    .line 451
    :cond_3
    return-object v0
.end method

.method public whitelist getResolverProfileDescriptor(Landroid/view/LayoutInflater;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 576
    const v0, 0xc09041f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method blacklist getTargetIntent()Landroid/content/Intent;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public whitelist initActionSend()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "mActionStr":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 198
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 201
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    goto :goto_0

    .line 203
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    .line 205
    :goto_0
    return-void
.end method

.method public whitelist initPreferenceAndPinList()V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    if-nez v0, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/OplusResolverManager;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    .line 414
    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/util/OplusResolverIntentUtil;->isChooserAction(Landroid/content/Intent;)Z

    move-result v0

    .line 415
    .local v0, "isChoose":Z
    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, "type":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "gallery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gallery_pin_list"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mGalleryPinList:Ljava/lang/String;

    .line 419
    :cond_1
    return-void
.end method

.method public whitelist initView(ZZ)V
    .locals 3
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 217
    invoke-direct {p0, p2}, Lcom/android/internal/app/OplusResolverManager;->initDialogHelper(Z)V

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "oplus_drag2Sharing_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->isTabLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->shouldShowEmptyState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0xc0400e4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 224
    return-void

    .line 226
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/OplusResolverManager;->updateView(ZZ)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mLoadedPages:Ljava/util/Set;

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initChooserTopBroadcast()V

    .line 229
    return-void
.end method

.method public whitelist isLoadTheme()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isOriginUi()Z
    .locals 1

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$addNearbyAction$1$com-android-internal-app-OplusResolverManager(Lcom/android/internal/app/chooser/TargetInfo;Landroid/view/View;)V
    .locals 1
    .param p1, "ti"    # Lcom/android/internal/app/chooser/TargetInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 626
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverActivity;->safelyStartActivity(Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 627
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    .line 628
    return-void
.end method

.method synthetic blacklist lambda$changeOShareAndNfc$2$com-android-internal-app-OplusResolverManager()V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initOShareService()V

    return-void
.end method

.method synthetic blacklist lambda$initMultiappCheckBoxIfNeed$0$com-android-internal-app-OplusResolverManager(Ljava/lang/String;Landroid/view/View;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "v"    # Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0xc0401bf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 304
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/multiapp/OplusMultiAppManager;->setMultiAppAccessMode(Ljava/lang/String;I)Z

    .line 305
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    .line 306
    return-void
.end method

.method synthetic blacklist lambda$setButtonAlwaysListener$4$com-android-internal-app-OplusResolverManager(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 959
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget v1, p0, Lcom/android/internal/app/OplusResolverManager;->mLastSelected:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    return-void
.end method

.method synthetic blacklist lambda$setContentView$3$com-android-internal-app-OplusResolverManager()V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 313
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    if-eqz v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getCurrentIsMainScreen()V

    .line 315
    const-string v0, "OplusResolverManager"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->updatePreviewArea()V

    .line 317
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter;->handlePackagesChanged()V

    .line 318
    invoke-direct {p0, p1}, Lcom/android/internal/app/OplusResolverManager;->updateViewByConfigChanged(Landroid/content/res/Configuration;)V

    .line 320
    :cond_0
    return-void
.end method

.method public whitelist onCreate(Lcom/android/internal/app/IResolverActivityExt;)V
    .locals 4
    .param p1, "resolverActivityExt"    # Lcom/android/internal/app/IResolverActivityExt;

    .line 151
    iput-object p1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivityExt:Lcom/android/internal/app/IResolverActivityExt;

    .line 152
    invoke-interface {p1}, Lcom/android/internal/app/IResolverActivityExt;->getResolverActivity()Lcom/android/internal/app/ResolverActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 153
    sget-object v1, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/oplus/theme/IOplusThemeStyle;

    const v3, 0xc030020

    invoke-interface {v1, v3}, Lcom/oplus/theme/IOplusThemeStyle;->getDialogAlertShareThemeStyle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->setTheme(I)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 156
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    const v1, 0xc0a0016

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ResolverActivity;->overridePendingTransition(II)V

    .line 158
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 159
    return-void
.end method

.method public whitelist onDestroy()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->dialogHelperDestroy()V

    .line 179
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->removeProfileSelectedListener(Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mTabListener:Lcom/android/internal/app/OplusResolverManager$TabChangeListener;

    invoke-virtual {v0, v1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->removeProfileSelectedListener(Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mApkPreView:Lcom/oplus/resolver/OplusResolverApkPreView;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverApkPreView;->onDestroy()V

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    if-eqz v0, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 192
    :cond_2
    return-void
.end method

.method public whitelist onPause()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->oSharePause()V

    .line 173
    :cond_0
    return-void
.end method

.method public whitelist onResume()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverDialogHelper;->oShareResume()V

    .line 166
    :cond_0
    return-void
.end method

.method public whitelist resortListAndNotifyChange()V
    .locals 1

    .line 787
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/app/OplusResolverManager;->getResolveInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/OplusResolverManager;->resortListAndNotifyChange(Ljava/util/List;)V

    .line 788
    return-void
.end method

.method public whitelist restoreProfilePager(I)V
    .locals 2
    .param p1, "pageNumber"    # I

    .line 564
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    if-eqz v1, :cond_0

    .line 565
    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oplus/resolver/OplusResolverDialogHelper;->restoreProfilePager(Landroid/view/View;I)V

    .line 567
    :cond_0
    return-void
.end method

.method public whitelist setCustomRoundImage(Landroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "roundRectPaint"    # Landroid/graphics/Paint;
    .param p2, "textPaint"    # Landroid/graphics/Paint;
    .param p3, "overlayPaint"    # Landroid/graphics/Paint;

    .line 590
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 591
    const v1, 0xc050097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 590
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 592
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 593
    const v1, 0xc050094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 592
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 595
    return-void
.end method

.method public whitelist setLastChosen(Lcom/android/internal/app/ResolverListController;Landroid/content/Intent;Landroid/content/IntentFilter;I)V
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

    .line 210
    iget-boolean v0, p0, Lcom/android/internal/app/OplusResolverManager;->mOpenFlag:Z

    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/app/ResolverListController;->setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V

    .line 213
    :cond_0
    return-void
.end method

.method public whitelist setResolverContent()V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 393
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    new-instance v0, Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-direct {v0}, Lcom/android/internal/app/OplusChooserCtsConnection;-><init>()V

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/app/OplusChooserCtsConnection;->testCts(Landroid/content/Context;Lcom/android/internal/app/OplusResolverManager;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;)V

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/internal/app/OplusResolverManager;->getResolveInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 402
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusResolverUtil;->sortCtsTest(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;)V

    .line 404
    invoke-direct {p0, v0}, Lcom/android/internal/app/OplusResolverManager;->resortListAndNotifyChange(Ljava/util/List;)V

    .line 405
    return-void

    .line 394
    .end local v0    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method public whitelist showActiveEmptyViewState()V
    .locals 1

    .line 557
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->shouldShowEmptyState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->showEmptyViewState()V

    .line 560
    :cond_0
    return-void
.end method

.method public whitelist statisticsData(Landroid/content/pm/ResolveInfo;I)V
    .locals 3
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "which"    # I

    .line 423
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "referrerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {p0}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/oplus/resolver/OplusResolverInfoHelper;->statisticsData(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;ILjava/lang/String;)V

    .line 427
    :cond_0
    return-void
.end method

.method public whitelist tryApkResourceName(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 516
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 521
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-static {v2}, Lcom/oplus/util/OplusResolverIntentUtil;->getIntentType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "preType":Ljava/lang/String;
    const-string v4, "application"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    return v0

    .line 526
    :cond_1
    const-string v0, "OplusResolverManager"

    const-string v4, "try apk preview"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    new-instance v0, Lcom/oplus/resolver/OplusResolverApkPreView;

    iget-object v4, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v4}, Lcom/oplus/resolver/OplusResolverApkPreView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mApkPreView:Lcom/oplus/resolver/OplusResolverApkPreView;

    .line 528
    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/resolver/OplusResolverApkPreView;->execute(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 529
    const/4 v0, 0x1

    return v0

    .line 517
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "preType":Ljava/lang/String;
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist updateView(ZZ)V
    .locals 6
    .param p1, "safeForwardingMode"    # Z
    .param p2, "supportsAlwaysUseOption"    # Z

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolveInfoHelper:Lcom/oplus/resolver/OplusResolverInfoHelper;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/OplusResolverManager;->mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 238
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getActiveResolverAdapter()Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverListAdapter;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getPlaceholderCount()I

    move-result v3

    .line 237
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->createView(ZLandroid/os/UserHandle;ZI)Landroid/view/View;

    move-result-object v0

    .line 242
    .local v0, "view":Landroid/view/View;
    const-class v1, Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 243
    invoke-static {v1, v2}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ChooserActivity;

    .line 244
    .local v1, "subChooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-eqz v1, :cond_1

    .line 246
    const v2, 0x1020264

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 247
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getChooserWrapper()Lcom/android/internal/app/IChooserActivityWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mPreviewContainer:Landroid/view/ViewGroup;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IChooserActivityWrapper;->getCreateContentPreviewView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mPreView:Landroid/view/View;

    .line 250
    invoke-direct {p0, v0}, Lcom/android/internal/app/OplusResolverManager;->initMultiappCheckBoxIfNeed(Landroid/view/View;)V

    .line 253
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/app/OplusResolverManager;->setContentView(Landroid/view/View;)V

    .line 255
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    .line 256
    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3, v0, p2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initCheckBox(Landroid/content/Intent;Landroid/view/View;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/OplusResolverManager;->mOpenFlag:Z

    .line 257
    iget-object v2, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2, v3}, Lcom/oplus/resolver/OplusResolverDialogHelper;->showRecommend(Landroid/app/Activity;)V

    .line 259
    new-instance v2, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/OplusResolverManager$ItemClickListener;-><init>(Lcom/android/internal/app/OplusResolverManager;)V

    .line 260
    .local v2, "clickListener":Lcom/android/internal/app/OplusResolverManager$ItemClickListener;
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v3, v2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 261
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v4, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity;->isInMultiWindowMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oplus/resolver/OplusResolverDialogHelper;->setIsSplitScreenMode(Z)V

    .line 263
    iget-boolean v3, p0, Lcom/android/internal/app/OplusResolverManager;->mIsActionSend:Z

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    invoke-virtual {v3, v2}, Lcom/oplus/resolver/OplusResolverDialogHelper;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/app/OplusResolverManager;->changeOShareAndNfc(Landroid/view/View;I)V

    .line 268
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverActivity:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity;->getWorkProfileUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/internal/app/ResolverActivity;->ENABLE_TABBED_VIEW:Z

    if-eqz v3, :cond_5

    .line 270
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const v5, 0xc020076

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;->setIsUserMaxHeight(ZLandroid/view/View;)V

    .line 271
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v4, p0, Lcom/android/internal/app/OplusResolverManager;->mContentPanel:Lcom/oplus/resolver/widget/OplusResolverDrawerLayout;

    invoke-virtual {v3, v4}, Lcom/oplus/resolver/OplusResolverDialogHelper;->addProfileSelectedListener(Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;)V

    .line 272
    iget-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mResolverDialogHelper:Lcom/oplus/resolver/OplusResolverDialogHelper;

    iget-object v4, p0, Lcom/android/internal/app/OplusResolverManager;->mTabListener:Lcom/android/internal/app/OplusResolverManager$TabChangeListener;

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;

    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/internal/app/OplusResolverManager$TabChangeListener;-><init>(Lcom/android/internal/app/OplusResolverManager;Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;)V

    iput-object v4, p0, Lcom/android/internal/app/OplusResolverManager;->mTabListener:Lcom/android/internal/app/OplusResolverManager$TabChangeListener;

    .line 273
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/app/OplusResolverManager;->getMultiProfilePagerAdapter()Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v5

    .line 272
    invoke-virtual {v3, v0, v4, v5}, Lcom/oplus/resolver/OplusResolverDialogHelper;->initTabView(Landroid/view/View;Lcom/oplus/resolver/OplusResolverDialogHelper$OnProfileSelectedListener;I)V

    .line 276
    :cond_5
    const v3, 0xc020090

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mTransparentBottomView:Landroid/widget/ImageView;

    .line 277
    const v3, 0xc02000d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/android/internal/app/OplusResolverManager;->mTabHost:Landroid/widget/TabHost;

    .line 278
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/internal/app/OplusResolverManager;->updateViewByConfigChanged(Landroid/content/res/Configuration;)V

    .line 279
    return-void

    .line 234
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "subChooserActivity":Lcom/android/internal/app/ChooserActivity;
    .end local v2    # "clickListener":Lcom/android/internal/app/OplusResolverManager$ItemClickListener;
    :cond_6
    :goto_2
    return-void
.end method
