.class public Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;
.super Ljava/lang/Object;
.source "AbstractMultiProfilePagerAdapterExtImpl.java"

# interfaces
.implements Lcom/android/internal/app/IAbstractMultiProfilePagerAdapterExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiProfilePagerAdapterExtImpl"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsActionSend:Z

.field private blacklist multiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mIsActionSend:Z

    .line 32
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    iput-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->multiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    .line 33
    return-void
.end method

.method private blacklist getCantShareWithPersonalMessage()Ljava/lang/String;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_PERSONAL"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCantShareWithWorkMessage()Ljava/lang/String;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;)V

    const-string v2, "Core.RESOLVER_CANT_SHARE_WITH_WORK"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getCrossProfileBlockedTitle()Ljava/lang/String;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;)V

    const-string v2, "Core.RESOLVER_CROSS_PROFILE_BLOCKED_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$showWorkProfileOffEmptyState$0(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "listener"    # Landroid/view/View$OnClickListener;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dialog12"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 113
    if-eqz p0, :cond_0

    .line 114
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$showWorkProfileOffEmptyState$1(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog1"    # Landroid/content/DialogInterface;
    .param p1, "whichButton"    # I

    .line 117
    return-void
.end method

.method private blacklist shouldShowEmptyState()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->multiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 67
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

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->multiProfilePagerAdapter:Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->getItem(I)Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;

    move-result-object v0

    .line 72
    .local v0, "descriptor":Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;
    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 73
    .local v1, "parent":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    iget-object v2, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    const v3, 0x102046a

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 78
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 79
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    if-ne v5, v6, :cond_2

    .line 80
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_1

    .line 81
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 83
    :cond_1
    return-void

    .line 85
    :cond_2
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 86
    .local v3, "oldDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    instance-of v5, v3, Landroid/graphics/drawable/Animatable;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    move-object v5, v3

    check-cast v5, Landroid/graphics/drawable/Animatable;

    invoke-interface {v5}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 89
    :cond_3
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 90
    .end local v3    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 91
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    :goto_0
    iget-object v3, v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter$ProfileDescriptor;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_5

    .line 95
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/Animatable;

    invoke-interface {v3}, Landroid/graphics/drawable/Animatable;->start()V

    .line 97
    :cond_5
    return-void
.end method


# virtual methods
.method public blacklist hookResetViewVisibilitiesForConsumerUserEmptyState(Landroid/view/View;)V
    .locals 2
    .param p1, "emptyStateView"    # Landroid/view/View;

    .line 151
    const v0, 0x102046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->isOriginUi()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    return-void
.end method

.method public blacklist init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    .line 38
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    .line 39
    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity;

    .line 40
    .local v0, "resolverActivity":Lcom/android/internal/app/ResolverActivity;
    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "actionStr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 43
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 46
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mIsActionSend:Z

    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mIsActionSend:Z

    .line 51
    .end local v1    # "actionStr":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist isOriginUi()Z
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method synthetic blacklist lambda$getCantShareWithPersonalMessage$5$com-android-internal-app-AbstractMultiProfilePagerAdapterExtImpl()Ljava/lang/String;
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const v1, 0x104081f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCantShareWithWorkMessage$4$com-android-internal-app-AbstractMultiProfilePagerAdapterExtImpl()Ljava/lang/String;
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const v1, 0x1040820

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$getCrossProfileBlockedTitle$3$com-android-internal-app-AbstractMultiProfilePagerAdapterExtImpl()Ljava/lang/String;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const v1, 0x1040821

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$showWorkProfileOffEmptyState$2$com-android-internal-app-AbstractMultiProfilePagerAdapterExtImpl(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 4
    .param p1, "listener"    # Landroid/view/View$OnClickListener;
    .param p2, "v"    # Landroid/view/View;

    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getWrapper()Landroid/app/dialog/IAlertDialogBuilderWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getWrapper()Landroid/app/dialog/IAlertDialogBuilderWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/app/dialog/IAlertDialogBuilderWrapper;->setDialogType(Landroid/app/AlertDialog$Builder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reflect setDialogType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiProfilePagerAdapterExtImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const v1, 0xc0400e2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    const v3, 0xc0400e3

    .line 111
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda2;-><init>()V

    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 118
    return-void
.end method

.method public blacklist showActiveEmptyViewState()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->shouldShowEmptyState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->showEmptyViewState()V

    .line 63
    :cond_0
    return-void
.end method

.method public blacklist showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3
    .param p1, "profilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 124
    const-class v0, Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 126
    .local v0, "subChooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mIsActionSend:Z

    if-eqz v1, :cond_0

    .line 127
    nop

    .line 128
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->getCantShareWithWorkMessage()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoPersonalToWorkIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 133
    :goto_0
    return-void
.end method

.method public blacklist showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;)V
    .locals 3
    .param p1, "profilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;

    .line 138
    const-class v0, Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity;

    .line 140
    .local v0, "subChooserActivity":Lcom/android/internal/app/ChooserActivity;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->mIsActionSend:Z

    if-eqz v1, :cond_0

    .line 141
    nop

    .line 142
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->getCrossProfileBlockedTitle()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-direct {p0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;->getCantShareWithPersonalMessage()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showEmptyState(Lcom/android/internal/app/ResolverListAdapter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showNoWorkToPersonalIntentsEmptyState(Lcom/android/internal/app/ResolverListAdapter;)V

    .line 147
    :goto_0
    return-void
.end method

.method public blacklist showWorkProfileOffEmptyState(Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "profilePagerAdapter"    # Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;
    .param p2, "activeListAdapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p3}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/app/AbstractMultiProfilePagerAdapterExtImpl;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/app/AbstractMultiProfilePagerAdapter;->showWorkProfileOffEmptyState(Lcom/android/internal/app/ResolverListAdapter;Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method
