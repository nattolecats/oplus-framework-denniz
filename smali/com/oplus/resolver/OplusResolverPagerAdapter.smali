.class public Lcom/oplus/resolver/OplusResolverPagerAdapter;
.super Lcom/oplus/widget/OplusPagerAdapter;
.source "OplusResolverPagerAdapter.java"

# interfaces
.implements Lcom/oplus/resolver/IOplusResolverGridItemClickListener;


# static fields
.field public static whitelist COLUMN_SIZE:I = 0x0

.field public static final whitelist COLUMN_SIZE_DEFAULT:I = 0x4

.field public static final whitelist COLUMN_SIZE_FOR_CTS:I = 0x8

.field private static final blacklist COLUMN_SIZE_MODULUS:I = 0x2

.field private static final blacklist COLUMN_SIZE_SPECIAL:I = 0x3

.field public static final whitelist COLUMN_SIZE_TABLET:I = 0x5

.field private static final blacklist DEFAULT_CHECK_DP_WIDTH:I = 0x168

.field private static final blacklist DEFAULT_CHECK_SCREEN_WIDTH:I = 0x280

.field private static final blacklist DEFAULT_EXPORT_CHECK_DP_HEIGHT:I = 0x216

.field private static final blacklist DEFAULT_INSIDE_CHECK_DP_HEIGHT:I = 0x1ca

.field public static final whitelist KEY_FOLDING_MODE:Ljava/lang/String; = "oplus_system_folding_mode"

.field public static final whitelist TAG:Ljava/lang/String; = "OplusResolverPagerAdapter"


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mChosenComponentSender:Landroid/content/IntentSender;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsChecked:Z

.field private blacklist mIsChooserCtsTest:Z

.field private blacklist mOriginIntent:Landroid/content/Intent;

.field private blacklist mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

.field private blacklist mPagerSize:I

.field private blacklist mPlaceholderCount:I

.field private blacklist mRiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSafeForwardingMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 73
    const/4 v0, 0x4

    sput v0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    return-void
.end method

