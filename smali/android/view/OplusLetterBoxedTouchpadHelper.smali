.class public Landroid/view/OplusLetterBoxedTouchpadHelper;
.super Ljava/lang/Object;
.source "OplusLetterBoxedTouchpadHelper.java"


# static fields
.field private static final blacklist FUNC_ENABLE_STRING:Ljava/lang/String; = "persist.sys.lbtp.enable"

.field private static final blacklist TRANSFORM_VARIABLE_ONE:F = 1.0f

.field private static final blacklist TRANSFORM_VARIABLE_TWO:F = 2.0f

.field private static final blacklist TRANSFORM_VARIABLE_ZERO:F

.field private static blacklist sFuncEnable:Z


# instance fields
.field private blacklist mAdjustMoveXAxisForBlackBorderArea:F

.field private blacklist mAdjustMoveYAxisForBlackBorderArea:F

.field private blacklist mDisableClick:Z

.field private blacklist mDownMotionEvent:Landroid/view/MotionEvent;

.field private blacklist mFirstTouchX:F

.field private blacklist mFirstTouchY:F

.field private blacklist mFirstTwoFingerPointerLength:D

.field private blacklist mHasAdjustedXYAxisForAppBorderArea:Z

.field private blacklist mIsIgnoreAdjustXYAxis:Z

.field private blacklist mIsInOplusCompatModeOrParallelWindow:Z

.field private blacklist mMoveXAxisForBlackBorderArea:F

.field private blacklist mMoveYAxisForBlackBorderArea:F

.field private blacklist mPointDownMotionEvent:Landroid/view/MotionEvent;

.field private blacklist mSecondTouchX:F

.field private blacklist mSecondTouchY:F

.field private blacklist mSecondTwoFingerPointerLength:D

.field private blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 33
    const-string v0, "persist.sys.lbtp.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->sFuncEnable:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsInOplusCompatModeOrParallelWindow:Z

    .line 36
    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    .line 37
    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    .line 46
    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mHasAdjustedXYAxisForAppBorderArea:Z

    .line 53
    iput-object p1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 54
    return-void
.end method

.method private blacklist adjustXAxisOfMotifonEventForAppBorderArea(Landroid/graphics/Rect;FI)F
    .locals 4
    .param p1, "winFrame"    # Landroid/graphics/Rect;
    .param p2, "xAxis"    # F
    .param p3, "displayWidth"    # I

    .line 375
    move v0, p2

    .line 376
    .local v0, "newXAxis":F
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lez v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v1, p3, :cond_2

    .line 377
    iget v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveXAxisForBlackBorderArea:F

    cmpg-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-gez v2, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_1

    .line 379
    :cond_0
    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 380
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_1

    .line 382
    :cond_1
    iget v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mAdjustMoveXAxisForBlackBorderArea:F

    goto :goto_1

    .line 385
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_4

    .line 386
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 387
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 392
    :cond_4
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v1, p3, :cond_5

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 396
    :cond_5
    :goto_1
    return v0
.end method

