.class final Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;
.super Ljava/lang/Object;
.source "OplusScrollCaptureViewSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/screenshot/OplusScrollCaptureViewSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewRenderer"
.end annotation


# static fields
.field private static final blacklist AMBIENT_SHADOW_ALPHA:F = 0.039f

.field private static final blacklist LIGHT_RADIUS_DP:F = 800.0f

.field private static final blacklist LIGHT_Z_DP:F = 400.0f

.field private static final blacklist SPOT_SHADOW_ALPHA:F = 0.039f

.field private static final blacklist TAG:Ljava/lang/String; = "ViewRenderer"


# instance fields
.field private final blacklist mCaptureRenderNode:Landroid/graphics/RenderNode;

.field private blacklist mLastRenderedSourceDrawingId:J

.field private final blacklist mRenderer:Landroid/graphics/HardwareRenderer;

.field private blacklist mSurface:Landroid/view/Surface;

.field private final blacklist mTempLocation:[I

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mtransformToRoot(Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    .line 351
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    .line 352
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    .line 356
    new-instance v0, Landroid/graphics/HardwareRenderer;

    invoke-direct {v0}, Landroid/graphics/HardwareRenderer;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    .line 357
    const-string v1, "ScrollCapture"

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setName(Ljava/lang/String;)V

    .line 358
    new-instance v1, Landroid/graphics/RenderNode;

    const-string v2, "ScrollCaptureRoot"

    invoke-direct {v1, v2}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    .line 359
    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setContentRoot(Landroid/graphics/RenderNode;)V

    .line 362
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/HardwareRenderer;->setOpaque(Z)V

    .line 363
    return-void
.end method

.method private blacklist setupLighting(Landroid/view/View;)V
    .locals 8
    .param p1, "mSource"    # Landroid/view/View;

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 392
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 393
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 394
    .local v1, "lightX":F
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 395
    .local v2, "lightY":F
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43c80000    # 400.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 396
    .local v3, "lightZ":I
    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x44480000    # 800.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 399
    .local v4, "lightRadius":I
    iget-object v5, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    int-to-float v6, v3

    int-to-float v7, v4

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/HardwareRenderer;->setLightSourceGeometry(FFFF)V

    .line 400
    iget-object v5, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    const v6, 0x3d1fbe77    # 0.039f

    invoke-virtual {v5, v6, v6}, Landroid/graphics/HardwareRenderer;->setLightSourceAlpha(FF)V

    .line 401
    return-void
.end method

.method private blacklist transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "local"    # Landroid/view/View;
    .param p2, "localRect"    # Landroid/graphics/Rect;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 442
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 443
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 444
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 446
    return-void
.end method

.method private blacklist updateForView(Landroid/view/View;)Z
    .locals 4
    .param p1, "source"    # Landroid/view/View;

    .line 377
    iget-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mLastRenderedSourceDrawingId:J

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist updateForceDarkMode(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 454
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v1

    .line 455
    .local v1, "useAutoDark":Z
    if-eqz v1, :cond_1

    .line 456
    nop

    .line 457
    const-string v2, "debug.hwui.force_dark"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 458
    .local v2, "forceDarkAllowedDefault":Z
    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 459
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v5, 0x117

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x116

    .line 460
    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v1, v3

    .line 461
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 463
    .end local v2    # "forceDarkAllowedDefault":Z
    .end local v4    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v2, v1}, Landroid/graphics/HardwareRenderer;->setForceDark(Z)Z

    .line 464
    return-void
.end method

.method private blacklist updateRootNode(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "source"    # Landroid/view/View;
    .param p2, "localSourceRect"    # Landroid/graphics/Rect;

    .line 404
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 405
    .local v0, "rootView":Landroid/view/View;
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->transformToRoot(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 407
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    .line 408
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v1

    .line 409
    .local v1, "canvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {v1}, Landroid/graphics/RecordingCanvas;->enableZ()V

    .line 410
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RecordingCanvas;->translate(FF)V

    .line 412
    invoke-virtual {v0}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v2

    .line 413
    .local v2, "rootViewRenderNode":Landroid/graphics/RenderNode;
    invoke-virtual {v2}, Landroid/graphics/RenderNode;->hasDisplayList()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {v1, v2}, Landroid/graphics/RecordingCanvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 416
    :cond_0
    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mCaptureRenderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 417
    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 1

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mSurface:Landroid/view/Surface;

    .line 438
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->destroy()V

    .line 439
    return-void
.end method

.method public blacklist renderView(Landroid/view/View;Landroid/graphics/Rect;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceRect"    # Landroid/graphics/Rect;

    .line 421
    invoke-direct {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->updateForceDarkMode(Landroid/view/View;)V

    .line 422
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->createRenderRequest()Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    move-result-object v0

    .line 423
    .local v0, "request":Landroid/graphics/HardwareRenderer$FrameRenderRequest;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->setVsyncTime(J)Landroid/graphics/HardwareRenderer$FrameRenderRequest;

    .line 424
    invoke-direct {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->updateForView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-direct {p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->setupLighting(Landroid/view/View;)V

    .line 427
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->updateRootNode(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 429
    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer$FrameRenderRequest;->syncAndDraw()I

    move-result v1

    return v1
.end method

.method public blacklist setColorMode(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .line 449
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setColorMode(I)V

    .line 450
    return-void
.end method

.method public blacklist setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .line 366
    iput-object p1, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mSurface:Landroid/view/Surface;

    .line 367
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0, p1}, Landroid/graphics/HardwareRenderer;->setSurface(Landroid/view/Surface;)V

    .line 368
    return-void
.end method

.method public blacklist trimMemory()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureViewSupport$ViewRenderer;->mRenderer:Landroid/graphics/HardwareRenderer;

    invoke-virtual {v0}, Landroid/graphics/HardwareRenderer;->clearContent()V

    .line 434
    return-void
.end method
