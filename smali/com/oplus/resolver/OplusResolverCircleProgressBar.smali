.class public Lcom/oplus/resolver/OplusResolverCircleProgressBar;
.super Landroid/view/View;
.source "OplusResolverCircleProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;,
        Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;
    }
.end annotation


# static fields
.field public static final blacklist ACCURACY:I = 0x2

.field private static final blacklist ANIMATOR_DURATION_FACTOR:F = 1.5f

.field private static final blacklist ANIMATOR_SHORTEST_DURATION:I = 0xb4

.field private static final blacklist DEBUG:Z = true

.field private static final blacklist DEFAULT_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist DISAPPEAR_DELAY:I = 0x12c

.field private static final blacklist DISAPPEAR_DURATION:I = 0x10b

.field public static final blacklist ORIGINAL_ANGLE:I = -0x5a

.field private static final blacklist PROGRESS_POINT_COUNT:I = 0x168

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverCircleProgressBar"

.field private static final blacklist TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xa


# instance fields
.field private blacklist arcRadius:F

.field private blacklist mAccessibilityEventSender:Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;

.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mArcRect:Landroid/graphics/RectF;

.field private blacklist mBottomCirclePaint:Landroid/graphics/Paint;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurrentStepProgress:I

.field private blacklist mHalfStrokeWidth:I

.field private blacklist mHalfWidth:I

.field private blacklist mHeight:I

.field private blacklist mManager:Landroid/view/accessibility/AccessibilityManager;

.field private blacklist mMax:I

.field private blacklist mProgress:I

.field private blacklist mProgressBarBgCircleColor:I

.field private blacklist mProgressBarColor:I

.field private blacklist mProgressPaint:Landroid/graphics/Paint;

.field private blacklist mStrokeDefaultWidth:I

