.class public interface abstract Lcom/oplus/resolver/IOplusGalleryPagerAdapter;
.super Ljava/lang/Object;
.source "IOplusGalleryPagerAdapter.java"


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/oplus/resolver/IOplusGalleryPagerAdapter$1;

    invoke-direct {v0}, Lcom/oplus/resolver/IOplusGalleryPagerAdapter$1;-><init>()V

    sput-object v0, Lcom/oplus/resolver/IOplusGalleryPagerAdapter;->DEFAULT:Lcom/oplus/resolver/IOplusGalleryPagerAdapter;

    return-void
.end method


# virtual methods
.method public whitelist createPagerView(Ljava/util/List;II)Landroid/view/View;
    .locals 1
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

    .line 44
    .local p1, "appinfo":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist dismiss()V
    .locals 0

    .line 48
    return-void
.end method

.method public whitelist listToArray(Ljava/util/List;)[[Lcom/oplus/widget/OplusItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/widget/OplusItem;",
            ">;)[[",
            "Lcom/oplus/widget/OplusItem;"
        }
    .end annotation

    .line 40
    .local p1, "oplusItems":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/widget/OplusItem;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Lcom/oplus/widget/OplusItem;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/oplus/widget/OplusItem;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public whitelist loadBitmap(Landroid/content/Intent;Ljava/util/List;III)Ljava/util/List;
    .locals 1
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

    .line 36
    .local p2, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist setColumnSize(I)V
    .locals 0
    .param p1, "columnSize"    # I

    .line 57
    return-void
.end method

.method public whitelist setOplusResolverItemEventListener(Lcom/oplus/resolver/IOplusResolverGridItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oplus/resolver/IOplusResolverGridItemClickListener;

    .line 51
    return-void
.end method

.method public whitelist updateUserHandle(Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 54
    return-void
.end method
