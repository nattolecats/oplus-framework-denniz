.class Landroid/widget/OplusFastScroller;
.super Landroid/widget/FastScroller;
.source "OplusFastScroller.java"


# static fields
.field private static blacklist BOTTOM:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist COLOR_MIN_PAGES:I = 0x3

.field private static final blacklist COLOR_STATE_HIDE:I = 0x3

.field private static final blacklist DURATION_CROSS_FADE:I = 0x32

.field private static final blacklist DURATION_FADE_IN:I = 0x96

.field private static final blacklist DURATION_FADE_OUT:I = 0x12c

.field private static final blacklist DURATION_RESIZE:I = 0x64

.field private static final blacklist FADE_TIMEOUT:J = 0x5dcL

.field private static blacklist LEFT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MIN_PAGES:I = 0x4

.field private static final blacklist OVERLAY_ABOVE_THUMB:I = 0x2

.field private static final blacklist OVERLAY_AT_THUMB:I = 0x1

.field private static final blacklist OVERLAY_FLOATING:I = 0x0

.field private static final blacklist PREVIEW_LEFT:I = 0x0

.field private static final blacklist PREVIEW_RIGHT:I = 0x1

.field private static blacklist RIGHT:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist STATE_DRAGGING:I = 0x2

.field private static final blacklist STATE_NONE:I = 0x0

.field private static final blacklist STATE_VISIBLE:I = 0x1

.field private static final blacklist TAP_TIMEOUT:J

.field private static final blacklist THUMB_POSITION_INSIDE:I = 0x1

.field private static final blacklist THUMB_POSITION_MIDPOINT:I

.field private static blacklist TOP:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlwaysShow:Z

.field private final greylist mContainerRect:Landroid/graphics/Rect;

.field private blacklist mCurrentSection:I

.field private blacklist mDecorAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mDeferHide:Ljava/lang/Runnable;

.field private blacklist mEnabled:Z

.field private blacklist mFirstVisibleItem:I

.field private greylist mHeaderCount:I

.field private blacklist mInitialTouchY:F

.field private blacklist mLayoutFromRight:Z

.field private final blacklist mList:Landroid/widget/AbsListView;

.field private blacklist mListAdapter:Landroid/widget/Adapter;

.field private greylist mLongList:Z

.field private blacklist mMatchDragPosition:Z

.field private final greylist mMinimumTouchTarget:I

.field private blacklist mOldChildCount:I

.field private blacklist mOldItemCount:I

.field private final blacklist mOverlay:Landroid/view/ViewGroupOverlay;

.field private blacklist mOverlayPosition:I

.field private blacklist mPendingDrag:J

.field private blacklist mPreviewAnimation:Landroid/animation/AnimatorSet;

.field private final blacklist mPreviewImage:Landroid/view/View;

.field private blacklist mPreviewMinHeight:I

.field private blacklist mPreviewMinWidth:I

.field private blacklist mPreviewPadding:I