.field private blacklist mStrokeWidth:I

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMax(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)I
    .locals 0

    iget p0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProgress(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)I
    .locals 0

    iget p0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProgress(Lcom/oplus/resolver/OplusResolverCircleProgressBar;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisappearSelf(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->disappearSelf()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mverifyProgress(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->verifyProgress()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->DEFAULT_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mWidth:I

    .line 57
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHeight:I

    .line 58
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mStrokeWidth:I

    .line 59
    const/16 v1, 0x64

    iput v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    .line 60
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    .line 61
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    .line 85
    iput-object p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mWidth:I

    .line 87
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHeight:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressBarBgCircleColor:I

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc06004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressBarColor:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mStrokeDefaultWidth:I

    .line 91
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mStrokeWidth:I

    .line 92
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->init()V

    .line 93
    return-void
.end method

.method private blacklist disappearSelf()V
    .locals 3

    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 315
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->DEFAULT_DISAPPEAR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    const-wide/16 v1, 0x10b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 317
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 318
    new-instance v1, Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar$2;-><init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 327
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 328
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private blacklist init()V
    .locals 2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setImportantForAccessibility(I)V

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->initBottomCirclePaint()V

    .line 102
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->initProgressPaint()V

    .line 103
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setProgress(I)V

    .line 104
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setMax(I)V

    .line 105
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 106
    return-void
.end method

.method private blacklist initBottomCirclePaint()V
    .locals 2

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mBottomCirclePaint:Landroid/graphics/Paint;

    .line 117
    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressBarBgCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mBottomCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mBottomCirclePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 120
    return-void
.end method

.method private blacklist initProgressPaint()V
    .locals 2

    .line 109
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 110
    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 113
    return-void
.end method

.method private blacklist scheduleAccessibilityEventSender()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAccessibilityEventSender:Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;-><init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender-IA;)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAccessibilityEventSender:Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAccessibilityEventSender:Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 249
    return-void
.end method

.method private blacklist startAnimator(II)V
    .locals 3
    .param p1, "currentProgress"    # I
    .param p2, "targetProgress"    # I

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "currentProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverCircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v0, 0x1

    new-array v0, v0, [I

    sub-int v1, p2, p1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 297
    sub-int v1, p2, p1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43340000    # 180.0f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 298
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar$1;-><init>(Lcom/oplus/resolver/OplusResolverCircleProgressBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 310
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 311
    return-void
.end method

.method private blacklist verifyProgress()V
    .locals 4

    .line 123
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    if-lez v0, :cond_0

    .line 124
    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    .line 125
    .local v0, "perStep":F
    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    .line 126
    const/16 v2, 0x168

    rsub-int v1, v1, 0x168

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 127
    iput v2, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    .line 130
    .end local v0    # "perStep":F
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->invalidate()V

    .line 131
    return-void
.end method


# virtual methods
.method public blacklist getMax()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    return v0
.end method

.method public blacklist getProgress()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    return v0
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAccessibilityEventSender:Lcom/oplus/resolver/OplusResolverCircleProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 263
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 264
    return-void
.end method

.method public whitelist onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentStepProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mArcRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mHalfWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHalfWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverCircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHalfWidth:I

    int-to-float v1, v0

    int-to-float v0, v0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2, v1, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 141
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    int-to-float v5, v0

    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mBottomCirclePaint:Landroid/graphics/Paint;

    const/high16 v6, 0x43b40000    # 360.0f

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 142
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    int-to-float v6, v0

    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 253
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mWidth:I

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setMeasuredDimension(II)V

    .line 254
    return-void
.end method

.method blacklist onProgressRefresh()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 230
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->scheduleAccessibilityEventSender()V

    .line 233
    :cond_0
    return-void
.end method

.method public whitelist onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 286
    move-object v0, p1

    check-cast v0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;

    .line 287
    .local v0, "ss":Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;
    invoke-virtual {v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 288
    iget v1, v0, Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;->mProgress:I

    invoke-virtual {p0, v1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->setProgress(I)V

    .line 289
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->requestLayout()V

    .line 290
    return-void
.end method

.method protected whitelist onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 269
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 270
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 271
    .local v1, "ss":Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;
    iget v2, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    iput v2, v1, Lcom/oplus/resolver/OplusResolverCircleProgressBar$SavedState;->mProgress:I

    .line 272
    return-object v1
.end method

.method protected whitelist onSizeChanged(IIII)V
    .locals 6
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 278
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mStrokeWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHalfStrokeWidth:I

    .line 279
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHalfWidth:I

    .line 280
    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHalfStrokeWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->arcRadius:F

    .line 281
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mHalfWidth:I

    int-to-float v2, v1

    iget v3, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->arcRadius:F

    sub-float/2addr v2, v3

    int-to-float v4, v1

    sub-float/2addr v4, v3

    int-to-float v5, v1

    add-float/2addr v5, v3

    int-to-float v1, v1

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v4, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mArcRect:Landroid/graphics/RectF;

    .line 282
    return-void
.end method

.method public blacklist release()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 335
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    .line 336
    iput v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mCurrentStepProgress:I

    .line 337
    return-void
.end method

.method public blacklist setMax(I)V
    .locals 2
    .param p1, "max"    # I

    .line 200
    if-gez p1, :cond_0

    .line 201
    const/4 p1, 0x0

    .line 203
    :cond_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    if-eq p1, v0, :cond_1

    .line 204
    iput p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    .line 205
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    if-le v0, p1, :cond_1

    .line 206
    iput p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMax mMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverCircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->verifyProgress()V

    .line 213
    return-void
.end method

.method public blacklist setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverCircleProgressBar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-gez p1, :cond_0

    .line 157
    const/4 p1, 0x0

    .line 160
    :cond_0
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    if-le p1, v0, :cond_1

    .line 161
    iget p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mMax:I

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    if-lt v0, p1, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 172
    :cond_3
    iget v0, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    invoke-direct {p0, v0, p1}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->startAnimator(II)V

    .line 174
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->onProgressRefresh()V

    .line 175
    return-void

    .line 164
    :cond_4
    :goto_0
    const-string v0, "the view is invisible or progress is small"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput p1, p0, Lcom/oplus/resolver/OplusResolverCircleProgressBar;->mProgress:I

    .line 166
    return-void
.end method
