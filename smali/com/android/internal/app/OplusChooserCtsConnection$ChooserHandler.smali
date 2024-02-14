.class Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;
.super Landroid/os/Handler;
.source "OplusChooserCtsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/OplusChooserCtsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChooserHandler"
.end annotation


# static fields
.field private static final blacklist CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final blacklist SHORTCUT_MANAGER_SHARE_TARGET_RESULT:I = 0x4


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/OplusChooserCtsConnection;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/OplusChooserCtsConnection;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/OplusChooserCtsConnection;Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;-><init>(Lcom/android/internal/app/OplusChooserCtsConnection;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 297
    iget-object v0, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v0}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    return-void

    .line 301
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 324
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;

    .line 325
    .local v0, "resultInfo":Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;
    iget-object v3, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 326
    iget-object v3, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 327
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 328
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 329
    iget-object v6, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v6}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmResolverManager(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusResolverManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v7}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/app/OplusResolverManager;->getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 330
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_1

    .line 331
    goto :goto_0

    .line 333
    :cond_1
    new-instance v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v8, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 334
    invoke-virtual {v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {v7, v8, v6, v9, v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 335
    .local v7, "ri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 336
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 337
    iget-object v8, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v8}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmResolverListAdapter(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 338
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    goto :goto_0

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v1}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmResolverManager(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusResolverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/OplusResolverManager;->resortListAndNotifyChange()V

    goto/16 :goto_2

    .line 303
    .end local v0    # "resultInfo":Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;

    .line 304
    .local v0, "sri":Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;
    iget-object v3, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->resultTargets:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 305
    iget-object v3, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->resultTargets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 306
    .restart local v4    # "target":Landroid/service/chooser/ChooserTarget;
    new-instance v5, Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 307
    .restart local v5    # "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 308
    iget-object v6, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v6}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmResolverManager(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusResolverManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v7}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/app/OplusResolverManager;->getResolveInfo(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 309
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_3

    .line 310
    goto :goto_1

    .line 312
    :cond_3
    new-instance v7, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v8, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v8

    iget-object v9, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->originalTarget:Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 313
    invoke-virtual {v9}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-direct {v7, v8, v6, v9, v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 314
    .restart local v7    # "ri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 315
    invoke-virtual {v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 316
    iget-object v8, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v8}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmResolverListAdapter(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/ResolverListAdapter;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/app/ResolverListAdapter;->mDisplayList:Ljava/util/List;

    invoke-interface {v8, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 317
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ri":Lcom/android/internal/app/chooser/DisplayResolveInfo;
    goto :goto_1

    .line 318
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v1}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmResolverManager(Lcom/android/internal/app/OplusChooserCtsConnection;)Lcom/android/internal/app/OplusResolverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/OplusResolverManager;->resortListAndNotifyChange()V

    .line 320
    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/OplusChooserCtsConnection$ChooserHandler;->this$0:Lcom/android/internal/app/OplusChooserCtsConnection;

    invoke-static {v1}, Lcom/android/internal/app/OplusChooserCtsConnection;->-$$Nest$fgetmContext(Lcom/android/internal/app/OplusChooserCtsConnection;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->connection:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 321
    iget-object v1, v0, Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;->connection:Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;

    invoke-virtual {v1}, Lcom/android/internal/app/OplusChooserCtsConnection$OplusChooserTargetServiceConnection;->destroy()V

    .line 322
    nop

    .line 343
    .end local v0    # "sri":Lcom/android/internal/app/OplusChooserCtsConnection$ServiceResultInfo;
    :cond_6
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
