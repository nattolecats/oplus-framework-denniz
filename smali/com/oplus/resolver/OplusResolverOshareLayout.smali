.class public Lcom/oplus/resolver/OplusResolverOshareLayout;
.super Landroid/widget/LinearLayout;
.source "OplusResolverOshareLayout.java"


# static fields
.field private static final blacklist DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist PANEL_VIEW_APPEAR_AND_DISAPPEAR_DURATION:I = 0x85

.field public static final whitelist STATUS_NEED_OPEN_OSHARE:I = 0x0

.field public static final whitelist STATUS_OPENED_OSHARE:I = 0x1

.field public static final whitelist STATUS_OSHARING:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "OplusResolverOshareLayout"


# instance fields
.field private blacklist mAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mAnimatorCurrentHeight:I

.field private blacklist mHasExecuteAnimator:Z

.field private blacklist mIsSplitScreenMode:Z

.field private blacklist mShareNeedOpenHeight:I

.field private blacklist mShareOpenStatus:I

.field private blacklist mShareOpenedHeight:I

.field private blacklist mShareingHeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAnimatorCurrentHeight(Lcom/oplus/resolver/OplusResolverOshareLayout;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimatorCurrentHeight:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverOshareLayout;->DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverOshareLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/resolver/OplusResolverOshareLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mHasExecuteAnimator:Z

    .line 26
    const/4 v1, -0x1

    iput v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenStatus:I

    .line 27
    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    .line 28
    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    .line 29
    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareingHeight:I

    .line 30
    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimatorCurrentHeight:I

    .line 32
    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mIsSplitScreenMode:Z

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareingHeight:I

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0xc0500ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    .line 46
    return-void
.end method

.method private blacklist StartAnimatorIfNeeded()V
    .locals 3

    .line 80
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mHasExecuteAnimator:Z

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShareOpenStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",params.height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mShareingHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareingHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mShareOpenedHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mShareNeedOpenHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusResolverOshareLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenStatus:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 99
    :pswitch_0
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    if-nez v1, :cond_0

    .line 100
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    iput v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 104
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimatorCurrentHeight:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    :goto_0
    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareingHeight:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshareLayout;->startLayoutHeightAnimator(II)V

    goto :goto_1

    .line 106
    :cond_2
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareingHeight:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshareLayout;->startLayoutHeightAnimator(II)V

    goto :goto_1

    .line 94
    :pswitch_1
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    if-gt v1, v2, :cond_3

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    if-le v1, v2, :cond_4

    .line 95
    :cond_3
    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshareLayout;->startLayoutHeightAnimator(II)V

    goto :goto_1

    .line 89
    :pswitch_2
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    if-le v1, v2, :cond_4

    .line 90
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget v2, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    invoke-direct {p0, v1, v2}, Lcom/oplus/resolver/OplusResolverOshareLayout;->startLayoutHeightAnimator(II)V

    .line 111
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startLayoutHeightAnimator(II)V
    .locals 3
    .param p1, "initHeight"    # I
    .param p2, "targetHeight"    # I

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLayoutHeightAnimator initHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",targetHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusResolverOshareLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mHasExecuteAnimator:Z

    .line 117
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v0

    const/4 v0, 0x1

    aput p2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    .line 118
    const-wide/16 v1, 0x85

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 119
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oplus/resolver/OplusResolverOshareLayout;->DEFAUT_PATHINTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 120
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshareLayout$1;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshareLayout$1;-><init>(Lcom/oplus/resolver/OplusResolverOshareLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 129
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oplus/resolver/OplusResolverOshareLayout$2;

    invoke-direct {v1, p0}, Lcom/oplus/resolver/OplusResolverOshareLayout$2;-><init>(Lcom/oplus/resolver/OplusResolverOshareLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 137
    return-void
.end method


# virtual methods
.method protected whitelist onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 51
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareNeedOpenHeight:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 52
    const-string v0, "OplusResolverOshareLayout"

    const-string v1, "set mShareOpenedHeight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenedHeight:I

    .line 54
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mIsSplitScreenMode:Z

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->StartAnimatorIfNeeded()V

    .line 58
    :cond_0
    return-void
.end method

.method public whitelist setIsSplitScreenMode(Z)V
    .locals 2
    .param p1, "value"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mIsSplitScreenMode:Z

    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public whitelist setShareOpenStatus(I)V
    .locals 1
    .param p1, "value"    # I

    .line 61
    iget v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenStatus:I

    if-eq v0, p1, :cond_0

    .line 62
    iput p1, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mShareOpenStatus:I

    .line 63
    iget-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mIsSplitScreenMode:Z

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/resolver/OplusResolverOshareLayout;->mHasExecuteAnimator:Z

    .line 65
    invoke-direct {p0}, Lcom/oplus/resolver/OplusResolverOshareLayout;->StartAnimatorIfNeeded()V

    .line 68
    :cond_0
    return-void
.end method
