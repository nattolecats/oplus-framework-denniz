.class public Lcom/oplus/widget/OplusResolverPagerAdapter;
.super Lcom/oplus/widget/OplusPagerAdapter;
.source "OplusResolverPagerAdapter.java"

# interfaces
.implements Lcom/oplus/resolver/IOplusResolverGridItemClickListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static whitelist COLUMN_SIZE:I = 0x0

.field private static final blacklist COLUMN_SIZE_DEFAULT:I = 0x4

.field private static final blacklist COLUMN_SIZE_FOR_CTS:I = 0x8

.field private static final blacklist COLUMN_SIZE_MODULUS:I = 0x2

.field private static final blacklist COLUMN_SIZE_SPECIAL:I = 0x3

.field private static final blacklist DEFAULT_CHECK_DP_WIDTH:I = 0x168

.field public static final whitelist KEY_FOLDING_MODE:Ljava/lang/String; = "oplus_system_folding_mode"

.field public static final whitelist TAG:Ljava/lang/String; = "OplusResolverPagerAdapter"


# instance fields
.field private blacklist mActivity:Landroid/app/Activity;

.field private blacklist mChosenComponentSender:Landroid/content/IntentSender;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsChecked:Z

.field private blacklist mIsChooserCtsTest:Z

.field private blacklist mOriginIntent:Landroid/content/Intent;

