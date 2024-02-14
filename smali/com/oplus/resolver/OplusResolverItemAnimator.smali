.class public Lcom/oplus/resolver/OplusResolverItemAnimator;
.super Lcom/android/internal/widget/SimpleItemAnimator;
.source "OplusResolverItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;,
        Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    }
.end annotation


# static fields
.field private static final blacklist ADD_AND_REMOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist ADD_SCALE:F = 0.9f

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist REMOVE_SCALE:F = 0.8f

.field private static blacklist sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field blacklist mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field blacklist mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->ADD_AND_REMOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 46
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->MOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/internal/widget/SimpleItemAnimator;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 209
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 210
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 211
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v2, Lcom/oplus/resolver/OplusResolverItemAnimator;->ADD_AND_REMOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 213
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getRemoveDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/oplus/resolver/OplusResolverItemAnimator$4;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator$4;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 214
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 238
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 239
    return-void
.end method

.method private blacklist endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p2, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 432
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 433
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    .line 434
    .local v1, "changeInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;
    invoke-direct {p0, v1, p2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    iget-object v2, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 436
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 432
    .end local v1    # "changeInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 440
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private blacklist endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;)V
    .locals 1
    .param p1, "changeInfo"    # Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    .line 443
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 446
    :cond_0
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z

    .line 449
    :cond_1
    return-void
.end method

