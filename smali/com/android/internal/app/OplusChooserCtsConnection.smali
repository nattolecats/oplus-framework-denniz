.class public Lcom/android/internal/app/OplusChooserCtsConnection;
.super Ljava/lang/Object;
.source "OplusChooserCtsConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;,
        Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;,
        Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;
    }
.end annotation


# instance fields
.field private final blacklist mChooserHandler:Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mResolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

.field private blacklist mResolverManager:Lcom/android/internal/app/OplusResolverManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserHandler(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mChooserHandler:Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverListAdapter(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/ResolverListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mResolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolverManager(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusResolverManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mResolverManager:Lcom/android/internal/app/OplusResolverManager;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;-><init>(Lcom/android/internal/app/OplusChooserCtsConnection;Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler-IA;)V

    iput-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mChooserHandler:Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;

    return-void
.end method

.method private blacklist convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .line 347
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x0

    return-object v0

    .line 352
    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    .line 357
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0

    .line 359
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 361
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private blacklist getTargetIntentFilter()Landroid/content/IntentFilter;
    .locals 9

    .line 366
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mResolverManager:Lcom/android/internal/app/OplusResolverManager;

    invoke-virtual {v1}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    .line 367
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 368
    .local v2, "dataString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 369
    new-instance v3, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 371
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 372
    return-object v0

    .line 374
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v4, "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "android.intent.extra.STREAM"

    if-eqz v5, :cond_3

    .line 377
    :try_start_1
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 378
    .local v5, "uri":Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 379
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 383
    .local v5, "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    if-eqz v5, :cond_4

    .line 384
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    .end local v5    # "uris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 388
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v6}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v0}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    .end local v6    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 392
    :cond_5
    return-object v3

    .line 393
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    .end local v4    # "contentUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    return-object v0
.end method

.method private blacklist queryDirectShareTargets(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 103
    invoke-direct {p0}, Lcom/android/internal/app/OplusChooserCtsConnection;->getTargetIntentFilter()Landroid/content/IntentFilter;

    move-result-object v6

    .line 104
    .local v6, "filter":Landroid/content/IntentFilter;
    if-nez v6, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    iget-object v7, p2, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    .line 109
    .local v7, "driList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    new-instance v8, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v6

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/OplusChooserCtsConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/OplusChooserCtsConnection;Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V

    invoke-static {v8}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method private blacklist sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 8
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutManager$ShareShortcutInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 402
    .local p1, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .local p2, "driList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    .local p3, "appTargets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resultList and appTargets must have the same size. resultList.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appTargets.size()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 405
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_1
    :goto_0
    if-nez p3, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    .line 410
    .local v0, "shortcutType":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v2, "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 413
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 414
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 413
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 415
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutManager$ShareShortcutInfo;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 418
    .end local v3    # "j":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 419
    goto :goto_4

    .line 421
    :cond_5
    iget-object v3, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3, v2, p1, p3, v0}, Lcom/android/internal/app/ChooserActivity;->convertToChooserTarget(Ljava/util/List;Ljava/util/List;Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 425
    .local v3, "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 426
    .local v4, "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v4, Landroid/os/Message;->what:I

    .line 427
    new-instance v5, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v3, v7, p4}, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Ljava/util/List;Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;Landroid/os/UserHandle;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 428
    iput v0, v4, Landroid/os/Message;->arg1:I

    .line 429
    iget-object v5, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mChooserHandler:Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;

    invoke-virtual {v5, v4}, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    .end local v2    # "matchingShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    .end local v3    # "chooserTargets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    .end local v4    # "msg":Landroid/os/Message;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 431
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$queryDirectShareTargets$0$com-android-internal-app-OplusChooserCtsConnection(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/util/List;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "filter"    # Landroid/content/IntentFilter;
    .param p4, "driList"    # Ljava/util/List;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 111
    .local v0, "selectedProfileContext":Landroid/content/Context;
    nop

    .line 112
    const-string v1, "shortcut"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutManager;

    .line 113
    .local v1, "sm":Landroid/content/pm/ShortcutManager;
    invoke-virtual {v1, p3}, Landroid/content/pm/ShortcutManager;->getShareTargets(Landroid/content/IntentFilter;)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutManager$ShareShortcutInfo;>;"
    const/4 v3, 0x0

    invoke-direct {p0, v2, p4, v3, p2}, Lcom/android/internal/app/OplusChooserCtsConnection;->sendShareShortcutInfoList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 115
    return-void
.end method

.method public whitelist testCts(Landroid/content/Context;Lcom/android/internal/app/OplusResolverManager;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/android/internal/app/OplusResolverManager;
    .param p3, "adapter"    # Lcom/android/internal/app/ResolverListAdapter;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 64
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    iput-object p1, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mResolverListAdapter:Lcom/android/internal/app/ResolverListAdapter;

    .line 70
    iput-object p2, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mResolverManager:Lcom/android/internal/app/OplusResolverManager;

    .line 72
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "originIntent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 74
    .local v1, "pa":[Landroid/os/Parcelable;
    if-eqz v1, :cond_3

    .line 75
    array-length v2, v1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 76
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 77
    aget-object v4, v1, v3

    instance-of v4, v4, Landroid/service/chooser/ChooserTarget;

    if-nez v4, :cond_1

    .line 78
    goto :goto_2

    .line 80
    :cond_1
    aget-object v4, v1, v3

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 81
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    iget-object v6, p0, Lcom/android/internal/app/OplusChooserCtsConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Lcom/android/internal/app/OplusResolverManager;->getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 84
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_2

    .line 85
    goto :goto_1

    .line 87
    :cond_2
    new-instance v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {p2}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v8

    .line 88
    invoke-virtual {p2}, Lcom/android/internal/app/OplusResolverManager;->getTargetIntent()Landroid/content/Intent;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v7, v8, v6, v9, v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 89
    .local v7, "ri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 90
    iget-object v8, p3, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 76
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_3
    :goto_2
    invoke-direct {p0, p1, p3, p4}, Lcom/android/internal/app/OplusChooserCtsConnection;->queryDirectShareTargets(Landroid/content/Context;Lcom/android/internal/app/ResolverListAdapter;Landroid/os/UserHandle;)V

    .line 100
    return-void
.end method