.method public constructor whitelist <init>(ZLandroid/os/UserHandle;Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Z)V
    .locals 2
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "context"    # Landroid/content/Context;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "checkbox"    # Landroid/widget/CheckBox;
    .param p7, "safeForwardingMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/os/UserHandle;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/widget/CheckBox;",
            "Z)V"
        }
    .end annotation

    .line 88
    .local p4, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/oplus/widget/OplusPagerAdapter;-><init>()V

    .line 75
    sget v0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mIsChecked:Z

    .line 89
    move-object v0, p3

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 90
    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    .line 91
    iput-object p4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    .line 92
    iput-object p5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    .line 93
    iput-boolean p7, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mSafeForwardingMode:Z

    .line 94
    new-instance v0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    .line 95
    invoke-virtual {v0, p0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V

    .line 96
    invoke-virtual {p0, p1, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 97
    if-eqz p6, :cond_0

    .line 98
    new-instance v0, Lcom/oplus/resolver/OplusResolverPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oplus/resolver/OplusResolverPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/resolver/OplusResolverPagerAdapter;)V

    invoke-virtual {p6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mIsChooserCtsTest:Z

    .line 102
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->resetColumnSize()V

    .line 103
    return-void
.end method

.method private blacklist calculateColumnSize(Landroid/content/res/OplusBaseConfiguration;)I
    .locals 7
    .param p1, "cfg"    # Landroid/content/res/OplusBaseConfiguration;

    .line 210
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 211
    const v1, 0xc0500c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 212
    .local v0, "itemWidth":F
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 213
    const v2, 0xc050098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 214
    .local v1, "margin":F
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 215
    .local v2, "outMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 216
    iget v3, p1, Landroid/content/res/OplusBaseConfiguration;->screenWidthDp:I

    const/16 v4, 0x280

    if-lt v3, v4, :cond_0

    .line 217
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/oplus/resolver/OplusResolverUtils;->calculateResponsiveUIWidth(Landroid/content/Context;Landroid/content/res/OplusBaseConfiguration;)I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    .line 218
    :cond_0
    iget v3, p1, Landroid/content/res/OplusBaseConfiguration;->screenWidthDp:I

    int-to-float v3, v3

    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    :goto_0
    nop

    .line 219
    .local v3, "checkWidth":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",cfg.screenWidthDp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/content/res/OplusBaseConfiguration;->screenWidthDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",density="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",margin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",itemWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusResolverPagerAdapter"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v1, v4

    sub-float v5, v3, v5

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float/2addr v6, v0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 225
    const/4 v4, 0x5

    return v4

    .line 226
    :cond_1
    mul-float/2addr v4, v1

    sub-float v4, v3, v4

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    .line 227
    const/4 v4, 0x4

    return v4

    .line 229
    :cond_2
    const/4 v4, 0x3

    return v4
.end method

.method private static blacklist isInLockTaskMode()Z
    .locals 2

    .line 375
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist onActivityStarted(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 413
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 415
    .local v0, "target":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 416
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 418
    .local v1, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    goto :goto_0

    .line 419
    :catch_0
    move-exception v2

    .line 423
    .end local v0    # "target":Landroid/content/ComponentName;
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist resetColumnSize()V
    .locals 2

    .line 155
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mIsChooserCtsTest:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    .line 156
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->setColumnSize(I)V

    .line 157
    return-void
.end method

.method private blacklist safelyStartActivity(Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "safeForwardingMode"    # Z

    .line 382
    if-nez p3, :cond_0

    .line 384
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 385
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->onActivityStarted(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 389
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 398
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    :try_start_1
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 399
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->onActivityStarted(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 409
    goto :goto_2

    .line 400
    :catch_1
    move-exception v0

    .line 404
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 407
    .local v1, "launchedFromPackage":Ljava/lang/String;
    goto :goto_1

    .line 405
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 406
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    move-object v1, v2

    .line 408
    .local v1, "launchedFromPackage":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " safelyStartActivity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusResolverPagerAdapter"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist OnItemClick(I)V
    .locals 17
    .param p1, "position"    # I

    .line 262
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    invoke-interface {v0, v2}, Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;->OnItemClick(I)V

    goto/16 :goto_8

    .line 266
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 267
    .local v3, "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/Intent;

    iget-object v4, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v4, v0

    .line 268
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v0, 0x3000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    if-gez v2, :cond_1

    goto/16 :goto_9

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "OplusResolverPagerAdapter"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 274
    .local v5, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 275
    invoke-static {}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    iget-boolean v6, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mSafeForwardingMode:Z

    invoke-direct {v1, v4, v0, v6}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->safelyStartActivity(Landroid/content/Intent;Landroid/app/Activity;Z)V

    .line 278
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    const v6, 0xc0a000e

    const v7, 0xc0a0011

    invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 281
    :cond_2
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 282
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mIsChecked:Z

    if-eqz v0, :cond_e

    .line 283
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 284
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    :cond_3
    invoke-virtual {v4}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 287
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    .line 288
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 289
    .local v8, "cat":Ljava/lang/String;
    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 290
    .end local v8    # "cat":Ljava/lang/String;
    goto :goto_0

    .line 292
    :cond_4
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 294
    iget v0, v6, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v8, 0xfff0000

    and-int/2addr v8, v0

    .line 295
    .local v8, "cat":I
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 296
    .local v9, "data":Landroid/net/Uri;
    const/high16 v10, 0x600000

    if-ne v8, v10, :cond_5

    .line 297
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, "mimeType":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 300
    :try_start_0
    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_1

    .line 301
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 302
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v3, 0x0

    .line 306
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v11    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v3, :cond_b

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 310
    if-ne v8, v10, :cond_6

    .line 311
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v10, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v10, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 312
    :cond_6
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 316
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_b

    .line 317
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 318
    .local v0, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v0, :cond_9

    .line 319
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 321
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v9}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v11

    if-ltz v11, :cond_8

    .line 322
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v11

    .line 323
    .local v11, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v12

    if-ltz v11, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_7
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v3, v12, v13}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    goto :goto_4

    .line 326
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "port":I
    :cond_8
    goto :goto_2

    .line 328
    :cond_9
    :goto_4
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v10}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v10

    .line 329
    .local v10, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v10, :cond_b

    .line 330
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, "path":Ljava/lang/String;
    :goto_5
    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 332
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PatternMatcher;

    .line 333
    .local v12, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v12, v11}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 334
    invoke-virtual {v12}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Landroid/os/PatternMatcher;->getType()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 335
    goto :goto_6

    .line 337
    .end local v12    # "p":Landroid/os/PatternMatcher;
    :cond_a
    goto :goto_5

    .line 342
    .end local v0    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v10    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v11    # "path":Ljava/lang/String;
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 343
    .local v0, "N":I
    new-array v10, v0, [Landroid/content/ComponentName;

    .line 344
    .local v10, "set":[Landroid/content/ComponentName;
    const/4 v11, 0x0

    .line 345
    .local v11, "bestMatch":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v0, :cond_d

    .line 346
    iget-object v13, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 347
    .local v13, "r":Landroid/content/pm/ResolveInfo;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v16, v0

    .end local v0    # "N":I
    .local v16, "N":I
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v10, v12

    .line 348
    iget v0, v13, Landroid/content/pm/ResolveInfo;->match:I

    if-le v0, v11, :cond_c

    .line 349
    iget v0, v13, Landroid/content/pm/ResolveInfo;->match:I

    move v11, v0

    .line 345
    .end local v13    # "r":Landroid/content/pm/ResolveInfo;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    goto :goto_7

    .end local v16    # "N":I
    .restart local v0    # "N":I
    :cond_d
    move/from16 v16, v0

    .line 352
    .end local v0    # "N":I
    .end local v12    # "i":I
    .restart local v16    # "N":I
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v0, v3, v11, v10, v12}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 354
    .end local v7    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "cat":I
    .end local v9    # "data":Landroid/net/Uri;
    .end local v10    # "set":[Landroid/content/ComponentName;
    .end local v11    # "bestMatch":I
    .end local v16    # "N":I
    :cond_e
    iget-object v0, v1, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->dismiss()V

    .line 356
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_8
    return-void

    .line 270
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_f
    :goto_9
    return-void
.end method

.method public whitelist OnItemLongClick(I)V
    .locals 1
    .param p1, "position"    # I

    .line 364
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    invoke-interface {v0, p1}, Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;->OnItemLongClick(I)V

    .line 367
    :cond_0
    return-void
.end method

.method public whitelist clearDrawableCache()V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->clearDrawableCache()V

    .line 441
    :cond_0
    return-void
.end method

.method public whitelist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 133
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 134
    return-void
.end method

.method public whitelist getCount()I
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->isNeedMoreIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getMoreIconTotalPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    .line 109
    :cond_2
    :goto_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPlaceholderCount:I

    int-to-double v0, v0

    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public whitelist getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 138
    const/4 v0, -0x2

    return v0
.end method

.method public whitelist getMoreIconTotalPosition()I
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->getMoreIconTotalPosition()I

    move-result v0

    return v0
.end method

.method public whitelist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 123
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    iget v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    iget v5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPlaceholderCount:I

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->loadBitmap(Landroid/content/Intent;Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, "appInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    invoke-virtual {p0, p2, v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->onInstantiateDataFinished(ILjava/util/List;)V

    .line 126
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    invoke-virtual {v1, v0, p2, v2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->createPagerView(Ljava/util/List;II)Landroid/view/View;

    move-result-object v1

    .line 127
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 128
    return-object v1
.end method

.method public whitelist isMoreIconPositionAndClick(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 238
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v0, p1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->isMoreIconPosition(I)Z

    move-result v0

    .line 239
    .local v0, "isMoreIconPosition":Z
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->clickMoreIcon()V

    .line 241
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->notifyDataSetChanged()V

    .line 243
    :cond_0
    return v0
.end method

.method public whitelist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 118
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$new$0$com-oplus-resolver-OplusResolverPagerAdapter(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 98
    iput-boolean p2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mIsChecked:Z

    return-void
.end method

.method public whitelist loadBitmap(ILcom/oplus/widget/OplusGridView;)V
    .locals 0
    .param p1, "pagerNumber"    # I
    .param p2, "gridView"    # Lcom/oplus/widget/OplusGridView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    return-void
.end method

.method public whitelist onInstantiateDataFinished(ILjava/util/List;)V
    .locals 2
    .param p1, "pagerNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    new-instance v0, Lcom/oplus/widget/OplusGridView;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/widget/OplusGridView;-><init>(Landroid/content/Context;)V

    .line 143
    .local v0, "gridView":Lcom/oplus/widget/OplusGridView;
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v1, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->listToArray(Ljava/util/List;)[[Lcom/oplus/widget/OplusItem;

    move-result-object v1

    .line 144
    .local v1, "items":[[Lcom/oplus/widget/OplusItem;
    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusGridView;->setAppInfo([[Lcom/oplus/widget/OplusItem;)V

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->loadBitmap(ILcom/oplus/widget/OplusGridView;)V

    .line 147
    return-void
.end method

.method public whitelist onItemClick(II)V
    .locals 1
    .param p1, "pagerNumber"    # I
    .param p2, "position"    # I

    .line 256
    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->OnItemClick(I)V

    .line 257
    return-void
.end method

.method public whitelist onItemLongClick(II)V
    .locals 1
    .param p1, "pagerNumber"    # I
    .param p2, "position"    # I

    .line 360
    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->OnItemLongClick(I)V

    .line 361
    return-void
.end method

.method public whitelist setChosenComponentSender(Landroid/content/IntentSender;)V
    .locals 0
    .param p1, "is"    # Landroid/content/IntentSender;

    .line 430
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 431
    return-void
.end method

.method public whitelist setPlaceholderCount(I)V
    .locals 0
    .param p1, "placeholderCount"    # I

    .line 251
    iput p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPlaceholderCount:I

    .line 252
    return-void
.end method

.method public whitelist unRegister()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 371
    return-void
.end method

.method public whitelist updateIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 434
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    .line 435
    return-void
.end method

.method public whitelist updateNeedMoreIcon(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 234
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->updateNeedMoreIcon(Landroid/content/Intent;I)V

    .line 235
    return-void
.end method

.method public whitelist updatePageSize()V
    .locals 2

    .line 150
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 151
    return-void
.end method

.method public whitelist updatePageSize(ZLandroid/os/UserHandle;)V
    .locals 6
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 160
    const-string v0, "OplusResolverPagerAdapter"

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v1

    .line 161
    .local v1, "cfg":Landroid/content/res/OplusBaseConfiguration;
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->resetColumnSize()V

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, "isMainScreen":Z
    :try_start_0
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oplus_system_folding_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 167
    goto :goto_1

    .line 165
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get value error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageSize isMainScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v3, 0x2

    if-eqz v2, :cond_3

    .line 170
    iget v4, v1, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 171
    sget v4, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    goto :goto_3

    .line 173
    :cond_1
    iget v4, v1, Landroid/content/res/OplusBaseConfiguration;->screenWidthDp:I

    const/16 v5, 0x168

    if-ge v4, v5, :cond_2

    .line 174
    const/4 v4, 0x3

    sput v4, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    .line 176
    :cond_2
    sget v4, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    goto :goto_3

    .line 179
    :cond_3
    iget v4, v1, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    if-eq v4, v3, :cond_5

    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 182
    :cond_4
    sget v4, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    goto :goto_3

    .line 180
    :cond_5
    :goto_2
    sget v4, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    .line 187
    :goto_3
    invoke-static {}, Lcom/oplus/resolver/OplusResolverUtils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 188
    const-string v4, "isTablet"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0, v1}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->calculateColumnSize(Landroid/content/res/OplusBaseConfiguration;)I

    move-result v0

    sput v0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    .line 190
    iput v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    .line 191
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 192
    const-string v4, "oplus.software.resolver_share_email"

    invoke-virtual {v0, v4}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 193
    .local v0, "isExport":Z
    if-eqz v0, :cond_6

    iget v4, v1, Landroid/content/res/OplusBaseConfiguration;->screenHeightDp:I

    const/16 v5, 0x216

    if-gt v4, v5, :cond_7

    :cond_6
    if-nez v0, :cond_8

    iget v4, v1, Landroid/content/res/OplusBaseConfiguration;->screenHeightDp:I

    const/16 v5, 0x1ca

    if-le v4, v5, :cond_8

    .line 195
    :cond_7
    sget v4, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    mul-int/2addr v4, v3

    iput v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    .line 198
    .end local v0    # "isExport":Z
    :cond_8
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mIsChooserCtsTest:Z

    if-eqz v0, :cond_9

    .line 199
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverPagerAdapter;->resetColumnSize()V

    .line 200
    sget v0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    mul-int/2addr v0, v3

    iput v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    .line 202
    :cond_9
    if-eqz p1, :cond_a

    .line 203
    iget v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    sget v3, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerSize:I

    .line 205
    :cond_a
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-virtual {v0, p2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->updateUserHandle(Landroid/os/UserHandle;)V

    .line 206
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    sget v3, Lcom/oplus/resolver/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    invoke-virtual {v0, v3}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->setColumnSize(I)V

    .line 207
    return-void
.end method
