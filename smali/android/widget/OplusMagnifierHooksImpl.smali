.class public Landroid/widget/OplusMagnifierHooksImpl;
.super Ljava/lang/Object;
.source "OplusMagnifierHooksImpl.java"

# interfaces
.implements Landroid/widget/IOplusMagnifierHooks;


# static fields
.field private static blacklist mShadowBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist decodeShadowBitmap(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    const v0, 0xc080055

    .line 50
    .local v0, "shadowRes":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Landroid/widget/OplusMagnifierHooksImpl;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 51
    return-void
.end method

.method public whitelist drawShadowBitmap(IILandroid/graphics/RecordingCanvas;Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "contentWidth"    # I
    .param p2, "contentHeight"    # I
    .param p3, "canvas"    # Landroid/graphics/RecordingCanvas;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    sget-object v1, Landroid/widget/OplusMagnifierHooksImpl;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/widget/OplusMagnifierHooksImpl;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 63
    .local v0, "srcRect2":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 64
    .local v1, "dstRect2":Landroid/graphics/Rect;
    sget-object v2, Landroid/widget/OplusMagnifierHooksImpl;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p3, v2, v0, v1, p4}, Landroid/graphics/RecordingCanvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 65
    return-void
.end method

.method public whitelist getMagnifierCornerRadius(Landroid/content/res/TypedArray;Landroid/content/Context;)F
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public whitelist getMagnifierHeight(Landroid/content/res/TypedArray;Landroid/content/Context;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "context"    # Landroid/content/Context;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public whitelist getMagnifierWidth(Landroid/content/res/TypedArray;Landroid/content/Context;)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "context"    # Landroid/content/Context;

    .line 34
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc050085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public whitelist recycleShadowBitmap()V
    .locals 1

    .line 55
    sget-object v0, Landroid/widget/OplusMagnifierHooksImpl;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 58
    :cond_0
    return-void
.end method