.method private blacklist adjustXYAxisOfMotifonEventForAppBorderArea(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 344
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 345
    .local v1, "y":F
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 346
    .local v2, "winFrame":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    iget-object v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v3

    .line 347
    .local v3, "display":Landroid/view/Display;
    if-nez v3, :cond_0

    .line 348
    return-void

    .line 350
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 351
    .local v4, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 354
    iget-object v5, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v5

    .line 355
    .local v5, "displayFrame2":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 356
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 357
    .local v6, "scale":F
    move-object v4, v5

    .line 358
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 359
    .local v7, "width":I
    iget v8, v2, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Rect;->left:I

    .line 360
    iget v8, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v7

    iput v8, v2, Landroid/graphics/Rect;->right:I

    .line 363
    .end local v6    # "scale":F
    .end local v7    # "width":I
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 364
    .local v6, "displayWidth":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 365
    .local v7, "displayHeight":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eq v8, v6, :cond_2

    .line 366
    invoke-direct {p0, v2, v0, v6}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXAxisOfMotifonEventForAppBorderArea(Landroid/graphics/Rect;FI)F

    move-result v0

    goto :goto_0

    .line 368
    :cond_2
    invoke-direct {p0, v2, v1, v7}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustYAxisOfMotifonEventForAppBorderArea(Landroid/graphics/Rect;FI)F

    move-result v1

    .line 370
    :goto_0
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mHasAdjustedXYAxisForAppBorderArea:Z

    .line 371
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 372
    return-void
.end method

.method private blacklist adjustXYAxisOfMotifonEventForAppBorderAreaIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 321
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 322
    .local v1, "y":F
    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 323
    .local v2, "winFrame":Landroid/graphics/Rect;
    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    const/4 v5, 0x1

    if-gtz v4, :cond_0

    iget v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveXAxisForBlackBorderArea:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    .line 324
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderArea(Landroid/view/MotionEvent;)V

    .line 325
    return v5

    .line 327
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_1

    iget v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveXAxisForBlackBorderArea:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_1

    .line 328
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderArea(Landroid/view/MotionEvent;)V

    .line 329
    return v5

    .line 331
    :cond_1
    cmpg-float v4, v1, v3

    if-gtz v4, :cond_2

    iget v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveYAxisForBlackBorderArea:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    .line 332
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderArea(Landroid/view/MotionEvent;)V

    .line 333
    return v5

    .line 335
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_3

    iget v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveYAxisForBlackBorderArea:F

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_3

    .line 336
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderArea(Landroid/view/MotionEvent;)V

    .line 337
    return v5

    .line 339
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private blacklist adjustXYAxisOfMotifonEventForBlackBorderArea(Landroid/view/MotionEvent;)V
    .locals 16
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 218
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 219
    .local v1, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 220
    .local v2, "y":F
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 221
    .local v3, "winFrame":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v4

    iget-object v5, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v5}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v4

    .line 222
    .local v4, "display":Landroid/view/Display;
    if-nez v4, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v5, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 229
    iget-object v6, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsController;->getState()Landroid/view/InsetsState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v6

    .line 230
    .local v6, "displayFrame2":Landroid/graphics/Rect;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 231
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 232
    .local v7, "scale":F
    move-object v5, v6

    .line 233
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 234
    .local v8, "width":I
    iget v9, v3, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    float-to-int v9, v9

    iput v9, v3, Landroid/graphics/Rect;->left:I

    .line 235
    iget v9, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v8

    iput v9, v3, Landroid/graphics/Rect;->right:I

    .line 238
    .end local v7    # "scale":F
    .end local v8    # "width":I
    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 239
    .local v7, "displayWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 240
    .local v8, "displayHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    .line 241
    .local v9, "action":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 242
    iput v1, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveXAxisForBlackBorderArea:F

    .line 243
    iput v2, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveYAxisForBlackBorderArea:F

    .line 245
    :cond_2
    const/4 v11, 0x0

    cmpg-float v12, v1, v11

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    if-gez v12, :cond_4

    .line 246
    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v1, v12

    .line 247
    iget v12, v3, Landroid/graphics/Rect;->right:I

    if-ge v12, v7, :cond_3

    .line 248
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v15, v3, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    mul-float/2addr v15, v14

    div-float/2addr v12, v15

    mul-float/2addr v1, v12

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v15, v3, Landroid/graphics/Rect;->left:I

    int-to-float v15, v15

    mul-float/2addr v15, v13

    div-float/2addr v12, v15

    mul-float/2addr v1, v12

    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    cmpl-float v12, v1, v12

    if-lez v12, :cond_6

    .line 253
    iget v12, v3, Landroid/graphics/Rect;->left:I

    if-lez v12, :cond_5

    .line 254
    iget v12, v3, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v1, v12

    .line 255
    iget v12, v3, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float/2addr v1, v12

    .line 256
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v15, v3, Landroid/graphics/Rect;->right:I

    sub-int v15, v7, v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    div-float/2addr v12, v15

    mul-float/2addr v1, v12

    .line 257
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v14

    add-float/2addr v1, v12

    goto :goto_0

    .line 259
    :cond_5
    iget v12, v3, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    sub-float/2addr v1, v12

    .line 260
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v15, v3, Landroid/graphics/Rect;->right:I

    sub-int v15, v7, v15

    int-to-float v15, v15

    mul-float/2addr v15, v13

    div-float/2addr v12, v15

    mul-float/2addr v1, v12

    .line 263
    :cond_6
    :goto_0
    cmpg-float v11, v2, v11

    if-gez v11, :cond_8

    .line 264
    iget v11, v3, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    .line 265
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v11, v8, :cond_7

    .line 266
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v14

    div-float/2addr v11, v12

    mul-float/2addr v2, v11

    goto :goto_1

    .line 268
    :cond_7
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    mul-float/2addr v2, v11

    goto :goto_1

    .line 270
    :cond_8
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v2, v11

    if-lez v11, :cond_a

    .line 271
    iget v11, v3, Landroid/graphics/Rect;->top:I

    if-lez v11, :cond_9

    .line 272
    iget v11, v3, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    add-float/2addr v2, v11

    .line 273
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v2, v11

    .line 274
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v8, v12

    int-to-float v12, v12

    mul-float/2addr v12, v14

    div-float/2addr v11, v12

    mul-float/2addr v2, v11

    .line 275
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v14

    add-float/2addr v2, v11

    goto :goto_1

    .line 277
    :cond_9
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v2, v11

    .line 278
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v12, v8, v12

    int-to-float v12, v12

    mul-float/2addr v12, v13

    div-float/2addr v11, v12

    mul-float/2addr v2, v11

    .line 281
    :cond_a
    :goto_1
    move-object/from16 v11, p1

    invoke-virtual {v11, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 282
    if-ne v9, v10, :cond_b

    .line 283
    iput v1, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mAdjustMoveXAxisForBlackBorderArea:F

    .line 284
    iput v2, v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mAdjustMoveYAxisForBlackBorderArea:F

    .line 286
    :cond_b
    return-void
.end method

.method private blacklist adjustYAxisOfMotifonEventForAppBorderArea(Landroid/graphics/Rect;FI)F
    .locals 4
    .param p1, "winFrame"    # Landroid/graphics/Rect;
    .param p2, "yAxis"    # F
    .param p3, "displayHeight"    # I

    .line 400
    move v0, p2

    .line 401
    .local v0, "newYAxis":F
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lez v1, :cond_2

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v1, p3, :cond_2

    .line 402
    iget v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveYAxisForBlackBorderArea:F

    cmpg-float v2, v0, v1

    const/high16 v3, 0x40000000    # 2.0f

    if-gez v2, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v0, v1

    goto :goto_1

    .line 404
    :cond_0
    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    goto :goto_1

    .line 407
    :cond_1
    iget v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mAdjustMoveYAxisForBlackBorderArea:F

    goto :goto_1

    .line 410
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_4

    .line 411
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 417
    :cond_4
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v1, p3, :cond_5

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 421
    :cond_5
    :goto_1
    return v0
.end method

.method private blacklist calculateFingerDistance(FFFF)D
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 103
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 104
    .local v0, "lengthX":F
    sub-float v1, p2, p4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 105
    .local v1, "lengthY":F
    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v6, v1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private blacklist doActionDownWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 109
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ResourcesManagerExtImpl;->inOplusCompatMode(Landroid/content/res/OplusBaseConfiguration;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_1

    .line 112
    :cond_0
    iput-boolean v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsInOplusCompatModeOrParallelWindow:Z

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchX:F

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchY:F

    .line 116
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 117
    return v1
.end method

.method private blacklist doActionMoveWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;II)Z
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "pointerCount"    # I
    .param p3, "touchSlop"    # I

    .line 136
    iget-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mHasAdjustedXYAxisForAppBorderArea:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderAreaIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_5

    .line 142
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 146
    .local v0, "firstFingerX":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 147
    .local v3, "firstFingerY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 148
    .local v4, "secondFingerX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 149
    .local v5, "secondFingerY":F
    invoke-direct {p0, v0, v3, v4, v5}, Landroid/view/OplusLetterBoxedTouchpadHelper;->calculateFingerDistance(FFFF)D

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTwoFingerPointerLength:D

    .line 150
    iget-boolean v8, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    if-nez v8, :cond_2

    iget-wide v8, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTwoFingerPointerLength:D

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v8, p3

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2

    .line 151
    return v1

    .line 153
    :cond_2
    iget-boolean v6, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    if-nez v6, :cond_3

    .line 154
    iput-boolean v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    .line 155
    iput-boolean v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    .line 156
    iget-object v6, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForBlackBorderArea(Landroid/view/MotionEvent;)V

    .line 157
    iget-object v6, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v7, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 159
    iget-object v6, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v6}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForBlackBorderArea(Landroid/view/MotionEvent;)V

    .line 160
    iget-object v6, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v7, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 161
    iput-boolean v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    .line 163
    .end local v0    # "firstFingerX":F
    .end local v3    # "firstFingerY":F
    .end local v4    # "secondFingerX":F
    .end local v5    # "secondFingerY":F
    :cond_3
    goto :goto_1

    .line 143
    :cond_4
    :goto_0
    return v1

    .line 164
    :cond_5
    if-ne p2, v2, :cond_9

    .line 165
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_6

    .line 166
    return v1

    .line 168
    :cond_6
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_7

    .line 169
    return v2

    .line 171
    :cond_7
    iget v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchX:F

    iget v3, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v0, v3, v4, v5}, Landroid/view/OplusLetterBoxedTouchpadHelper;->calculateFingerDistance(FFFF)D

    move-result-wide v3

    .line 172
    .local v3, "distance":D
    iget-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    if-nez v0, :cond_8

    int-to-double v5, p3

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_8

    .line 173
    return v1

    .line 175
    :cond_8
    if-nez v0, :cond_9

    .line 176
    iput-boolean v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    .line 177
    iput-boolean v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    .line 178
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-direct {p0, v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForBlackBorderArea(Landroid/view/MotionEvent;)V

    .line 179
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v5, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v5}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->onInputEvent(Landroid/view/InputEvent;)V

    .line 180
    iput-boolean v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    .line 184
    .end local v3    # "distance":D
    :cond_9
    :goto_1
    return v2