.field private blacklist mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

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

    .line 64
    const/4 v0, 0x4

    sput v0, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "checkbox"    # Landroid/widget/CheckBox;
    .param p5, "safeForwardingMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/widget/CheckBox;",
            "Z)V"
        }
    .end annotation

    .line 97
    .local p2, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/oplus/widget/OplusResolverPagerAdapter;-><init>(ZLandroid/os/UserHandle;Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;Landroid/widget/CheckBox;Z)V

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ILandroid/content/Intent;Landroid/widget/CheckBox;Landroid/app/Dialog;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "pagecount"    # I
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "checkbox"    # Landroid/widget/CheckBox;
    .param p7, "alertDialog"    # Landroid/app/Dialog;
    .param p8, "safeForwardingMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusGridView;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I",
            "Landroid/content/Intent;",
            "Landroid/widget/CheckBox;",
            "Landroid/app/Dialog;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 81
    .local p2, "listOplusGridView":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusGridView;>;"
    .local p3, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/oplus/widget/OplusPagerAdapter;-><init>()V

    .line 66
    sget v0, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChecked:Z

    .line 82
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 83
    iput-object p1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    .line 85
    iput-object p5, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    .line 86
    iput-boolean p8, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mSafeForwardingMode:Z

    .line 87
    new-instance v1, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    invoke-direct {v1, p1, p7}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    .line 88
    invoke-virtual {v1, p0}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V

    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oplus/widget/OplusResolverPagerAdapter;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 90
    if-eqz p6, :cond_0

    .line 91
    new-instance v0, Lcom/oplus/widget/OplusResolverPagerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/oplus/widget/OplusResolverPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/widget/OplusResolverPagerAdapter;)V

    invoke-virtual {p6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 93
    :cond_0
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

    .line 101
    .local p4, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/oplus/widget/OplusPagerAdapter;-><init>()V

    .line 66
    sget v0, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChecked:Z

    .line 102
    move-object v0, p3

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    .line 103
    iput-object p3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    .line 104
    iput-object p4, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    .line 105
    iput-object p5, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    .line 106
    iput-boolean p7, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mSafeForwardingMode:Z

    .line 107
    new-instance v0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;-><init>(Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    .line 108
    invoke-virtual {v0, p0}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/oplus/widget/OplusResolverPagerAdapter;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 110
    if-eqz p6, :cond_0

    .line 111
    new-instance v0, Lcom/oplus/widget/OplusResolverPagerAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/oplus/widget/OplusResolverPagerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/widget/OplusResolverPagerAdapter;)V

    invoke-virtual {p6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p5}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChooserCtsTest:Z

    .line 116
    invoke-direct {p0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->resetColumnSize()V

    .line 117
    return-void
.end method

.method private blacklist getReplacementIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "defIntent"    # Landroid/content/Intent;

    .line 375
    iget v0, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 376
    return-object p2

    .line 378
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 379
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object v1, p2

    .line 380
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 381
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 387
    const/4 v2, 0x0

    const-string v3, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 389
    :cond_2
    return-object v1
.end method

.method private static blacklist isInLockTaskMode()Z
    .locals 2

    .line 324
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist onActivityStarted(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .line 362
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 364
    .local v0, "target":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 365
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 367
    .local v1, "fillIn":Landroid/content/Intent;
    :try_start_0
    iget-object v3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    iget-object v4, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    goto :goto_0

    .line 368
    :catch_0
    move-exception v2

    .line 372
    .end local v0    # "target":Landroid/content/ComponentName;
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist resetColumnSize()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChooserCtsTest:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    .line 165
    iget-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->setColumnSize(I)V

    .line 166
    return-void
.end method

.method private blacklist safelyStartActivity(Landroid/content/Intent;Landroid/app/Activity;Z)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "safeForwardingMode"    # Z

    .line 331
    if-nez p3, :cond_0

    .line 333
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusResolverPagerAdapter;->onActivityStarted(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 338
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 347
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, -0x2710

    :try_start_1
    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 348
    invoke-direct {p0, p1}, Lcom/oplus/widget/OplusResolverPagerAdapter;->onActivityStarted(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    goto :goto_2

    .line 349
    :catch_1
    move-exception v0

    .line 353
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

    .line 356
    .local v1, "launchedFromPackage":Ljava/lang/String;
    goto :goto_1

    .line 354
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 355
    .local v1, "e2":Landroid/os/RemoteException;
    const-string v2, "??"

    move-object v1, v2

    .line 357
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

    .line 359
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "launchedFromPackage":Ljava/lang/String;
    :goto_2
    return-void
.end method


# virtual methods
.method public whitelist OnItemClick(I)V
    .locals 17
    .param p1, "position"    # I

    .line 209
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    invoke-interface {v0, v2}, Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;->OnItemClick(I)V

    goto/16 :goto_8

    .line 213
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 214
    .local v3, "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/Intent;

    iget-object v4, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x3000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 216
    iget-object v4, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_f

    if-gez v2, :cond_1

    goto/16 :goto_9

    .line 219
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OplusResolverPagerAdapter"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v4, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 221
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {v1, v4, v0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->getReplacementIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    .line 222
    .end local v0    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 223
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 224
    invoke-static {}, Lcom/oplus/widget/OplusResolverPagerAdapter;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    iget-boolean v7, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mSafeForwardingMode:Z

    invoke-direct {v1, v5, v0, v7}, Lcom/oplus/widget/OplusResolverPagerAdapter;->safelyStartActivity(Landroid/content/Intent;Landroid/app/Activity;Z)V

    .line 227
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    sget-object v7, Lcom/android/internal/app/IOplusResolverStyle;->DEFAULT:Lcom/android/internal/app/IOplusResolverStyle;

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-static {v7, v9}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/IOplusResolverStyle;

    invoke-interface {v7}, Lcom/android/internal/app/IOplusResolverStyle;->getActivityStartAnimationRes()I

    move-result v7

    sget-object v9, Lcom/android/internal/app/IOplusResolverStyle;->DEFAULT:Lcom/android/internal/app/IOplusResolverStyle;

    new-array v8, v8, [Ljava/lang/Object;

    .line 228
    invoke-static {v9, v8}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/IOplusResolverStyle;

    invoke-interface {v8}, Lcom/android/internal/app/IOplusResolverStyle;->getActivityStartAnimationRes()I

    move-result v8

    .line 227
    invoke-virtual {v0, v7, v8}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 230
    :cond_2
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget-boolean v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChecked:Z

    if-eqz v0, :cond_e

    .line 232
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    :cond_3
    invoke-virtual {v5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 236
    .local v8, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_4

    .line 237
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 238
    .local v9, "cat":Ljava/lang/String;
    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 239
    .end local v9    # "cat":Ljava/lang/String;
    goto :goto_0

    .line 241
    :cond_4
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 243
    iget v0, v7, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v9, 0xfff0000

    and-int/2addr v9, v0

    .line 244
    .local v9, "cat":I
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 245
    .local v10, "data":Landroid/net/Uri;
    const/high16 v11, 0x600000

    if-ne v9, v11, :cond_5

    .line 246
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 247
    .local v12, "mimeType":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 249
    :try_start_0
    invoke-virtual {v3, v12}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    move-object v13, v0

    move-object v0, v13

    .line 251
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v3, 0x0

    .line 255
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v12    # "mimeType":Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 259
    if-ne v9, v11, :cond_6

    .line 260
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v11, "file"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v11, "content"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 261
    :cond_6
    invoke-virtual {v10}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 265
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 267
    .local v0, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v0, :cond_9

    .line 268
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 269
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/IntentFilter$AuthorityEntry;

    .line 270
    .local v11, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v11, v10}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v12

    if-ltz v12, :cond_8

    .line 271
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v12

    .line 272
    .local v12, "port":I
    invoke-virtual {v11}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v13

    if-ltz v12, :cond_7

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v3, v13, v14}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    goto :goto_4

    .line 275
    .end local v11    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v12    # "port":I
    :cond_8
    goto :goto_2

    .line 277
    :cond_9
    :goto_4
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v11}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 278
    .local v11, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v11, :cond_b

    .line 279
    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 280
    .local v12, "path":Ljava/lang/String;
    :goto_5
    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 281
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PatternMatcher;

    .line 282
    .local v13, "p":Landroid/os/PatternMatcher;
    invoke-virtual {v13, v12}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 283
    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Landroid/os/PatternMatcher;->getType()I

    move-result v15

    invoke-virtual {v3, v14, v15}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 284
    goto :goto_6

    .line 286
    .end local v13    # "p":Landroid/os/PatternMatcher;
    :cond_a
    goto :goto_5

    .line 291
    .end local v0    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v11    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v12    # "path":Ljava/lang/String;
    :cond_b
    :goto_6
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 292
    .local v0, "N":I
    new-array v11, v0, [Landroid/content/ComponentName;

    .line 293
    .local v11, "set":[Landroid/content/ComponentName;
    const/4 v12, 0x0

    .line 294
    .local v12, "bestMatch":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    if-ge v13, v0, :cond_d

    .line 295
    iget-object v14, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 296
    .local v14, "r":Landroid/content/pm/ResolveInfo;
    new-instance v15, Landroid/content/ComponentName;

    move/from16 v16, v0

    .end local v0    # "N":I
    .local v16, "N":I
    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v15, v11, v13

    .line 297
    iget v0, v14, Landroid/content/pm/ResolveInfo;->match:I

    if-le v0, v12, :cond_c

    .line 298
    iget v0, v14, Landroid/content/pm/ResolveInfo;->match:I

    move v12, v0

    .line 294
    .end local v14    # "r":Landroid/content/pm/ResolveInfo;
    :cond_c
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p1

    move/from16 v0, v16

    goto :goto_7

    .end local v16    # "N":I
    .restart local v0    # "N":I
    :cond_d
    move/from16 v16, v0

    .line 301
    .end local v0    # "N":I
    .end local v13    # "i":I
    .restart local v16    # "N":I
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v3, v12, v11, v2}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 303
    .end local v8    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9    # "cat":I
    .end local v10    # "data":Landroid/net/Uri;
    .end local v11    # "set":[Landroid/content/ComponentName;
    .end local v12    # "bestMatch":I
    .end local v16    # "N":I
    :cond_e
    iget-object v0, v1, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    invoke-virtual {v0}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->dismiss()V

    .line 305
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :goto_8
    return-void

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :cond_f
    :goto_9
    return-void
.end method

.method public whitelist OnItemLongClick(I)V
    .locals 1
    .param p1, "position"    # I

    .line 313
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOplusResolverItemEventListener:Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;

    invoke-interface {v0, p1}, Lcom/oplus/widget/OplusPagerAdapter$OplusResolverItemEventListener;->OnItemLongClick(I)V

    .line 316
    :cond_0
    return-void
.end method

.method public whitelist destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 142
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public whitelist getCount()I
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

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

    .line 147
    const/4 v0, -0x2

    return v0
.end method

.method public whitelist instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 132
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    iget-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mRiList:Ljava/util/List;

    iget v4, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    iget v5, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPlaceholderCount:I

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->loadBitmap(Landroid/content/Intent;Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    .line 133
    .local v0, "appInfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    invoke-virtual {p0, p2, v0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->onInstantiateDataFinished(ILjava/util/List;)V

    .line 135
    iget-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    iget v2, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    invoke-virtual {v1, v0, p2, v2}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->createPagerView(Ljava/util/List;II)Landroid/view/View;

    move-result-object v1

    .line 136
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 137
    return-object v1
.end method

.method public whitelist isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 127
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$new$0$com-oplus-widget-OplusResolverPagerAdapter(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 91
    iput-boolean p2, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChecked:Z

    return-void
.end method

.method synthetic blacklist lambda$new$1$com-oplus-widget-OplusResolverPagerAdapter(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 111
    iput-boolean p2, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mIsChecked:Z

    return-void
.end method

.method public whitelist loadBitmap(ILcom/oplus/widget/OplusGridView;)V
    .locals 0
    .param p1, "pagerNumber"    # I
    .param p2, "gridView"    # Lcom/oplus/widget/OplusGridView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
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

    .line 151
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    new-instance v0, Lcom/oplus/widget/OplusGridView;

    iget-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oplus/widget/OplusGridView;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "gridView":Lcom/oplus/widget/OplusGridView;
    iget-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    invoke-virtual {v1, p2}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->listToArray(Ljava/util/List;)[[Lcom/oplus/widget/OplusItem;

    move-result-object v1

    .line 153
    .local v1, "items":[[Lcom/oplus/widget/OplusItem;
    invoke-virtual {v0, v1}, Lcom/oplus/widget/OplusGridView;->setAppInfo([[Lcom/oplus/widget/OplusItem;)V

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->loadBitmap(ILcom/oplus/widget/OplusGridView;)V

    .line 156
    return-void
.end method

.method public whitelist onItemClick(II)V
    .locals 1
    .param p1, "pagerNumber"    # I
    .param p2, "position"    # I

    .line 203
    iget v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->OnItemClick(I)V

    .line 204
    return-void
.end method

.method public whitelist onItemLongClick(II)V
    .locals 1
    .param p1, "pagerNumber"    # I
    .param p2, "position"    # I

    .line 309
    iget v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->OnItemLongClick(I)V

    .line 310
    return-void
.end method

.method public whitelist setChosenComponentSender(Landroid/content/IntentSender;)V
    .locals 0
    .param p1, "is"    # Landroid/content/IntentSender;

    .line 397
    iput-object p1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mChosenComponentSender:Landroid/content/IntentSender;

    .line 398
    return-void
.end method

.method public whitelist unRegister()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 320
    return-void
.end method

.method public whitelist updateIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 401
    iput-object p1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mOriginIntent:Landroid/content/Intent;

    .line 402
    return-void
.end method

.method public whitelist updatePageSize(Z)V
    .locals 1
    .param p1, "workProfile"    # Z

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->updatePageSize(ZLandroid/os/UserHandle;)V

    .line 160
    return-void
.end method

.method public whitelist updatePageSize(ZLandroid/os/UserHandle;)V
    .locals 6
    .param p1, "workProfile"    # Z
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 169
    const-string v0, "OplusResolverPagerAdapter"

    iget-object v1, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 170
    .local v1, "cfg":Landroid/content/res/Configuration;
    invoke-direct {p0}, Lcom/oplus/widget/OplusResolverPagerAdapter;->resetColumnSize()V

    .line 171
    const/4 v2, 0x0

    .line 173
    .local v2, "isMainScreen":Z
    :try_start_0
    iget-object v3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

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

    .line 176
    goto :goto_1

    .line 174
    :catch_0
    move-exception v3

    .line 175
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

    .line 177
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

    .line 178
    const/4 v0, 0x2

    if-eqz v2, :cond_3

    .line 179
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    sget v0, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    goto :goto_3

    .line 182
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x168

    if-ge v3, v4, :cond_2

    .line 183
    const/4 v3, 0x3

    sput v3, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    .line 185
    :cond_2
    sget v3, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    goto :goto_3

    .line 188
    :cond_3
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v0, :cond_5

    iget-object v3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 191
    :cond_4
    sget v3, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    mul-int/2addr v3, v0

    iput v3, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    goto :goto_3

    .line 189
    :cond_5
    :goto_2
    sget v0, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    iput v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    .line 194
    :goto_3
    if-eqz p1, :cond_6

    .line 195
    iget v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    sget v3, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerSize:I

    .line 197
    :cond_6
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    invoke-virtual {v0, p2}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->updateUserHandle(Landroid/os/UserHandle;)V

    .line 198
    iget-object v0, p0, Lcom/oplus/widget/OplusResolverPagerAdapter;->mPagerAdapterHelper:Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;

    sget v3, Lcom/oplus/widget/OplusResolverPagerAdapter;->COLUMN_SIZE:I

    invoke-virtual {v0, v3}, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->setColumnSize(I)V

    .line 199
    return-void
.end method
