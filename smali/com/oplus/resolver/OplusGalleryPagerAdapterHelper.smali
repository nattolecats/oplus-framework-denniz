.class public Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;
.super Ljava/lang/Object;
.source "OplusGalleryPagerAdapterHelper.java"


# static fields
.field private static final blacklist FEATURE_PACKAGE:Ljava/lang/String; = "com.oplus.resolver.OplusResolverPagerAdapterHelper"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverPagerAdapterHelper"


# instance fields
.field private blacklist mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/Dialog;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->DEFAULT:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    iput-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    .line 43
    iput-object p1, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mContext:Landroid/content/Context;

    .line 45
    :try_start_0
    const-string v0, "com.oplus.resolver.OplusResolverPagerAdapterHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/app/Dialog;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    iput-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot constructor error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusResolverPagerAdapterHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist createPagerView(Ljava/util/List;II)Landroid/view/View;
    .locals 3
    .param p2, "pagerNumber"    # I
    .param p3, "pagerSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;II)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 54
    .local p1, "appinfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->createPagerView(Ljava/util/List;II)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_0

    .line 56
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 58
    :cond_0
    return-object v0
.end method

.method public blacklist dismiss()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    invoke-interface {v0}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->dismiss()V

    .line 67
    return-void
.end method

.method public blacklist listToArray(Ljava/util/List;)[[Lcom/oplus/widget/OplusItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;)[[",
            "Lcom/oplus/widget/OplusItem;"
        }
    .end annotation

    .line 62
    .local p1, "oplusItems":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    invoke-interface {v0, p1}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->listToArray(Ljava/util/List;)[[Lcom/oplus/widget/OplusItem;

    move-result-object v0

    return-object v0
.end method

.method public blacklist loadBitmap(Landroid/content/Intent;Ljava/util/List;III)Ljava/util/List;
    .locals 6
    .param p1, "originIntent"    # Landroid/content/Intent;
    .param p3, "pagerNumber"    # I
    .param p4, "pagerSize"    # I
    .param p5, "placeholderCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;III)",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;"
        }
    .end annotation

    .line 70
    .local p2, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->loadBitmap(Landroid/content/Intent;Ljava/util/List;III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setColumnSize(I)V
    .locals 1
    .param p1, "columnSize"    # I

    .line 82
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    invoke-interface {v0, p1}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->setColumnSize(I)V

    .line 83
    return-void
.end method

.method public blacklist setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    .line 74
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    invoke-interface {v0, p1}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V

    .line 75
    return-void
.end method

.method public blacklist updateUserHandle(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 78
    iget-object v0, p0, Lcom/oplus/resolver/OplusGalleryPagerAdapterHelper;->mAdapterHelper:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    invoke-interface {v0, p1}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->updateUserHandle(Landroid/os/UserHandle;)V

    .line 79
    return-void
.end method