.end method

.method private blacklist doActionPointerDownWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;I)Z
    .locals 6
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "touchSlop"    # I

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchX:F

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchY:F

    .line 125
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTouchX:F

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTouchY:F

    .line 127
    iget v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchX:F

    iget v3, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchY:F

    iget v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTouchX:F

    invoke-direct {p0, v2, v3, v4, v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->calculateFingerDistance(FFFF)D

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTwoFingerPointerLength:D

    .line 128
    int-to-double v4, p2

    cmpl-double v0, v2, v4

    if-lez v0, :cond_0

    .line 129
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    .line 132
    :cond_0
    return v1
.end method

.method private blacklist doActionPointerUpWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 206
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 207
    return v1

    .line 209
    :cond_0
    iget-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mHasAdjustedXYAxisForAppBorderArea:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderAreaIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    return v1

    .line 214
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist doActionUpWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;I)Z
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "touchSlop"    # I

    .line 188
    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 189
    return v1

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 192
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 193
    .local v2, "y":F
    iget v3, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchX:F

    iget v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchY:F

    invoke-direct {p0, v3, v4, v0, v2}, Landroid/view/OplusLetterBoxedTouchpadHelper;->calculateFingerDistance(FFFF)D

    move-result-wide v3

    .line 194
    .local v3, "distance":D
    iget-boolean v5, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    if-nez v5, :cond_1

    int-to-double v6, p2

    cmpg-double v6, v3, v6

    if-gtz v6, :cond_1

    .line 195
    return v1

    .line 197
    :cond_1
    if-eqz v5, :cond_2

    iget-boolean v5, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mHasAdjustedXYAxisForAppBorderArea:Z

    if-eqz v5, :cond_2

    .line 198
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderAreaIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 199
    return v1

    .line 202
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist doMotifonEventWorkForAppBorderArea(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 289
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 290
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 291
    .local v1, "pointerCount":I
    iget-boolean v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsInOplusCompatModeOrParallelWindow:Z

    if-nez v2, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 295
    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-direct {p0, p1, v2}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doActionPointerDownWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;I)Z

    .line 296
    return-void

    .line 297
    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 298
    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_6

    .line 299
    return-void

    .line 301
    :cond_2
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 302
    if-ne v1, v3, :cond_4

    .line 303
    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_6

    .line 304
    :cond_3
    return-void

    .line 306
    :cond_4
    if-ne v1, v2, :cond_6

    .line 307
    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_6

    .line 308
    return-void

    .line 311
    :cond_5
    if-ne v0, v2, :cond_6

    .line 312
    iget-object v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_6

    .line 313
    return-void

    .line 316
    :cond_6
    invoke-direct {p0, p1}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForAppBorderArea(Landroid/view/MotionEvent;)V

    .line 317
    return-void