.method private blacklist endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "changeInfo"    # Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;
    .param p2, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "oldItem":Z
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-ne v1, p2, :cond_0

    .line 454
    iput-object v2, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 455
    :cond_0
    iget-object v1, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v1, p2, :cond_1

    .line 456
    iput-object v2, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 457
    const/4 v0, 0x1

    .line 461
    :goto_0
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 462
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 463
    iget-object v1, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 464
    invoke-virtual {p0, p2, v0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchChangeFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    .line 465
    const/4 v1, 0x1

    return v1

    .line 459
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 555
    sget-object v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 558
    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oplus/resolver/OplusResolverItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 559
    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 560
    return-void
.end method


# virtual methods
.method public blacklist animateAdd(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 243
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 244
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 245
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 246
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 247
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v0, 0x1

    return v0
.end method

.method blacklist animateAddImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 252
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 253
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 254
    .local v1, "animation":Landroid/view/ViewPropertyAnimator;
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v2, Lcom/oplus/resolver/OplusResolverItemAnimator;->ADD_AND_REMOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 256
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/oplus/resolver/OplusResolverItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator$5;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 257
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 277
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 278
    return-void
.end method

.method public blacklist animateChange(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 17
    .param p1, "oldHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p3, "fromX"    # I
    .param p4, "fromY"    # I
    .param p5, "toX"    # I
    .param p6, "toY"    # I

    .line 348
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    if-ne v14, v15, :cond_0

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/resolver/OplusResolverItemAnimator;->animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 353
    :cond_0
    iget-object v0, v14, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 354
    .local v0, "prevTranslationX":F
    iget-object v1, v14, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 355
    .local v1, "prevTranslationY":F
    iget-object v2, v14, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 356
    .local v2, "prevAlpha":F
    invoke-direct/range {p0 .. p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 357
    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    .line 358
    .local v3, "deltaX":I
    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 360
    .local v4, "deltaY":I
    iget-object v5, v14, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 361
    iget-object v5, v14, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 362
    iget-object v5, v14, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 363
    if-eqz v15, :cond_1

    .line 365
    invoke-direct {v6, v15}, Lcom/oplus/resolver/OplusResolverItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 366
    iget-object v5, v15, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationX(F)V

    .line 367
    iget-object v5, v15, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v7, v4

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setTranslationY(F)V

    .line 368
    iget-object v5, v15, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 370
    :cond_1
    iget-object v5, v6, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v13, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    move-object v7, v13

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v16, v0

    move-object v0, v13

    .end local v0    # "prevTranslationX":F
    .local v16, "prevTranslationX":F
    move/from16 v13, p6

    invoke-direct/range {v7 .. v13}, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v0, 0x1

    return v0
.end method

.method blacklist animateChangeImpl(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;)V
    .locals 8
    .param p1, "changeInfo"    # Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    .line 375
    iget-object v0, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 376
    .local v0, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 377
    .local v2, "view":Landroid/view/View;
    :goto_0
    iget-object v3, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 378
    .local v3, "newHolder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_1

    iget-object v1, v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 379
    .local v1, "newView":Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 381
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 380
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 382
    .local v5, "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget v6, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->toX:I

    iget v7, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 384
    iget v6, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->toY:I

    iget v7, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 385
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/oplus/resolver/OplusResolverItemAnimator$7;

    invoke-direct {v7, p0, p1, v5, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator$7;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 403
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 405
    .end local v5    # "oldViewAnim":Landroid/view/ViewPropertyAnimator;
    :cond_2
    if-eqz v1, :cond_3

    .line 406
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 407
    .local v5, "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->newHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getChangeDuration()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 409
    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v6, Lcom/oplus/resolver/OplusResolverItemAnimator$8;

    invoke-direct {v6, p0, p1, v5, v1}, Lcom/oplus/resolver/OplusResolverItemAnimator$8;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 429
    .end local v5    # "newViewAnimation":Landroid/view/ViewPropertyAnimator;
    :cond_3
    return-void
.end method

.method public blacklist animateMove(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 15
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 283
    move-object/from16 v6, p1

    iget-object v7, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 284
    .local v7, "view":Landroid/view/View;
    move/from16 v0, p2

    int-to-float v1, v0

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 285
    .end local p2    # "fromX":I
    .local v8, "fromX":I
    move/from16 v0, p3

    int-to-float v1, v0

    iget-object v2, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 286
    .end local p3    # "fromY":I
    .local v9, "fromY":I
    invoke-direct/range {p0 .. p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 287
    sub-int v10, p4, v8

    .line 288
    .local v10, "deltaX":I
    sub-int v11, p5, v9

    .line 289
    .local v11, "deltaY":I
    if-nez v10, :cond_0

    if-nez v11, :cond_0

    .line 290
    invoke-virtual/range {p0 .. p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 291
    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    if-eqz v10, :cond_1

    .line 294
    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 296
    :cond_1
    if-eqz v11, :cond_2

    .line 297
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 299
    :cond_2
    move-object v12, p0

    iget-object v13, v12, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v14, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    move-object v0, v14

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;-><init>(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    const/4 v0, 0x1

    return v0
.end method

.method blacklist animateMoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;IIII)V
    .locals 15
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .line 304
    move-object/from16 v7, p1

    iget-object v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 305
    .local v8, "view":Landroid/view/View;
    sub-int v9, p4, p2

    .line 306
    .local v9, "deltaX":I
    sub-int v10, p5, p3

    .line 307
    .local v10, "deltaY":I
    const/4 v0, 0x0

    if-eqz v9, :cond_0

    .line 308
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 310
    :cond_0
    if-eqz v10, :cond_1

    .line 311
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 316
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    .line 317
    .local v11, "animation":Landroid/view/ViewPropertyAnimator;
    move-object v12, p0

    iget-object v0, v12, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v0, Lcom/oplus/resolver/OplusResolverItemAnimator;->MOVE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v11, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getMoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    new-instance v14, Lcom/oplus/resolver/OplusResolverItemAnimator$6;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v9

    move-object v4, v8

    move v5, v10

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Lcom/oplus/resolver/OplusResolverItemAnimator$6;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Lcom/android/internal/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    return-void
.end method

.method public blacklist animateRemove(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 203
    invoke-direct {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->resetAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 204
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .locals 1
    .param p1, "viewHolder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 698
    .local p2, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/SimpleItemAnimator;->canReuseUpdatedViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method blacklist cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 674
    .local p1, "viewHolders":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 675
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 674
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 677
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method blacklist dispatchFinishedWhenDone()V
    .locals 1

    .line 583
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAnimationsFinished()V

    .line 586
    :cond_0
    return-void
.end method

.method public blacklist endAnimation(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 8
    .param p1, "item"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 470
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 472
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 474
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 475
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    .line 476
    .local v3, "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v4, p1, :cond_0

    .line 477
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 478
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 479
    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 480
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 474
    .end local v3    # "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 483
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 484
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 485
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 486
    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 488
    :cond_2
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 489
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 493
    :cond_3
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_5

    .line 494
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 495
    .local v4, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    invoke-direct {p0, v4, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 496
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 497
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 493
    .end local v4    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 500
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2
    if-ltz v1, :cond_8

    .line 501
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 502
    .local v4, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_3
    if-ltz v5, :cond_7

    .line 503
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    .line 504
    .local v6, "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    iget-object v7, v6, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    if-ne v7, p1, :cond_6

    .line 505
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 506
    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 508
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 509
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 510
    iget-object v7, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 502
    .end local v6    # "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 500
    .end local v4    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;>;"
    .end local v5    # "j":I
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 516
    .end local v1    # "i":I
    :cond_8
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_5
    if-ltz v1, :cond_a

    .line 517
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 518
    .local v2, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 519
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 520
    invoke-virtual {p0, p1}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 521
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 522
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    .end local v2    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 529
    .end local v1    # "i":I
    :cond_a
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 535
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 541
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 547
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchFinishedWhenDone()V

    .line 552
    return-void
.end method

.method public blacklist endAnimations()V
    .locals 11

    .line 590
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 591
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 592
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    .line 593
    .local v3, "item":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    iget-object v4, v3, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 594
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 595
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 596
    iget-object v2, v3, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 597
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 591
    .end local v3    # "item":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 599
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 600
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 601
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 602
    .local v3, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v3}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchRemoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 603
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 600
    .end local v3    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 605
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 606
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_2
    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_2

    .line 607
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 608
    .local v4, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 609
    invoke-virtual {p0, v4}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 610
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    .end local v4    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 612
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 613
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_3

    .line 614
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    invoke-direct {p0, v4}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;)V

    .line 613
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 616
    .end local v1    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 617
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_4

    .line 618
    return-void

    .line 621
    :cond_4
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 622
    .local v1, "listCount":I
    add-int/lit8 v4, v1, -0x1

    .local v4, "i":I
    :goto_4
    if-ltz v4, :cond_7

    .line 623
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 624
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 625
    add-int/lit8 v6, v0, -0x1

    .local v6, "j":I
    :goto_5
    if-ltz v6, :cond_6

    .line 626
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    .line 627
    .local v7, "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    iget-object v8, v7, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 628
    .local v8, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v9, v8, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 629
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 630
    invoke-virtual {v9, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 631
    iget-object v10, v7, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v10}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchMoveFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 632
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 633
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 634
    iget-object v10, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 625
    .end local v7    # "moveInfo":Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;
    .end local v8    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v9    # "view":Landroid/view/View;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 622
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;>;"
    .end local v6    # "j":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 638
    .end local v4    # "i":I
    :cond_7
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 639
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_a

    .line 640
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 641
    .local v4, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    add-int/lit8 v5, v0, -0x1

    .local v5, "j":I
    :goto_7
    if-ltz v5, :cond_9

    .line 643
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 644
    .local v6, "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v7, v6, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 645
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7, v3}, Landroid/view/View;->setAlpha(F)V

    .line 646
    invoke-virtual {p0, v6}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAddFinished(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 647
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 648
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 649
    iget-object v8, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 642
    .end local v6    # "item":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .end local v7    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_7

    .line 639
    .end local v4    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v5    # "j":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 653
    .end local v2    # "i":I
    :cond_a
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 654
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_8
    if-ltz v2, :cond_d

    .line 655
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 656
    .local v3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 657
    add-int/lit8 v4, v0, -0x1

    .local v4, "j":I
    :goto_9
    if-ltz v4, :cond_c

    .line 658
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    invoke-direct {p0, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator;->endChangeAnimationIfNecessary(Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;)V

    .line 659
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 660
    iget-object v5, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 657
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_9

    .line 654
    .end local v3    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    .end local v4    # "j":I
    :cond_c
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    .line 665
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 666
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 667
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 668
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/oplus/resolver/OplusResolverItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 670
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->dispatchAnimationsFinished()V

    .line 671
    return-void
.end method

.method public blacklist isRunning()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 565
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 566
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 567
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 568
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 569
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 570
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 571
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 572
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 573
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 574
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 564
    :goto_1
    return v0
.end method

.method public blacklist runPendingAnimations()V
    .locals 15

    .line 112
    iget-object v0, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 113
    .local v0, "removalsPending":Z
    iget-object v1, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 114
    .local v1, "movesPending":Z
    iget-object v2, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 115
    .local v2, "changesPending":Z
    iget-object v3, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 116
    .local v3, "additionsPending":Z
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 122
    .local v5, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    invoke-direct {p0, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator;->animateRemoveImpl(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 123
    .end local v5    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    goto :goto_0

    .line 124
    :cond_1
    iget-object v4, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 127
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;>;"
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 131
    new-instance v6, Lcom/oplus/resolver/OplusResolverItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator$1;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Ljava/util/ArrayList;)V

    .line 142
    .local v6, "mover":Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 143
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;

    iget-object v7, v7, Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;->holder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 144
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    invoke-virtual {v7, v6, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 145
    .end local v7    # "view":Landroid/view/View;
    goto :goto_1

    .line 146
    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 150
    .end local v5    # "moves":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$MoveInfo;>;"
    .end local v6    # "mover":Ljava/lang/Runnable;
    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 151
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v5, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 155
    new-instance v6, Lcom/oplus/resolver/OplusResolverItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator$2;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Ljava/util/ArrayList;)V

    .line 165
    .local v6, "changer":Ljava/lang/Runnable;
    if-eqz v0, :cond_4

    .line 166
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;

    iget-object v7, v7, Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;->oldHolder:Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 167
    .local v7, "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    iget-object v8, v7, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 168
    .end local v7    # "holder":Lcom/android/internal/widget/RecyclerView$ViewHolder;
    goto :goto_2

    .line 169
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    .line 173
    .end local v5    # "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oplus/resolver/OplusResolverItemAnimator$ChangeInfo;>;"
    .end local v6    # "changer":Ljava/lang/Runnable;
    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 174
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v5, "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v6, p0, Lcom/oplus/resolver/OplusResolverItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 178
    new-instance v6, Lcom/oplus/resolver/OplusResolverItemAnimator$3;

    invoke-direct {v6, p0, v5}, Lcom/oplus/resolver/OplusResolverItemAnimator$3;-><init>(Lcom/oplus/resolver/OplusResolverItemAnimator;Ljava/util/ArrayList;)V

    .line 188
    .local v6, "adder":Ljava/lang/Runnable;
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 196
    :cond_6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 189
    :cond_7
    :goto_3
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getRemoveDuration()J

    move-result-wide v9

    goto :goto_4

    :cond_8
    move-wide v9, v7

    .line 190
    .local v9, "removeDuration":J
    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getMoveDuration()J

    move-result-wide v11

    goto :goto_5

    :cond_9
    move-wide v11, v7

    .line 191
    .local v11, "moveDuration":J
    :goto_5
    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/oplus/resolver/OplusResolverItemAnimator;->getChangeDuration()J

    move-result-wide v7

    .line 192
    .local v7, "changeDuration":J
    :cond_a
    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    add-long/2addr v13, v9

    .line 193
    .local v13, "totalDelay":J
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 194
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4, v6, v13, v14}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 199
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "additions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/RecyclerView$ViewHolder;>;"
    .end local v6    # "adder":Ljava/lang/Runnable;
    .end local v7    # "changeDuration":J
    .end local v9    # "removeDuration":J
    .end local v11    # "moveDuration":J
    .end local v13    # "totalDelay":J
    :cond_b
    :goto_6
    return-void
.end method
