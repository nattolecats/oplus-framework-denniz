.class public Landroid/widget/ScrollBarDrawableExtImpl;
.super Ljava/lang/Object;
.source "ScrollBarDrawableExtImpl.java"

# interfaces
.implements Landroid/widget/IScrollBarDrawableExt;


# instance fields
.field private blacklist mEffect:Lcom/oplus/view/IOplusScrollBarEffect;

.field private blacklist mScrollBarDrawable:Landroid/widget/ScrollBarDrawable;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/oplus/view/OplusScrollBarEffect;->NO_EFFECT:Lcom/oplus/view/IOplusScrollBarEffect;

    iput-object v0, p0, Landroid/widget/ScrollBarDrawableExtImpl;->mEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/widget/ScrollBarDrawable;

    iput-object v0, p0, Landroid/widget/ScrollBarDrawableExtImpl;->mScrollBarDrawable:Landroid/widget/ScrollBarDrawable;

    .line 42
    sget-object v0, Lcom/oplus/view/OplusScrollBarEffect;->NO_EFFECT:Lcom/oplus/view/IOplusScrollBarEffect;

    iput-object v0, p0, Landroid/widget/ScrollBarDrawableExtImpl;->mEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    .line 43
    return-void
.end method


# virtual methods
.method public blacklist getDrawRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 58
    iget-object v0, p0, Landroid/widget/ScrollBarDrawableExtImpl;->mEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    invoke-interface {v0, p1}, Lcom/oplus/view/IOplusScrollBarEffect;->getDrawRect(Landroid/graphics/Rect;)V

    .line 60
    return-void
.end method

.method public blacklist getThumbLength(IIII)I
    .locals 1
    .param p1, "scrollBarLength"    # I
    .param p2, "thickness"    # I
    .param p3, "extent"    # I
    .param p4, "range"    # I

    .line 63
    iget-object v0, p0, Landroid/widget/ScrollBarDrawableExtImpl;->mEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/view/IOplusScrollBarEffect;->getThumbLength(IIII)I

    move-result v0

    return v0
.end method

.method public blacklist setScrollBarEffect(Landroid/view/IViewExt;)V
    .locals 2
    .param p1, "viewExt"    # Landroid/view/IViewExt;

    .line 49
    const-class v0, Landroid/view/ViewExtImpl;

    invoke-static {v0, p1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewExtImpl;

    .line 50
    .local v0, "viewExtImpl":Landroid/view/ViewExtImpl;
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewExtImpl;->hookScrollBar()Lcom/oplus/view/IOplusScrollBarEffect;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ScrollBarDrawableExtImpl;->mEffect:Lcom/oplus/view/IOplusScrollBarEffect;

    .line 53
    :cond_0
    return-void
.end method
