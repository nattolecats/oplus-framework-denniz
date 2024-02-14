.class public Landroid/drawable/OplusGradientHooksImpl;
.super Ljava/lang/Object;
.source "OplusGradientHooksImpl.java"

# interfaces
.implements Landroid/drawable/IOplusGradientHooks;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist drawRoundRect(ZLandroid/graphics/Canvas;Landroid/graphics/RectF;FZLandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "smoothRound"    # Z
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "rect"    # Landroid/graphics/RectF;
    .param p4, "rad"    # F
    .param p5, "haveStroke"    # Z
    .param p6, "fillPaint"    # Landroid/graphics/Paint;
    .param p7, "strokePaint"    # Landroid/graphics/Paint;

    .line 14
    if-nez p1, :cond_0

    .line 15
    invoke-virtual {p2, p3, p4, p4, p6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/oplus/util/OplusRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 18
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p2, v0, p6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20
    .end local v0    # "path":Landroid/graphics/Path;
    :goto_0
    if-eqz p5, :cond_2

    .line 21
    if-nez p1, :cond_1

    .line 22
    invoke-virtual {p2, p3, p4, p4, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {}, Lcom/oplus/util/OplusRoundRectUtil;->getInstance()Lcom/oplus/util/OplusRoundRectUtil;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/oplus/util/OplusRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    .line 25
    .restart local v0    # "path":Landroid/graphics/Path;
    invoke-virtual {p2, v0, p7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 28
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_2
    :goto_1
    return-void
.end method
