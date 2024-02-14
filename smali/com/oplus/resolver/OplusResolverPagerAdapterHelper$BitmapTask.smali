.class Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;
.super Ljava/lang/Object;
.source "OplusResolverPagerAdapterHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapTask"
.end annotation


# instance fields
.field private blacklist mOriginIntent:Landroid/content/Intent;

.field private blacklist mPagerNumber:I

.field private blacklist mPagerSize:I

.field private blacklist mRiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPagerNumber(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I
    .locals 0

    iget p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerNumber:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPagerSize(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;)I
    .locals 0

    iget p0, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerSize:I

    return p0
.end method

.method constructor blacklist <init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/Intent;Ljava/util/List;II)V
    .locals 0
    .param p2, "originIntent"    # Landroid/content/Intent;
    .param p4, "pagerNumber"    # I
    .param p5, "pagerSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II)V"
        }
    .end annotation

    .line 357
    .local p3, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mOriginIntent:Landroid/content/Intent;

    .line 359
    iput-object p3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mRiList:Ljava/util/List;

    .line 360
    iput p4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerNumber:I

    .line 361
    iput p5, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerSize:I

    .line 362
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 13

    .line 367
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "oplusItems":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mRiList:Ljava/util/List;

    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerNumber:I

    iget v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerSize:I

    mul-int v4, v2, v3

    .line 369
    const/4 v5, 0x1

    add-int/2addr v2, v5

    mul-int/2addr v2, v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mRiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    .line 370
    :cond_0
    iget v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerNumber:I

    add-int/2addr v2, v5

    iget v3, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mPagerSize:I

    mul-int/2addr v2, v3

    .line 368
    :goto_0
    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 371
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 372
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v4, v3}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$misMultiAppResolveInfo(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    .line 373
    .local v4, "isMulti":Z
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mOriginIntent:Landroid/content/Intent;

    invoke-static {v6, v3, v7}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$mgetMemCacheKey(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    .line 374
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v7, v6}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$mgetBitmapFromMemCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Ljava/lang/String;)Lcom/oplus/widget/OplusItem;

    move-result-object v7

    .line 376
    .local v7, "item":Lcom/oplus/widget/OplusItem;
    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v8}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mOriginIntent:Landroid/content/Intent;

    invoke-static {v8, v9}, Lcom/oplus/util/OplusResolverUtil;->isChooserCtsTest(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 398
    :cond_1
    invoke-virtual {v7}, Lcom/oplus/widget/OplusItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 399
    .local v8, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_7

    .line 400
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    .line 401
    .local v9, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 402
    .local v10, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7, v10}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 377
    .end local v8    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v9    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    .end local v10    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v8}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 378
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v9}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmCustomIconHelper(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Lcom/oplus/resolver/OplusResolverCustomIconHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v9, v10, v3, v8}, Lcom/oplus/resolver/OplusResolverCustomIconHelper;->getAppInfo(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Lcom/oplus/widget/OplusItem;

    move-result-object v9

    move-object v7, v9

    .line 379
    if-eqz v4, :cond_6

    .line 382
    iget-object v9, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->mOriginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getOplusFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x2000

    if-eqz v9, :cond_3

    .line 383
    const-string v9, "OplusResolverPagerAdapterHelper"

    const-string v10, "keep original chooser name for multi app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 386
    :cond_3
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v9

    .line 387
    .local v9, "ci":Landroid/content/pm/ComponentInfo;
    if-eqz v9, :cond_5

    .line 388
    invoke-static {}, Lcom/oplus/multiapp/OplusMultiAppManager;->getInstance()Lcom/oplus/multiapp/OplusMultiAppManager;

    move-result-object v10

    iget-object v11, v9, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/oplus/multiapp/OplusMultiAppManager;->getMultiAppAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, "name":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 390
    invoke-virtual {v7, v10}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 392
    .end local v10    # "name":Ljava/lang/String;
    :cond_4
    goto :goto_3

    .line 393
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/oplus/widget/OplusItem;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0xc040080

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/oplus/widget/OplusItem;->setText(Ljava/lang/String;)V

    .line 397
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_6
    :goto_3
    nop

    .line 405
    :cond_7
    :goto_4
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v8}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmResolveInfoHelper(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Lcom/oplus/resolver/OplusResolverInfoHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getPinnedList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v8}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmResolveInfoHelper(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Lcom/oplus/resolver/OplusResolverInfoHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oplus/resolver/OplusResolverInfoHelper;->getPinnedList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 406
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oplus/widget/OplusItem;->setPinned(Ljava/lang/Boolean;)V

    goto :goto_5

    .line 408
    :cond_8
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oplus/widget/OplusItem;->setPinned(Ljava/lang/Boolean;)V

    .line 411
    :goto_5
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v8}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmContext(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7}, Lcom/oplus/widget/OplusItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 412
    if-eqz v4, :cond_9

    new-instance v10, Landroid/os/UserHandle;

    const/16 v11, 0x3e7

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_6

    :cond_9
    iget-object v10, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v10}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmUserHandle(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/os/UserHandle;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$mmodifyMultiUserHandle(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object v10

    .line 411
    :goto_6
    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oplus/widget/OplusItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 413
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v8, v6, v7}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$maddBitmapToMemoryCache(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;Ljava/lang/String;Lcom/oplus/widget/OplusItem;)V

    .line 415
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "isMulti":Z
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "item":Lcom/oplus/widget/OplusItem;
    goto/16 :goto_1

    .line 416
    :cond_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 417
    const-string v2, "ResolverBitmapTask"

    const-string v3, "interrupt current Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 420
    :cond_b
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;->this$0:Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;

    invoke-static {v2}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;->-$$Nest$fgetmHandler(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;

    invoke-direct {v3, p0, v0}, Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask$1;-><init>(Lcom/oplus/resolver/OplusResolverPagerAdapterHelper$BitmapTask;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    nop

    .end local v0    # "oplusItems":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    .end local v1    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_7

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method