.end method

.method private blacklist setInitialState()V
    .locals 4

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsInOplusCompatModeOrParallelWindow:Z

    .line 440
    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    .line 441
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDownMotionEvent:Landroid/view/MotionEvent;

    .line 442
    iput-object v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mPointDownMotionEvent:Landroid/view/MotionEvent;

    .line 443
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchX:F

    .line 444
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTouchY:F

    .line 445
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTouchX:F

    .line 446
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTouchY:F

    .line 447
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mFirstTwoFingerPointerLength:D

    .line 448
    iput-wide v2, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mSecondTwoFingerPointerLength:D

    .line 449
    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    .line 450
    iput-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mHasAdjustedXYAxisForAppBorderArea:Z

    .line 451
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveXAxisForBlackBorderArea:F

    .line 452
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mMoveYAxisForBlackBorderArea:F

    .line 453
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mAdjustMoveXAxisForBlackBorderArea:F

    .line 454
    iput v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mAdjustMoveYAxisForBlackBorderArea:F

    .line 455
    return-void
.end method


# virtual methods
.method public blacklist disableClickIfNeededWhenInputEventStart(Landroid/view/InputEvent;)V
    .locals 10
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 57
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_c

    sget-boolean v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->sFuncEnable:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 63
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 64
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 65
    .local v2, "x":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 66
    .local v3, "y":F
    iget-object v4, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 67
    .local v4, "winFrame":Landroid/graphics/Rect;
    const/4 v5, 0x0

    cmpg-float v6, v2, v5

    if-ltz v6, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-gtz v6, :cond_2

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_2

    .line 68
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_1

    goto :goto_0

    .line 96
    :cond_1
    iget-boolean v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsIgnoreAdjustXYAxis:Z

    if-nez v1, :cond_b

    .line 97
    invoke-direct {p0, v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doMotifonEventWorkForAppBorderArea(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    .line 70
    .local v5, "action":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 71
    .local v6, "pointerCount":I
    if-eqz v5, :cond_3

    iget-boolean v7, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mIsInOplusCompatModeOrParallelWindow:Z

    if-eqz v7, :cond_4

    :cond_3
    const/4 v7, 0x2

    if-le v6, v7, :cond_5

    .line 72
    :cond_4
    return-void

    .line 74
    :cond_5
    iget-object v8, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v8

    .line 75
    .local v8, "touchSlop":I
    if-nez v5, :cond_6

    .line 76
    invoke-direct {p0, v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doActionDownWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;)Z

    .line 77
    return-void

    .line 78
    :cond_6
    const/4 v9, 0x5

    if-ne v5, v9, :cond_7

    .line 79
    invoke-direct {p0, v0, v8}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doActionPointerDownWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;I)Z

    .line 80
    return-void

    .line 81
    :cond_7
    if-ne v5, v7, :cond_8

    .line 82
    invoke-direct {p0, v0, v6, v8}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doActionMoveWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;II)Z

    move-result v1

    if-nez v1, :cond_a

    .line 83
    return-void

    .line 85
    :cond_8
    if-ne v5, v1, :cond_9

    .line 86
    invoke-direct {p0, v0, v8}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doActionUpWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_a

    .line 87
    return-void

    .line 89
    :cond_9
    const/4 v1, 0x6

    if-ne v5, v1, :cond_a

    .line 90
    invoke-direct {p0, v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->doActionPointerUpWorkIfNeededForBlackBorderArea(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 91
    return-void

    .line 94
    :cond_a
    invoke-direct {p0, v0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->adjustXYAxisOfMotifonEventForBlackBorderArea(Landroid/view/MotionEvent;)V

    .line 95
    .end local v5    # "action":I
    .end local v6    # "pointerCount":I
    .end local v8    # "touchSlop":I
    nop

    .line 100
    :cond_b
    :goto_1
    return-void

    .line 61
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "winFrame":Landroid/graphics/Rect;
    :cond_c
    :goto_2
    return-void
.end method

.method public blacklist enableClickIfNeededWhenInputEventFinish(Landroid/view/InputEvent;)V
    .locals 3
    .param p1, "inputEvent"    # Landroid/view/InputEvent;

    .line 425
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    sget-boolean v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->sFuncEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 428
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 432
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 433
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 434
    :cond_1
    invoke-direct {p0}, Landroid/view/OplusLetterBoxedTouchpadHelper;->setInitialState()V

    .line 436
    :cond_2
    return-void

    .line 429
    .end local v0    # "motionEvent":Landroid/view/MotionEvent;
    :cond_3
    :goto_0
    return-void
.end method

.method public blacklist isClickDisabled()Z
    .locals 1

    .line 458
    sget-boolean v0, Landroid/view/OplusLetterBoxedTouchpadHelper;->sFuncEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/OplusLetterBoxedTouchpadHelper;->mDisableClick:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