.field private final blacklist mPreviewResId:[I

.field private final blacklist mPrimaryText:Landroid/widget/TextView;

.field private blacklist mScaledTouchSlop:I

.field private blacklist mScrollBarStyle:I

.field private blacklist mScrollCompleted:Z

.field private blacklist mScrollbarPosition:I

.field private final blacklist mSecondaryText:Landroid/widget/TextView;

.field private blacklist mSectionIndexer:Landroid/widget/SectionIndexer;

.field private blacklist mSections:[Ljava/lang/Object;

.field private blacklist mShowingPreview:Z

.field private blacklist mShowingPrimary:Z

.field private blacklist mState:I

.field private final blacklist mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

.field private final blacklist mTempBounds:Landroid/graphics/Rect;

.field private final blacklist mTempMargins:Landroid/graphics/Rect;

.field private blacklist mTextAppearance:I

.field private blacklist mTextColor:Landroid/content/res/ColorStateList;

.field private blacklist mTextSize:F

.field private greylist mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist mThumbImage:Landroid/widget/ImageView;

.field private blacklist mThumbMinHeight:I

.field private blacklist mThumbMinWidth:I

.field private blacklist mThumbOffset:F

.field private blacklist mThumbPosition:I

.field private blacklist mThumbRange:F

.field private greylist mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final greylist mTrackImage:Landroid/widget/ImageView;

.field private blacklist mUpdatingLayout:Z

.field private blacklist mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmShowingPrimary(Landroid/widget/OplusFastScroller;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/OplusFastScroller;->mShowingPrimary:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/widget/OplusFastScroller;)I
    .locals 0

    iget p0, p0, Landroid/widget/OplusFastScroller;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShowingPrimary(Landroid/widget/OplusFastScroller;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/OplusFastScroller;->mShowingPrimary:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmState(Landroid/widget/OplusFastScroller;I)V
    .locals 0

    iput p1, p0, Landroid/widget/OplusFastScroller;->mState:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetState(Landroid/widget/OplusFastScroller;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/OplusFastScroller;->setState(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 119
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Landroid/widget/OplusFastScroller;->TAP_TIMEOUT:J

    .line 1753
    new-instance v0, Landroid/widget/OplusFastScroller$4;

    const-string v1, "left"

    invoke-direct {v0, v1}, Landroid/widget/OplusFastScroller$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/OplusFastScroller;->LEFT:Landroid/util/Property;

    .line 1769
    new-instance v0, Landroid/widget/OplusFastScroller$5;

    const-string v1, "top"

    invoke-direct {v0, v1}, Landroid/widget/OplusFastScroller$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/OplusFastScroller;->TOP:Landroid/util/Property;

    .line 1785
    new-instance v0, Landroid/widget/OplusFastScroller$6;

    const-string v1, "right"

    invoke-direct {v0, v1}, Landroid/widget/OplusFastScroller$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/OplusFastScroller;->RIGHT:Landroid/util/Property;

    .line 1801
    new-instance v0, Landroid/widget/OplusFastScroller$7;

    const-string v1, "bottom"

    invoke-direct {v0, v1}, Landroid/widget/OplusFastScroller$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/widget/OplusFastScroller;->BOTTOM:Landroid/util/Property;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/AbsListView;I)V
    .locals 8
    .param p1, "listView"    # Landroid/widget/AbsListView;
    .param p2, "styleResId"    # I

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mPreviewResId:[I

    .line 217
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/OplusFastScroller;->mCurrentSection:I

    .line 222
    iput v0, p0, Landroid/widget/OplusFastScroller;->mScrollbarPosition:I

    .line 291
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    .line 300
    new-instance v0, Landroid/widget/OplusFastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/OplusFastScroller$1;-><init>(Landroid/widget/OplusFastScroller;)V

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mDeferHide:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Landroid/widget/OplusFastScroller$2;

    invoke-direct {v0, p0}, Landroid/widget/OplusFastScroller$2;-><init>(Landroid/widget/OplusFastScroller;)V

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    .line 322
    iput-object p1, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    .line 323
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/OplusFastScroller;->mOldItemCount:I

    .line 324
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    iput v0, p0, Landroid/widget/OplusFastScroller;->mOldChildCount:I

    .line 326
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 327
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/OplusFastScroller;->mScaledTouchSlop:I

    .line 328
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getScrollBarStyle()I

    move-result v1

    iput v1, p0, Landroid/widget/OplusFastScroller;->mScrollBarStyle:I

    .line 330
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OplusFastScroller;->mScrollCompleted:Z

    .line 331
    iput v1, p0, Landroid/widget/OplusFastScroller;->mState:I

    .line 332
    nop

    .line 333
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/widget/OplusFastScroller;->mMatchDragPosition:Z

    .line 335
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 336
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 337
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 338
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 339
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    .line 340
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 341
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 342
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 343
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 345
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105013d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Landroid/widget/OplusFastScroller;->mMinimumTouchTarget:I

    .line 348
    invoke-virtual {p0, p2}, Landroid/widget/OplusFastScroller;->setStyle(I)V

    .line 350
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    .line 351
    .local v6, "overlay":Landroid/view/ViewGroupOverlay;
    iput-object v6, p0, Landroid/widget/OplusFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    .line 352
    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 353
    invoke-virtual {v6, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 354
    invoke-virtual {v6, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 355
    invoke-virtual {v6, v4}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 356
    invoke-virtual {v6, v5}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 358
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->getSectionsFromIndexer()V

    .line 359
    iget v1, p0, Landroid/widget/OplusFastScroller;->mOldChildCount:I

    iget v2, p0, Landroid/widget/OplusFastScroller;->mOldItemCount:I

    invoke-direct {p0, v1, v2}, Landroid/widget/OplusFastScroller;->updateLongList(II)V

    .line 360
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/OplusFastScroller;->setScrollbarPosition(I)V

    .line 361
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->postAutoHide()V

    .line 362
    return-void
.end method

.method private static blacklist animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "alpha"    # F

    .line 1746
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;
    .locals 8
    .param p0, "v"    # Landroid/view/View;
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1817
    sget-object v0, Landroid/widget/OplusFastScroller;->LEFT:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 1818
    .local v0, "left":Landroid/animation/PropertyValuesHolder;
    sget-object v2, Landroid/widget/OplusFastScroller;->TOP:Landroid/util/Property;

    new-array v3, v1, [I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    aput v5, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 1819
    .local v2, "top":Landroid/animation/PropertyValuesHolder;
    sget-object v3, Landroid/widget/OplusFastScroller;->RIGHT:Landroid/util/Property;

    new-array v5, v1, [I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    aput v6, v5, v4

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 1820
    .local v3, "right":Landroid/animation/PropertyValuesHolder;
    sget-object v5, Landroid/widget/OplusFastScroller;->BOTTOM:Landroid/util/Property;

    new-array v6, v1, [I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    aput v7, v6, v4

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 1821
    .local v5, "bottom":Landroid/animation/PropertyValuesHolder;
    const/4 v6, 0x4

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v4

    aput-object v2, v6, v1

    const/4 v1, 0x2

    aput-object v3, v6, v1

    const/4 v1, 0x3

    aput-object v5, v6, v1

    invoke-static {p0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 3
    .param p0, "v"    # Landroid/view/View;
    .param p1, "target"    # F

    .line 1739
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method private blacklist applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 683
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 684
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mLayoutFromRight:Z

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 685
    return-void
.end method

.method private blacklist beginDrag()V
    .locals 2

    .line 1503
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    .line 1504
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 1506
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 1507
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->getSectionsFromIndexer()V

    .line 1510
    :cond_0
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 1511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1512
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1515
    :cond_1
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->cancelFling()V

    .line 1516
    return-void
.end method

.method private blacklist cancelFling()V
    .locals 8

    .line 1477
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1479
    .local v0, "cancelFling":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 1480
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1482
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1483
    return-void
.end method

.method private blacklist cancelPendingDrag()V
    .locals 2

    .line 1491
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    .line 1492
    return-void
.end method

.method private blacklist createPreviewTextView(Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 625
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 627
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 628
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 630
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 631
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 632
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 635
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 637
    return-object v1
.end method

.method private blacklist getPosFromItemCount(III)F
    .locals 20
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 1369
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1370
    .local v4, "sectionIndexer":Landroid/widget/SectionIndexer;
    if-eqz v4, :cond_0

    iget-object v5, v0, Landroid/widget/OplusFastScroller;->mListAdapter:Landroid/widget/Adapter;

    if-nez v5, :cond_1

    .line 1371
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusFastScroller;->getSectionsFromIndexer()V

    .line 1374
    :cond_1
    const/4 v5, 0x0

    if-eqz v2, :cond_14

    if-nez v3, :cond_2

    move-object/from16 v17, v4

    goto/16 :goto_c

    .line 1379
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    iget-object v8, v0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    if-eqz v8, :cond_3

    array-length v8, v8

    if-lez v8, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v6

    .line 1381
    .local v8, "hasSections":Z
    :goto_0
    if-eqz v8, :cond_f

    iget-boolean v10, v0, Landroid/widget/OplusFastScroller;->mMatchDragPosition:Z

    if-nez v10, :cond_4

    move-object/from16 v17, v4

    goto/16 :goto_9

    .line 1406
    :cond_4
    iget v10, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    sub-int/2addr v1, v10

    .line 1407
    .end local p1    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    if-gez v1, :cond_5

    .line 1408
    return v5

    .line 1410
    :cond_5
    sub-int/2addr v3, v10

    .line 1413
    .end local p3    # "totalItemCount":I
    .local v3, "totalItemCount":I
    iget-object v5, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1415
    .local v5, "child":Landroid/view/View;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 1418
    :cond_6
    iget-object v6, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v6, v10

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v6, v10

    .local v6, "incrementalPos":F
    goto :goto_2

    .line 1416
    .end local v6    # "incrementalPos":F
    :cond_7
    :goto_1
    const/4 v6, 0x0

    .line 1422
    .restart local v6    # "incrementalPos":F
    :goto_2
    invoke-interface {v4, v1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v10

    .line 1423
    .local v10, "section":I
    invoke-interface {v4, v10}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 1424
    .local v11, "sectionPos":I
    iget-object v12, v0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    array-length v12, v12

    .line 1426
    .local v12, "sectionCount":I
    add-int/lit8 v13, v12, -0x1

    if-ge v10, v13, :cond_9

    .line 1428
    add-int/lit8 v13, v10, 0x1

    if-ge v13, v12, :cond_8

    .line 1429
    add-int/lit8 v13, v10, 0x1

    invoke-interface {v4, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .local v13, "nextSectionPos":I
    goto :goto_3

    .line 1431
    .end local v13    # "nextSectionPos":I
    :cond_8
    add-int/lit8 v13, v3, -0x1

    .line 1433
    .restart local v13    # "nextSectionPos":I
    :goto_3
    sub-int/2addr v13, v11

    .line 1434
    .local v13, "positionsInSection":I
    goto :goto_4

    .line 1435
    .end local v13    # "positionsInSection":I
    :cond_9
    sub-int v13, v3, v11

    .line 1440
    .restart local v13    # "positionsInSection":I
    :goto_4
    if-nez v13, :cond_a

    .line 1441
    const/4 v14, 0x0

    .local v14, "posWithinSection":F
    goto :goto_5

    .line 1443
    .end local v14    # "posWithinSection":F
    :cond_a
    int-to-float v14, v1

    add-float/2addr v14, v6

    int-to-float v15, v11

    sub-float/2addr v14, v15

    int-to-float v15, v13

    div-float/2addr v14, v15

    .line 1447
    .restart local v14    # "posWithinSection":F
    :goto_5
    int-to-float v15, v10

    add-float/2addr v15, v14

    if-nez v12, :cond_b

    goto :goto_6

    :cond_b
    move v7, v12

    :goto_6
    int-to-float v7, v7

    div-float/2addr v15, v7

    .line 1452
    .local v15, "result":F
    if-lez v1, :cond_e

    add-int v7, v1, v2

    if-ne v7, v3, :cond_e

    .line 1453
    iget-object v7, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1454
    .local v7, "lastChild":Landroid/view/View;
    iget-object v9, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v9

    .line 1457
    .local v9, "bottomPadding":I
    move/from16 p1, v1

    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    iget-object v1, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1458
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1459
    .local v1, "maxSize":I
    move/from16 p3, v1

    .end local v1    # "maxSize":I
    .local p3, "maxSize":I
    iget-object v1, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v1, v1, v17

    move/from16 v19, v3

    move/from16 v3, p3

    move/from16 p3, v19

    .local v1, "currentVisibleSize":I
    goto :goto_7

    .line 1461
    .end local v1    # "currentVisibleSize":I
    .end local p3    # "maxSize":I
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v9

    .line 1462
    .local v1, "maxSize":I
    move/from16 p3, v1

    .end local v1    # "maxSize":I
    .restart local p3    # "maxSize":I
    iget-object v1, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v17

    sub-int v1, v1, v17

    move/from16 v19, v3

    move/from16 v3, p3

    move/from16 p3, v19

    .line 1464
    .local v1, "currentVisibleSize":I
    .local v3, "maxSize":I
    .local p3, "totalItemCount":I
    :goto_7
    if-lez v1, :cond_d

    if-lez v3, :cond_d

    .line 1465
    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v15

    move-object/from16 v17, v4

    .end local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .local v17, "sectionIndexer":Landroid/widget/SectionIndexer;
    int-to-float v4, v1

    move/from16 v18, v1

    .end local v1    # "currentVisibleSize":I
    .local v18, "currentVisibleSize":I
    int-to-float v1, v3

    div-float/2addr v4, v1

    mul-float v16, v16, v4

    add-float v15, v15, v16

    goto :goto_8

    .line 1464
    .end local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .end local v18    # "currentVisibleSize":I
    .restart local v1    # "currentVisibleSize":I
    .restart local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    :cond_d
    move/from16 v18, v1

    move-object/from16 v17, v4

    .end local v1    # "currentVisibleSize":I
    .end local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local v18    # "currentVisibleSize":I
    goto :goto_8

    .line 1452
    .end local v7    # "lastChild":Landroid/view/View;
    .end local v9    # "bottomPadding":I
    .end local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .end local v18    # "currentVisibleSize":I
    .end local p1    # "firstVisibleItem":I
    .end local p3    # "totalItemCount":I
    .local v1, "firstVisibleItem":I
    .local v3, "totalItemCount":I
    .restart local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    :cond_e
    move/from16 p1, v1

    move/from16 p3, v3

    move-object/from16 v17, v4

    .line 1469
    .end local v1    # "firstVisibleItem":I
    .end local v3    # "totalItemCount":I
    .end local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local p1    # "firstVisibleItem":I
    .restart local p3    # "totalItemCount":I
    :goto_8
    return v15

    .line 1381
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "incrementalPos":F
    .end local v10    # "section":I
    .end local v11    # "sectionPos":I
    .end local v12    # "sectionCount":I
    .end local v13    # "positionsInSection":I
    .end local v14    # "posWithinSection":F
    .end local v15    # "result":F
    .end local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    :cond_f
    move-object/from16 v17, v4

    .line 1382
    .end local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    :goto_9
    if-ne v2, v3, :cond_10

    .line 1384
    return v5

    .line 1387
    :cond_10
    iget-object v4, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v4, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1390
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-nez v5, :cond_11

    goto :goto_a

    .line 1394
    :cond_11
    iget-object v5, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1395
    .local v5, "offset":F
    int-to-float v6, v1

    add-float/2addr v6, v5

    iget-object v7, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v7, v9

    sub-int v7, v3, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .local v6, "result":F
    goto :goto_b

    .line 1391
    .end local v5    # "offset":F
    .end local v6    # "result":F
    :cond_12
    :goto_a
    const/4 v5, 0x0

    .line 1392
    .restart local v5    # "offset":F
    int-to-float v6, v1

    add-float/2addr v6, v5

    sub-int v7, v3, v2

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1397
    .restart local v6    # "result":F
    :goto_b
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v7

    if-lez v9, :cond_13

    .line 1398
    return v7

    .line 1400
    :cond_13
    return v6

    .line 1374
    .end local v5    # "offset":F
    .end local v6    # "result":F
    .end local v8    # "hasSections":Z
    .end local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .local v4, "sectionIndexer":Landroid/widget/SectionIndexer;
    :cond_14
    move-object/from16 v17, v4

    .line 1376
    .end local v4    # "sectionIndexer":Landroid/widget/SectionIndexer;
    .restart local v17    # "sectionIndexer":Landroid/widget/SectionIndexer;
    :goto_c
    return v5
.end method

.method private blacklist getPosFromMotionEvent(F)F
    .locals 3
    .param p1, "y"    # F

    .line 1353
    iget v0, p0, Landroid/widget/OplusFastScroller;->mThumbRange:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    .line 1354
    return v1

    .line 1356
    :cond_0
    iget v2, p0, Landroid/widget/OplusFastScroller;->mThumbOffset:F

    sub-float v2, p1, v2

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private blacklist getSectionsFromIndexer()V
    .locals 3

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1052
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    .line 1053
    .local v1, "adapter":Landroid/widget/Adapter;
    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    .line 1054
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    .line 1055
    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 1058
    :cond_0
    instance-of v2, v1, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    .line 1059
    move-object v0, v1

    check-cast v0, Landroid/widget/ExpandableListConnector;

    .line 1060
    invoke-virtual {v0}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    .line 1061
    .local v0, "expAdapter":Landroid/widget/ExpandableListAdapter;
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 1062
    move-object v2, v0

    check-cast v2, Landroid/widget/SectionIndexer;

    iput-object v2, p0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1063
    iput-object v1, p0, Landroid/widget/OplusFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1064
    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    .line 1066
    .end local v0    # "expAdapter":Landroid/widget/ExpandableListAdapter;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    .line 1067
    iput-object v1, p0, Landroid/widget/OplusFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1068
    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1069
    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 1071
    :cond_3
    iput-object v1, p0, Landroid/widget/OplusFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1072
    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    .line 1074
    :goto_0
    return-void
.end method

.method private static varargs blacklist groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;
    .locals 7
    .param p1, "value"    # F
    .param p2, "views"    # [Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;F[",
            "Landroid/view/View;",
            ")",
            "Landroid/animation/Animator;"
        }
    .end annotation

    .line 1720
    .local p0, "property":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1721
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x0

    .line 1723
    .local v1, "builder":Landroid/animation/AnimatorSet$Builder;
    array-length v2, p2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 1724
    aget-object v4, p2, v2

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    invoke-static {v4, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 1725
    .local v4, "anim":Landroid/animation/Animator;
    if-nez v1, :cond_0

    .line 1726
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    goto :goto_1

    .line 1728
    :cond_0
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1723
    .end local v4    # "anim":Landroid/animation/Animator;
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1732
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist isPointInside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1677
    invoke-direct {p0, p1}, Landroid/widget/OplusFastScroller;->isPointInsideX(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Landroid/widget/OplusFastScroller;->isPointInsideY(F)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isPointInsideX(F)Z
    .locals 8
    .param p1, "x"    # F

    .line 1681
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v0

    .line 1682
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1683
    .local v1, "left":F
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1686
    .local v2, "right":F
    iget v3, p0, Landroid/widget/OplusFastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    .line 1687
    .local v3, "targetSizeDiff":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    move v4, v3

    .line 1689
    .local v4, "adjust":F
    :cond_0
    iget-boolean v5, p0, Landroid/widget/OplusFastScroller;->mLayoutFromRight:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 1690
    iget-object v5, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    return v6

    .line 1692
    :cond_2
    iget-object v5, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    move v6, v7

    :goto_1
    return v6
.end method

.method private blacklist isPointInsideY(F)Z
    .locals 6
    .param p1, "y"    # F

    .line 1697
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v0

    .line 1698
    .local v0, "offset":F
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 1699
    .local v1, "top":F
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 1702
    .local v2, "bottom":F
    iget v3, p0, Landroid/widget/OplusFastScroller;->mMinimumTouchTarget:I

    int-to-float v3, v3

    sub-float v4, v2, v1

    sub-float/2addr v3, v4

    .line 1703
    .local v3, "targetSizeDiff":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    .line 1705
    .local v4, "adjust":F
    :cond_0
    sub-float v5, v1, v4

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    add-float v5, v2, v4

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    return v5
.end method

.method private blacklist layoutThumb()V
    .locals 3

    .line 844
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 845
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Landroid/widget/OplusFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 846
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Landroid/widget/OplusFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 847
    return-void
.end method

.method private blacklist layoutTrack()V
    .locals 12

    .line 854
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 855
    .local v0, "track":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 856
    .local v1, "thumb":Landroid/view/View;
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 857
    .local v2, "container":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 858
    .local v3, "maxWidth":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 859
    .local v5, "maxHeight":I
    const/high16 v6, -0x80000000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 860
    .local v6, "widthMeasureSpec":I
    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v4

    .line 862
    .local v4, "heightMeasureSpec":I
    invoke-virtual {v0, v6, v4}, Landroid/view/View;->measure(II)V

    .line 866
    iget v7, p0, Landroid/widget/OplusFastScroller;->mThumbPosition:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 867
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 868
    .local v7, "top":I
    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .local v8, "bottom":I
    goto :goto_0

    .line 870
    .end local v7    # "top":I
    .end local v8    # "bottom":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    .line 871
    .local v7, "thumbHalfHeight":I
    iget v8, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v7

    .line 872
    .local v8, "top":I
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v7

    move v7, v8

    move v8, v9

    .line 875
    .local v7, "top":I
    .local v8, "bottom":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 876
    .local v9, "trackWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v11, v9

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 877
    .local v10, "left":I
    add-int v11, v10, v9

    .line 878
    .local v11, "right":I
    invoke-virtual {v0, v10, v7, v11, v8}, Landroid/view/View;->layout(IIII)V

    .line 879
    return-void
.end method

.method private blacklist measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "preview"    # Landroid/view/View;
    .param p2, "margins"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 778
    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 779
    const/4 v1, 0x0

    .line 780
    .local v1, "marginLeft":I
    const/4 v2, 0x0

    .line 781
    .local v2, "marginTop":I
    const/4 v3, 0x0

    .local v3, "marginRight":I
    goto :goto_0

    .line 783
    .end local v1    # "marginLeft":I
    .end local v2    # "marginTop":I
    .end local v3    # "marginRight":I
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 784
    .restart local v1    # "marginLeft":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 785
    .restart local v2    # "marginTop":I
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 788
    .restart local v3    # "marginRight":I
    :goto_0
    move-object/from16 v4, p0

    iget-object v5, v4, Landroid/widget/OplusFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 789
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 790
    .local v6, "containerWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 791
    .local v7, "adjMaxHeight":I
    sub-int v9, v6, v1

    sub-int/2addr v9, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 792
    .local v9, "adjMaxWidth":I
    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 793
    .local v10, "widthMeasureSpec":I
    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    .line 795
    .local v8, "heightMeasureSpec":I
    move-object/from16 v11, p1

    invoke-virtual {v11, v10, v8}, Landroid/view/View;->measure(II)V

    .line 798
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 799
    .local v12, "containerHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 800
    .local v13, "width":I
    div-int/lit8 v14, v12, 0xa

    add-int/2addr v14, v2

    iget v15, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v15

    .line 801
    .local v14, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v14

    .line 802
    .local v15, "bottom":I
    sub-int v16, v6, v13

    div-int/lit8 v16, v16, 0x2

    iget v0, v5, Landroid/graphics/Rect;->left:I

    add-int v0, v16, v0

    .line 803
    .local v0, "left":I
    move/from16 v16, v1

    .end local v1    # "marginLeft":I
    .local v16, "marginLeft":I
    add-int v1, v0, v13

    .line 804
    .local v1, "right":I
    move/from16 v17, v2

    move-object/from16 v2, p3

    .end local v2    # "marginTop":I
    .local v17, "marginTop":I
    invoke-virtual {v2, v0, v14, v1, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 805
    return-void
.end method

.method private blacklist measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 697
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mTempMargins:Landroid/graphics/Rect;

    .line 699
    .local v0, "margins":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 701
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 702
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 703
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 706
    :cond_0
    iget v1, p0, Landroid/widget/OplusFastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    .line 707
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/OplusFastScroller;->measureFloating(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v1, v0, p2}, Landroid/widget/OplusFastScroller;->measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 711
    :goto_0
    return-void
.end method

.method private blacklist measureViewToSide(Landroid/view/View;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "adjacent"    # Landroid/view/View;
    .param p3, "margins"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 728
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    if-nez v1, :cond_0

    .line 729
    const/4 v2, 0x0

    .line 730
    .local v2, "marginLeft":I
    const/4 v3, 0x0

    .line 731
    .local v3, "marginTop":I
    const/4 v4, 0x0

    .local v4, "marginRight":I
    goto :goto_0

    .line 733
    .end local v2    # "marginLeft":I
    .end local v3    # "marginTop":I
    .end local v4    # "marginRight":I
    :cond_0
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 734
    .restart local v2    # "marginLeft":I
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 735
    .restart local v3    # "marginTop":I
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 738
    .restart local v4    # "marginRight":I
    :goto_0
    iget-object v5, v0, Landroid/widget/OplusFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 739
    .local v5, "container":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 741
    .local v6, "containerWidth":I
    if-nez p2, :cond_1

    .line 742
    move v7, v6

    .local v7, "maxWidth":I
    goto :goto_1

    .line 743
    .end local v7    # "maxWidth":I
    :cond_1
    iget-boolean v7, v0, Landroid/widget/OplusFastScroller;->mLayoutFromRight:Z

    if-eqz v7, :cond_2

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v7

    .restart local v7    # "maxWidth":I
    goto :goto_1

    .line 746
    .end local v7    # "maxWidth":I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v7

    sub-int v7, v6, v7

    .line 749
    .restart local v7    # "maxWidth":I
    :goto_1
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 750
    .local v8, "adjMaxHeight":I
    sub-int v10, v7, v2

    sub-int/2addr v10, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 751
    .local v10, "adjMaxWidth":I
    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 752
    .local v11, "widthMeasureSpec":I
    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v9

    .line 754
    .local v9, "heightMeasureSpec":I
    move-object/from16 v12, p1

    invoke-virtual {v12, v11, v9}, Landroid/view/View;->measure(II)V

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 760
    .local v13, "width":I
    iget-boolean v14, v0, Landroid/widget/OplusFastScroller;->mLayoutFromRight:Z

    if-eqz v14, :cond_4

    .line 761
    if-nez p2, :cond_3

    iget v14, v5, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v14

    :goto_2
    sub-int/2addr v14, v4

    .line 762
    .local v14, "right":I
    sub-int v15, v14, v13

    .local v15, "left":I
    goto :goto_4

    .line 764
    .end local v14    # "right":I
    .end local v15    # "left":I
    :cond_4
    if-nez p2, :cond_5

    iget v14, v5, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v14

    :goto_3
    add-int v15, v14, v2

    .line 765
    .restart local v15    # "left":I
    add-int v14, v15, v13

    .line 769
    .restart local v14    # "right":I
    :goto_4
    move/from16 v16, v3

    .line 770
    .local v16, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v16

    .end local v16    # "top":I
    .local v0, "top":I
    add-int v1, v0, v17

    .line 771
    .local v1, "bottom":I
    move/from16 v16, v2

    move-object/from16 v2, p4

    .end local v2    # "marginLeft":I
    .local v16, "marginLeft":I
    invoke-virtual {v2, v15, v0, v14, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 772
    return-void
.end method

.method private blacklist onStateDependencyChanged(Z)V
    .locals 2
    .param p1, "peekIfEnabled"    # Z

    .line 523
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 525
    invoke-direct {p0, v1}, Landroid/widget/OplusFastScroller;->setState(I)V

    goto :goto_0

    .line 526
    :cond_0
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-ne v0, v1, :cond_1

    .line 527
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->postAutoHide()V

    goto :goto_0

    .line 528
    :cond_1
    if-eqz p1, :cond_3

    .line 529
    invoke-direct {p0, v1}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 530
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->postAutoHide()V

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->stop()V

    .line 536
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 537
    return-void
.end method

.method private blacklist postAutoHide()V
    .locals 4

    .line 1022
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1023
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mDeferHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1024
    return-void
.end method

.method private blacklist refreshDrawablePressedState()V
    .locals 2

    .line 940
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 941
    .local v0, "isPressed":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 942
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 943
    return-void
.end method

.method private blacklist scrollTo(F)V
    .locals 20
    .param p1, "position"    # F

    .line 1086
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/OplusFastScroller;->mScrollCompleted:Z

    .line 1088
    iget-object v2, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 1089
    .local v2, "count":I
    iget-object v3, v0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    .line 1090
    .local v3, "sections":[Ljava/lang/Object;
    if-nez v3, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    array-length v4, v3

    .line 1092
    .local v4, "sectionCount":I
    :goto_0
    if-eqz v3, :cond_a

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    .line 1093
    int-to-float v5, v4

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v1, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    .line 1095
    .local v5, "exactSection":I
    move v6, v5

    .line 1096
    .local v6, "targetSection":I
    iget-object v7, v0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v7, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v7

    .line 1097
    .local v7, "targetIndex":I
    move v8, v6

    .line 1105
    .local v8, "sectionIndex":I
    move v9, v2

    .line 1106
    .local v9, "nextIndex":I
    move v10, v7

    .line 1107
    .local v10, "prevIndex":I
    move v11, v6

    .line 1108
    .local v11, "prevSection":I
    add-int/lit8 v12, v6, 0x1

    .line 1111
    .local v12, "nextSection":I
    add-int/lit8 v13, v4, -0x1

    if-ge v6, v13, :cond_1

    .line 1112
    iget-object v13, v0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v13, v14}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v9

    .line 1116
    :cond_1
    if-ne v9, v7, :cond_4

    .line 1118
    :cond_2
    if-lez v6, :cond_4

    .line 1119
    add-int/lit8 v6, v6, -0x1

    .line 1120
    iget-object v13, v0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v13, v6}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 1121
    if-eq v10, v7, :cond_3

    .line 1122
    move v11, v6

    .line 1123
    move v8, v6

    .line 1124
    goto :goto_1

    .line 1125
    :cond_3
    if-nez v6, :cond_2

    .line 1128
    const/4 v8, 0x0

    .line 1139
    :cond_4
    :goto_1
    add-int/lit8 v13, v12, 0x1

    .line 1140
    .local v13, "nextNextSection":I
    :goto_2
    if-ge v13, v4, :cond_5

    iget-object v14, v0, Landroid/widget/OplusFastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 1141
    invoke-interface {v14, v13}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v14

    if-ne v14, v9, :cond_5

    .line 1142
    add-int/lit8 v13, v13, 0x1

    .line 1143
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1150
    :cond_5
    int-to-float v14, v11

    int-to-float v15, v4

    div-float/2addr v14, v15

    .line 1151
    .local v14, "prevPosition":F
    int-to-float v15, v12

    int-to-float v1, v4

    div-float/2addr v15, v1

    .line 1152
    .local v15, "nextPosition":F
    if-nez v2, :cond_6

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v16, v3

    goto :goto_3

    :cond_6
    const/high16 v1, 0x3e000000    # 0.125f

    move-object/from16 v16, v3

    .end local v3    # "sections":[Ljava/lang/Object;
    .local v16, "sections":[Ljava/lang/Object;
    int-to-float v3, v2

    div-float/2addr v1, v3

    .line 1153
    .local v1, "snapThreshold":F
    :goto_3
    if-ne v11, v5, :cond_7

    sub-float v3, p1, v14

    cmpg-float v3, v3, v1

    if-gez v3, :cond_7

    .line 1154
    move v3, v10

    .end local v7    # "targetIndex":I
    .local v3, "targetIndex":I
    goto :goto_4

    .line 1156
    .end local v3    # "targetIndex":I
    .restart local v7    # "targetIndex":I
    :cond_7
    sub-int v3, v9, v10

    int-to-float v3, v3

    sub-float v17, p1, v14

    mul-float v3, v3, v17

    sub-float v17, v15, v14

    div-float v3, v3, v17

    float-to-int v3, v3

    add-int/2addr v3, v10

    .line 1161
    .end local v7    # "targetIndex":I
    .restart local v3    # "targetIndex":I
    :goto_4
    add-int/lit8 v7, v2, -0x1

    move/from16 v17, v1

    const/4 v1, 0x0

    .end local v1    # "snapThreshold":F
    .local v17, "snapThreshold":F
    invoke-static {v3, v1, v7}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 1163
    iget-object v1, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v7, v1, Landroid/widget/ExpandableListView;

    if-eqz v7, :cond_8

    .line 1164
    check-cast v1, Landroid/widget/ExpandableListView;

    .line 1165
    .local v1, "expList":Landroid/widget/ExpandableListView;
    iget v7, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v7, v3

    .line 1166
    move/from16 v18, v4

    move/from16 v19, v5

    .end local v4    # "sectionCount":I
    .end local v5    # "exactSection":I
    .local v18, "sectionCount":I
    .local v19, "exactSection":I
    invoke-static {v7}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v4

    .line 1165
    invoke-virtual {v1, v4, v5}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1168
    .end local v1    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_5

    .end local v18    # "sectionCount":I
    .end local v19    # "exactSection":I
    .restart local v4    # "sectionCount":I
    .restart local v5    # "exactSection":I
    :cond_8
    move/from16 v18, v4

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v4    # "sectionCount":I
    .end local v5    # "exactSection":I
    .restart local v18    # "sectionCount":I
    .restart local v19    # "exactSection":I
    instance-of v4, v1, Landroid/widget/ListView;

    if-eqz v4, :cond_9

    .line 1169
    check-cast v1, Landroid/widget/ListView;

    iget v4, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4, v5}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_5

    .line 1171
    :cond_9
    iget v4, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1173
    .end local v3    # "targetIndex":I
    .end local v6    # "targetSection":I
    .end local v9    # "nextIndex":I
    .end local v10    # "prevIndex":I
    .end local v11    # "prevSection":I
    .end local v12    # "nextSection":I
    .end local v13    # "nextNextSection":I
    .end local v14    # "prevPosition":F
    .end local v15    # "nextPosition":F
    .end local v17    # "snapThreshold":F
    .end local v19    # "exactSection":I
    :goto_5
    goto/16 :goto_7

    .line 1092
    .end local v8    # "sectionIndex":I
    .end local v16    # "sections":[Ljava/lang/Object;
    .end local v18    # "sectionCount":I
    .local v3, "sections":[Ljava/lang/Object;
    .restart local v4    # "sectionCount":I
    :cond_a
    move-object/from16 v16, v3

    move/from16 v18, v4

    .line 1176
    .end local v3    # "sections":[Ljava/lang/Object;
    .end local v4    # "sectionCount":I
    .restart local v16    # "sections":[Ljava/lang/Object;
    .restart local v18    # "sectionCount":I
    const/4 v1, 0x0

    .line 1178
    .local v1, "offsetY":I
    iget-object v3, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 1179
    .local v3, "childCount":I
    iget-object v4, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1180
    .local v4, "firstChild":Landroid/view/View;
    iget-object v5, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1181
    .local v5, "lastChild":Landroid/view/View;
    const/4 v6, 0x0

    .line 1182
    .local v6, "offsetPostion":F
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    if-eqz v7, :cond_b

    .line 1183
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    .line 1184
    invoke-virtual {v8}, Landroid/widget/AbsListView;->getBottom()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1186
    :cond_b
    sub-int v7, v2, v3

    int-to-float v7, v7

    sub-float/2addr v7, v6

    mul-float v7, v7, p1

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v8, v2, -0x1

    mul-int/lit16 v8, v8, 0x3e8

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v7

    .line 1188
    .local v7, "oplusIndex":I
    div-int/lit16 v8, v7, 0x3e8

    .line 1189
    .local v8, "index":I
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    if-eqz v9, :cond_c

    .line 1190
    rem-int/lit16 v1, v7, 0x3e8

    .line 1191
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v10

    mul-int/2addr v10, v1

    div-int/lit16 v10, v10, 0x3e8

    sub-int v1, v9, v10

    .line 1192
    add-int/lit8 v8, v8, 0x1

    .line 1195
    :cond_c
    iget-object v9, v0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    instance-of v10, v9, Landroid/widget/ExpandableListView;

    if-eqz v10, :cond_d

    .line 1196
    check-cast v9, Landroid/widget/ExpandableListView;

    .line 1197
    .local v9, "expList":Landroid/widget/ExpandableListView;
    iget v10, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v10, v8

    .line 1198
    invoke-static {v10}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    .line 1197
    invoke-virtual {v9, v10, v11}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 1199
    .end local v9    # "expList":Landroid/widget/ExpandableListView;
    goto :goto_6

    :cond_d
    instance-of v10, v9, Landroid/widget/ListView;

    if-eqz v10, :cond_f

    .line 1201
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_e

    if-eqz v1, :cond_e

    .line 1202
    check-cast v9, Landroid/widget/ListView;

    add-int/lit8 v10, v8, 0x1

    iget v11, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 1204
    :cond_e
    check-cast v9, Landroid/widget/ListView;

    iget v10, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v10, v8

    invoke-virtual {v9, v10, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 1208
    :cond_f
    iget v10, v0, Landroid/widget/OplusFastScroller;->mHeaderCount:I

    add-int/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 1211
    :goto_6
    const/4 v9, -0x1

    move v8, v9

    .line 1214
    .end local v1    # "offsetY":I
    .end local v3    # "childCount":I
    .end local v4    # "firstChild":Landroid/view/View;
    .end local v5    # "lastChild":Landroid/view/View;
    .end local v6    # "offsetPostion":F
    .end local v7    # "oplusIndex":I
    .local v8, "sectionIndex":I
    :goto_7
    iget v1, v0, Landroid/widget/OplusFastScroller;->mCurrentSection:I

    if-eq v1, v8, :cond_11

    .line 1215
    iput v8, v0, Landroid/widget/OplusFastScroller;->mCurrentSection:I

    .line 1217
    invoke-direct {v0, v8}, Landroid/widget/OplusFastScroller;->transitionPreviewLayout(I)Z

    move-result v1

    .line 1218
    .local v1, "hasPreview":Z
    iget-boolean v3, v0, Landroid/widget/OplusFastScroller;->mShowingPreview:Z

    if-nez v3, :cond_10

    if-eqz v1, :cond_10

    .line 1219
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusFastScroller;->transitionToDragging()V

    goto :goto_8

    .line 1220
    :cond_10
    if-eqz v3, :cond_11

    if-nez v1, :cond_11

    .line 1221
    invoke-direct/range {p0 .. p0}, Landroid/widget/OplusFastScroller;->transitionToVisible()V

    .line 1224
    .end local v1    # "hasPreview":Z
    :cond_11
    :goto_8
    return-void
.end method

.method private greylist setState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 905
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 906
    return-void

    .line 908
    :cond_0
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mDeferHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 910
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 911
    const/4 p1, 0x1

    .line 914
    :cond_1
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-ne p1, v0, :cond_2

    .line 915
    return-void

    .line 918
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 927
    :pswitch_0
    iget v0, p0, Landroid/widget/OplusFastScroller;->mCurrentSection:I

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->transitionPreviewLayout(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 928
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->transitionToDragging()V

    goto :goto_0

    .line 930
    :cond_3
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->transitionToVisible()V

    goto :goto_0

    .line 924
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->transitionToVisible()V

    .line 925
    goto :goto_0

    .line 921
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->transitionToHidden()V

    .line 922
    nop

    .line 935
    :goto_0
    iput p1, p0, Landroid/widget/OplusFastScroller;->mState:I

    .line 936
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->refreshDrawablePressedState()V

    .line 937
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private blacklist setThumbPos(F)V
    .locals 12
    .param p1, "position"    # F

    .line 1318
    iget v0, p0, Landroid/widget/OplusFastScroller;->mThumbRange:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/widget/OplusFastScroller;->mThumbOffset:F

    add-float/2addr v0, v1

    .line 1319
    .local v0, "thumbMiddle":F
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1321
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1322
    .local v1, "previewImage":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 1324
    .local v2, "previewHalfHeight":F
    iget v3, p0, Landroid/widget/OplusFastScroller;->mOverlayPosition:I

    packed-switch v3, :pswitch_data_0

    .line 1333
    const/4 v3, 0x0

    .local v3, "previewPos":F
    goto :goto_0

    .line 1329
    .end local v3    # "previewPos":F
    :pswitch_0
    sub-float v3, v0, v2

    .line 1330
    .restart local v3    # "previewPos":F
    goto :goto_0

    .line 1326
    .end local v3    # "previewPos":F
    :pswitch_1
    move v3, v0

    .line 1327
    .restart local v3    # "previewPos":F
    nop

    .line 1338
    :goto_0
    iget-object v4, p0, Landroid/widget/OplusFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 1339
    .local v4, "container":Landroid/graphics/Rect;
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 1340
    .local v5, "top":I
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1341
    .local v6, "bottom":I
    int-to-float v7, v5

    add-float/2addr v7, v2

    .line 1342
    .local v7, "minP":F
    int-to-float v8, v6

    sub-float/2addr v8, v2

    .line 1343
    .local v8, "maxP":F
    invoke-static {v3, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    .line 1344
    .local v9, "previewMiddle":F
    sub-float v10, v9, v2

    .line 1345
    .local v10, "previewTop":F
    invoke-virtual {v1, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1346
    iget-object v11, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1347
    iget-object v11, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1348
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startPendingDrag()V
    .locals 4

    .line 1499
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroid/widget/OplusFastScroller;->TAP_TIMEOUT:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    .line 1500
    return-void
.end method

.method private blacklist transitionPreviewLayout(I)Z
    .locals 19
    .param p1, "sectionIndex"    # I

    .line 1235
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/widget/OplusFastScroller;->mSections:[Ljava/lang/Object;

    .line 1236
    .local v2, "sections":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1237
    .local v3, "text":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1238
    aget-object v4, v2, v1

    .line 1239
    .local v4, "section":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1240
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1244
    .end local v4    # "section":Ljava/lang/Object;
    :cond_0
    iget-object v4, v0, Landroid/widget/OplusFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 1245
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    .line 1248
    .local v5, "preview":Landroid/view/View;
    iget-boolean v6, v0, Landroid/widget/OplusFastScroller;->mShowingPrimary:Z

    if-eqz v6, :cond_1

    .line 1249
    iget-object v6, v0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1250
    .local v6, "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .local v7, "target":Landroid/widget/TextView;
    goto :goto_0

    .line 1252
    .end local v6    # "showing":Landroid/widget/TextView;
    .end local v7    # "target":Landroid/widget/TextView;
    :cond_1
    iget-object v6, v0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    .line 1253
    .restart local v6    # "showing":Landroid/widget/TextView;
    iget-object v7, v0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    .line 1257
    .restart local v7    # "target":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    invoke-direct {v0, v7, v4}, Landroid/widget/OplusFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1259
    invoke-direct {v0, v7, v4}, Landroid/widget/OplusFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1261
    iget-object v8, v0, Landroid/widget/OplusFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_2

    .line 1262
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1266
    :cond_2
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/OplusFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v9

    .line 1267
    .local v9, "showTarget":Landroid/animation/Animator;
    const/4 v12, 0x0

    invoke-static {v6, v12}, Landroid/widget/OplusFastScroller;->animateAlpha(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v10

    .line 1268
    .local v10, "hideShowing":Landroid/animation/Animator;
    iget-object v11, v0, Landroid/widget/OplusFastScroller;->mSwitchPrimaryListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v10, v11}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1271
    iget v11, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->left:I

    .line 1272
    iget v11, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->top:I

    .line 1273
    iget v11, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->right:I

    .line 1274
    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v4, Landroid/graphics/Rect;->bottom:I

    .line 1275
    invoke-static {v5, v4}, Landroid/widget/OplusFastScroller;->animateBounds(Landroid/view/View;Landroid/graphics/Rect;)Landroid/animation/Animator;

    move-result-object v11

    .line 1276
    .local v11, "resizePreview":Landroid/animation/Animator;
    const-wide/16 v12, 0x64

    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1278
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Landroid/widget/OplusFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    .line 1279
    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v14

    .line 1280
    .local v14, "builder":Landroid/animation/AnimatorSet$Builder;
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1284
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    .line 1285
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    sub-int v15, v15, v16

    .line 1289
    .local v15, "previewWidth":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getWidth()I

    move-result v12

    .line 1290
    .local v12, "targetWidth":I
    if-le v12, v15, :cond_3

    .line 1291
    int-to-float v13, v15

    int-to-float v8, v12

    div-float/2addr v13, v8

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1292
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Landroid/widget/OplusFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move-object v13, v2

    const-wide/16 v1, 0x64

    .end local v2    # "sections":[Ljava/lang/Object;
    .local v13, "sections":[Ljava/lang/Object;
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v8

    .line 1293
    .local v8, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v14, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1294
    .end local v8    # "scaleAnim":Landroid/animation/Animator;
    goto :goto_1

    .line 1295
    .end local v13    # "sections":[Ljava/lang/Object;
    .restart local v2    # "sections":[Ljava/lang/Object;
    :cond_3
    move-object v13, v2

    .end local v2    # "sections":[Ljava/lang/Object;
    .restart local v13    # "sections":[Ljava/lang/Object;
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setScaleX(F)V

    .line 1299
    :goto_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    .line 1300
    .local v1, "showingWidth":I
    if-le v1, v12, :cond_4

    .line 1301
    int-to-float v2, v12

    int-to-float v8, v1

    div-float/2addr v2, v8

    .line 1302
    .local v2, "scale":F
    invoke-static {v6, v2}, Landroid/widget/OplusFastScroller;->animateScaleX(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v8

    move/from16 v17, v1

    move/from16 v18, v2

    const-wide/16 v1, 0x64

    .end local v1    # "showingWidth":I
    .end local v2    # "scale":F
    .local v17, "showingWidth":I
    .local v18, "scale":F
    invoke-virtual {v8, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1303
    .local v1, "scaleAnim":Landroid/animation/Animator;
    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 1300
    .end local v17    # "showingWidth":I
    .end local v18    # "scale":F
    .local v1, "showingWidth":I
    :cond_4
    move/from16 v17, v1

    .line 1306
    .end local v1    # "showingWidth":I
    .restart local v17    # "showingWidth":I
    :goto_2
    iget-object v1, v0, Landroid/widget/OplusFastScroller;->mPreviewAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1308
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist transitionToDragging()V
    .locals 9

    .line 1005
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1009
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 1011
    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 1012
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v7, 0x0

    new-array v6, v6, [Landroid/view/View;

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v8, v6, v4

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v8, v6, v5

    invoke-static {v3, v7, v6}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v3

    .line 1013
    invoke-virtual {v3, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 1015
    .local v1, "slideIn":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 1016
    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1017
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1018
    iput-boolean v5, p0, Landroid/widget/OplusFastScroller;->mShowingPreview:Z

    .line 1019
    return-void
.end method

.method private blacklist transitionToHidden()V
    .locals 9

    .line 949
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 953
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget-object v7, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    const/4 v3, 0x4

    iget-object v7, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v7, v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 954
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 957
    .local v0, "fadeOut":Landroid/animation/Animator;
    iget-boolean v3, p0, Landroid/widget/OplusFastScroller;->mLayoutFromRight:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    neg-int v3, v3

    :goto_0
    int-to-float v3, v3

    .line 958
    .local v3, "offset":F
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v6, [Landroid/view/View;

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v8, v6, v4

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v8, v6, v5

    invoke-static {v7, v3, v6}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v6

    .line 960
    invoke-virtual {v6, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 962
    .local v1, "slideOut":Landroid/animation/Animator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 964
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v0, v5, v4

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 965
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/widget/OplusFastScroller$3;

    invoke-direct {v5, p0}, Landroid/widget/OplusFastScroller$3;-><init>(Landroid/widget/OplusFastScroller;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 974
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 976
    iput-boolean v4, p0, Landroid/widget/OplusFastScroller;->mShowingPreview:Z

    .line 977
    return-void
.end method

.method private blacklist transitionToVisible()V
    .locals 11

    .line 983
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 984
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 987
    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/view/View;

    iget-object v4, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    .line 988
    const-wide/16 v3, 0x96

    invoke-virtual {v0, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v0

    .line 989
    .local v0, "fadeIn":Landroid/animation/Animator;
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/View;

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    aput-object v8, v7, v5

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    aput-object v8, v7, v6

    iget-object v8, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    aput-object v8, v7, v2

    const/4 v8, 0x0

    invoke-static {v1, v8, v7}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v9, 0x12c

    .line 991
    invoke-virtual {v1, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v1

    .line 992
    .local v1, "fadeOut":Landroid/animation/Animator;
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v2, [Landroid/view/View;

    iget-object v10, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    aput-object v10, v9, v5

    iget-object v10, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    aput-object v10, v9, v6

    invoke-static {v7, v8, v9}, Landroid/widget/OplusFastScroller;->groupAnimatorOfFloat(Landroid/util/Property;F[Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v7

    .line 993
    invoke-virtual {v7, v3, v4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-result-object v3

    .line 995
    .local v3, "slideIn":Landroid/animation/Animator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    .line 996
    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 997
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mDecorAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 998
    iput-boolean v5, p0, Landroid/widget/OplusFastScroller;->mShowingPreview:Z

    .line 999
    return-void
.end method

.method private blacklist updateAppearance()V
    .locals 4

    .line 365
    const/4 v0, 0x0

    .line 368
    .local v0, "width":I
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 374
    :cond_0
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/OplusFastScroller;->mThumbMinWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    .line 376
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    iget v2, p0, Landroid/widget/OplusFastScroller;->mThumbMinHeight:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 377
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 378
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 382
    :cond_1
    iget v1, p0, Landroid/widget/OplusFastScroller;->mThumbMinWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/OplusFastScroller;->mWidth:I

    .line 384
    iget v1, p0, Landroid/widget/OplusFastScroller;->mTextAppearance:I

    if-eqz v1, :cond_2

    .line 385
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 386
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/OplusFastScroller;->mTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 389
    :cond_2
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    .line 390
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 391
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 394
    :cond_3
    iget v1, p0, Landroid/widget/OplusFastScroller;->mTextSize:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    const/4 v3, 0x0

    if-lez v2, :cond_4

    .line 395
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 396
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/OplusFastScroller;->mTextSize:F

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 399
    :cond_4
    iget v1, p0, Landroid/widget/OplusFastScroller;->mPreviewPadding:I

    .line 400
    .local v1, "padding":I
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 401
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 402
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 403
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 405
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->refreshDrawablePressedState()V

    .line 406
    return-void
.end method

.method private blacklist updateContainerRect()V
    .locals 6

    .line 811
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    .line 812
    .local v0, "list":Landroid/widget/AbsListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->resolvePadding()V

    .line 814
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mContainerRect:Landroid/graphics/Rect;

    .line 815
    .local v1, "container":Landroid/graphics/Rect;
    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 816
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 817
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 818
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 820
    iget v2, p0, Landroid/widget/OplusFastScroller;->mScrollBarStyle:I

    .line 821
    .local v2, "scrollbarStyle":I
    const/high16 v3, 0x1000000

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_2

    .line 823
    :cond_0
    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 824
    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 825
    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 826
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 829
    if-ne v2, v3, :cond_2

    .line 830
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->getWidth()I

    move-result v3

    .line 831
    .local v3, "width":I
    iget v4, p0, Landroid/widget/OplusFastScroller;->mScrollbarPosition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 832
    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 834
    :cond_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 838
    .end local v3    # "width":I
    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist updateLongList(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 613
    const/4 v0, 0x0

    if-lez p1, :cond_0

    div-int v1, p2, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 615
    .local v1, "longList":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OplusFastScroller;->mLongList:Z

    if-eq v2, v1, :cond_1

    .line 616
    iput-boolean v1, p0, Landroid/widget/OplusFastScroller;->mLongList:Z

    .line 617
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->onStateDependencyChanged(Z)V

    .line 619
    :cond_1
    return-void
.end method

.method private blacklist updateOffsetAndRange()V
    .locals 5

    .line 886
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    .line 887
    .local v0, "trackImage":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    .line 890
    .local v1, "thumbImage":Landroid/view/View;
    iget v2, p0, Landroid/widget/OplusFastScroller;->mThumbPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 891
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 892
    .local v2, "halfThumbHeight":F
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 893
    .local v3, "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    .line 894
    .end local v2    # "halfThumbHeight":F
    .local v4, "max":F
    goto :goto_0

    .line 895
    .end local v3    # "min":F
    .end local v4    # "max":F
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v3, v2

    .line 896
    .restart local v3    # "min":F
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v4, v2

    .line 899
    .restart local v4    # "max":F
    :goto_0
    iput v3, p0, Landroid/widget/OplusFastScroller;->mThumbOffset:F

    .line 900
    sub-float v2, v4, v3

    iput v2, p0, Landroid/widget/OplusFastScroller;->mThumbRange:F

    .line 901
    return-void
.end method


# virtual methods
.method public blacklist getWidth()I
    .locals 1

    .line 586
    iget v0, p0, Landroid/widget/OplusFastScroller;->mWidth:I

    return v0
.end method

.method public blacklist isAlwaysShowEnabled()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mAlwaysShow:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mLongList:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1565
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1566
    return v1

    .line 1569
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1570
    .local v0, "actionMasked":I
    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    :cond_1
    iget v2, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-nez v2, :cond_2

    .line 1572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/OplusFastScroller;->isPointInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 1574
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->postAutoHide()V

    .line 1577
    :cond_2
    return v1
.end method

.method public greylist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1520
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1521
    return v1

    .line 1524
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1543
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/OplusFastScroller;->isPointInside(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1544
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1545
    :cond_1
    iget-wide v2, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 1546
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->beginDrag()V

    .line 1547
    iget v0, p0, Landroid/widget/OplusFastScroller;->mInitialTouchY:F

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1548
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->scrollTo(F)V

    .line 1552
    invoke-virtual {p0, p1}, Landroid/widget/OplusFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 1557
    .end local v0    # "pos":F
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 1526
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/OplusFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1532
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1533
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 1534
    const/4 v0, 0x1

    return v0

    .line 1538
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/OplusFastScroller;->mInitialTouchY:F

    .line 1539
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->startPendingDrag()V

    .line 1561
    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public blacklist onItemCountChanged(II)V
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "itemCount"    # I

    .line 595
    iget v0, p0, Landroid/widget/OplusFastScroller;->mOldItemCount:I

    if-eq v0, p2, :cond_2

    .line 597
    iput p2, p0, Landroid/widget/OplusFastScroller;->mOldItemCount:I

    .line 598
    iput p1, p0, Landroid/widget/OplusFastScroller;->mOldChildCount:I

    .line 600
    sub-int v0, p2, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 601
    .local v0, "hasMoreItems":Z
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/OplusFastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 602
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 603
    .local v1, "firstVisibleItem":I
    invoke-direct {p0, v1, p1, p2}, Landroid/widget/OplusFastScroller;->getPosFromItemCount(III)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/OplusFastScroller;->setThumbPos(F)V

    .line 606
    .end local v1    # "firstVisibleItem":I
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/widget/OplusFastScroller;->updateLongList(II)V

    .line 608
    .end local v0    # "hasMoreItems":Z
    :cond_2
    return-void
.end method

.method public blacklist onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .line 1581
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/widget/OplusFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1584
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 1582
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onScroll(III)V
    .locals 4
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "totalItemCount"    # I

    .line 1027
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1028
    invoke-direct {p0, v1}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 1029
    return-void

    .line 1032
    :cond_0
    sub-int v0, p3, p2

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    .line 1033
    .local v0, "hasMoreItems":Z
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget v3, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-eq v3, v1, :cond_2

    .line 1034
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OplusFastScroller;->getPosFromItemCount(III)F

    move-result v3

    invoke-direct {p0, v3}, Landroid/widget/OplusFastScroller;->setThumbPos(F)V

    .line 1037
    :cond_2
    iput-boolean v2, p0, Landroid/widget/OplusFastScroller;->mScrollCompleted:Z

    .line 1039
    iget v3, p0, Landroid/widget/OplusFastScroller;->mFirstVisibleItem:I

    if-eq v3, p1, :cond_3

    .line 1040
    iput p1, p0, Landroid/widget/OplusFastScroller;->mFirstVisibleItem:I

    .line 1042
    iget v3, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-eq v3, v1, :cond_3

    .line 1043
    invoke-direct {p0, v2}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 1044
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->postAutoHide()V

    .line 1047
    :cond_3
    return-void
.end method

.method public blacklist onSectionsChanged()V
    .locals 1

    .line 1077
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/OplusFastScroller;->mListAdapter:Landroid/widget/Adapter;

    .line 1078
    return-void
.end method

.method public greylist onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 591
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->updateLayout()V

    .line 592
    return-void
.end method

.method public greylist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "me"    # Landroid/view/MotionEvent;

    .line 1589
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1590
    return v1

    .line 1593
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1658
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->cancelPendingDrag()V

    goto/16 :goto_0

    .line 1638
    :pswitch_1
    iget-wide v6, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Landroid/widget/OplusFastScroller;->mInitialTouchY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Landroid/widget/OplusFastScroller;->mScaledTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 1639
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->beginDrag()V

    .line 1642
    :cond_1
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-ne v0, v4, :cond_6

    .line 1644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1645
    .local v0, "pos":F
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->setThumbPos(F)V

    .line 1648
    iget-boolean v1, p0, Landroid/widget/OplusFastScroller;->mScrollCompleted:Z

    if-eqz v1, :cond_2

    .line 1649
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->scrollTo(F)V

    .line 1652
    :cond_2
    return v5

    .line 1609
    .end local v0    # "pos":F
    :pswitch_2
    iget-wide v6, p0, Landroid/widget/OplusFastScroller;->mPendingDrag:J

    cmp-long v0, v6, v2

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_4

    .line 1611
    :cond_3
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->beginDrag()V

    .line 1613
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->getPosFromMotionEvent(F)F

    move-result v0

    .line 1614
    .restart local v0    # "pos":F
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->setThumbPos(F)V

    .line 1615
    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->scrollTo(F)V

    .line 1620
    .end local v0    # "pos":F
    :cond_4
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-ne v0, v4, :cond_6

    .line 1621
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_5

    .line 1625
    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1626
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 1629
    :cond_5
    invoke-direct {p0, v5}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 1630
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->postAutoHide()V

    .line 1632
    return v5

    .line 1595
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/widget/OplusFastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1596
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1598
    iget v0, p0, Landroid/widget/OplusFastScroller;->mState:I

    if-eqz v0, :cond_6

    .line 1599
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->beginDrag()V

    .line 1600
    return v5

    .line 1663
    :cond_6
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist remove()V
    .locals 2

    .line 473
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mTrackImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 474
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mThumbImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 476
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mOverlay:Landroid/view/ViewGroupOverlay;

    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 478
    return-void
.end method

.method public blacklist setAlwaysShow(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .line 502
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mAlwaysShow:Z

    if-eq v0, p1, :cond_0

    .line 503
    iput-boolean p1, p0, Landroid/widget/OplusFastScroller;->mAlwaysShow:Z

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->onStateDependencyChanged(Z)V

    .line 507
    :cond_0
    return-void
.end method

.method public blacklist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 484
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 485
    iput-boolean p1, p0, Landroid/widget/OplusFastScroller;->mEnabled:Z

    .line 487
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->onStateDependencyChanged(Z)V

    .line 489
    :cond_0
    return-void
.end method

.method public blacklist setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .line 540
    iget v0, p0, Landroid/widget/OplusFastScroller;->mScrollBarStyle:I

    if-eq v0, p1, :cond_0

    .line 541
    iput p1, p0, Landroid/widget/OplusFastScroller;->mScrollBarStyle:I

    .line 543
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->updateLayout()V

    .line 545
    :cond_0
    return-void
.end method

.method public blacklist setScrollbarPosition(I)V
    .locals 5
    .param p1, "position"    # I

    .line 555
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 559
    invoke-virtual {v0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    move p1, v0

    .line 563
    :cond_2
    iget v0, p0, Landroid/widget/OplusFastScroller;->mScrollbarPosition:I

    if-eq v0, p1, :cond_4

    .line 564
    iput p1, p0, Landroid/widget/OplusFastScroller;->mScrollbarPosition:I

    .line 565
    const/4 v0, 0x0

    if-eq p1, v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Landroid/widget/OplusFastScroller;->mLayoutFromRight:Z

    .line 567
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPreviewResId:[I

    aget v1, v2, v1

    .line 568
    .local v1, "previewResId":I
    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 571
    iget v2, p0, Landroid/widget/OplusFastScroller;->mPreviewMinWidth:I

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    .line 572
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 571
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 573
    .local v2, "textMinWidth":I
    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 574
    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 576
    iget v3, p0, Landroid/widget/OplusFastScroller;->mPreviewMinHeight:I

    iget-object v4, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    .line 577
    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 576
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 578
    .local v0, "textMinHeight":I
    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 579
    iget-object v3, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 581
    invoke-virtual {p0}, Landroid/widget/OplusFastScroller;->updateLayout()V

    .line 583
    .end local v0    # "textMinHeight":I
    .end local v1    # "previewResId":I
    .end local v2    # "textMinWidth":I
    :cond_4
    return-void
.end method

.method public blacklist setStyle(I)V
    .locals 8
    .param p1, "resId"    # I

    .line 409
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mList:Landroid/widget/AbsListView;

    if-nez v0, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 413
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->FastScroll:[I

    const v3, 0x10103f7

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 415
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 416
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 417
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 418
    .local v4, "index":I
    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 432
    :pswitch_0
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/OplusFastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 433
    goto :goto_1

    .line 450
    :pswitch_1
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mThumbMinWidth:I

    .line 451
    goto :goto_1

    .line 453
    :pswitch_2
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mThumbMinHeight:I

    .line 454
    goto :goto_1

    .line 429
    :pswitch_3
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/OplusFastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    goto :goto_1

    .line 420
    :pswitch_4
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mOverlayPosition:I

    .line 421
    goto :goto_1

    .line 426
    :pswitch_5
    iget-object v6, p0, Landroid/widget/OplusFastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v6, v7

    .line 427
    goto :goto_1

    .line 423
    :pswitch_6
    iget-object v6, p0, Landroid/widget/OplusFastScroller;->mPreviewResId:[I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v6, v5

    .line 424
    goto :goto_1

    .line 459
    :pswitch_7
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mThumbPosition:I

    goto :goto_1

    .line 447
    :pswitch_8
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mPreviewMinHeight:I

    .line 448
    goto :goto_1

    .line 444
    :pswitch_9
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mPreviewMinWidth:I

    .line 445
    goto :goto_1

    .line 456
    :pswitch_a
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mPreviewPadding:I

    .line 457
    goto :goto_1

    .line 438
    :pswitch_b
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/OplusFastScroller;->mTextColor:Landroid/content/res/ColorStateList;

    .line 439
    goto :goto_1

    .line 441
    :pswitch_c
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mTextSize:F

    .line 442
    goto :goto_1

    .line 435
    :pswitch_d
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/widget/OplusFastScroller;->mTextAppearance:I

    .line 436
    nop

    .line 416
    .end local v4    # "index":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->updateAppearance()V

    .line 466
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist stop()V
    .locals 1

    .line 551
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/OplusFastScroller;->setState(I)V

    .line 552
    return-void
.end method

.method public blacklist updateLayout()V
    .locals 3

    .line 646
    iget-boolean v0, p0, Landroid/widget/OplusFastScroller;->mUpdatingLayout:Z

    if-eqz v0, :cond_0

    .line 647
    return-void

    .line 650
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OplusFastScroller;->mUpdatingLayout:Z

    .line 651
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->updateContainerRect()V

    .line 653
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->layoutThumb()V

    .line 654
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->layoutTrack()V

    .line 656
    invoke-direct {p0}, Landroid/widget/OplusFastScroller;->updateOffsetAndRange()V

    .line 657
    iget-object v0, p0, Landroid/widget/OplusFastScroller;->mTempBounds:Landroid/graphics/Rect;

    .line 658
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/OplusFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 659
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPrimaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/OplusFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 660
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/OplusFastScroller;->measurePreview(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 661
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mSecondaryText:Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Landroid/widget/OplusFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 663
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 665
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 666
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 667
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 668
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 669
    iget-object v1, p0, Landroid/widget/OplusFastScroller;->mPreviewImage:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Landroid/widget/OplusFastScroller;->applyLayout(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 672
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OplusFastScroller;->mUpdatingLayout:Z

    .line 673
    return-void
.end method
