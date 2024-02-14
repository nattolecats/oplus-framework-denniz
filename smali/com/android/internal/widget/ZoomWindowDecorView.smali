.class public Lcom/android/internal/widget/ZoomWindowDecorView;
.super Landroid/view/ViewGroup;
.source "ZoomWindowDecorView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;
    }
.end annotation


# static fields
.field private static final blacklist ALPHA_ANIM_1:F = 0.33f

.field private static final blacklist ALPHA_ANIM_2:F = 0.67f

.field private static final blacklist BOUND_ALPHA_ANIM_TIME:I = 0xfa

.field private static final blacklist BUTTON_ALPHA_ANIM_1:F = 0.3f

.field private static final blacklist BUTTON_ALPHA_ANIM_2:F = 0.1f

.field private static final blacklist BUTTON_ALPHA_ANIM_TIME:I = 0xc8

.field private static final blacklist BUTTON_INSIDE_OFFSET:I = 0x1e

.field private static final blacklist CLOSED_WIDTH_IN_DP:F = 3.0f

.field private static final blacklist COLOR_CHANGE_ANIM_TIME:I = 0x12c

.field private static final blacklist DIFF_DP_VALUE:F = 0.5f

.field private static final blacklist DRAG_SCALE_OFFSET:I = 0x1e

.field private static final blacklist EXTENSION_OFFSET_IN_DP:F = 10.0f

.field private static final blacklist HANDLE_BACKGROUND_ALPHA_ANIM_1:F = 0.3f

.field private static final blacklist HANDLE_BACKGROUND_ALPHA_ANIM_2:F = 0.1f

.field private static final blacklist HANDLE_BACKGROUND_ANIM_TIME:J = 0xd9L

.field private static final blacklist HANDLE_CHANGE_ANIM_TIME:I = 0xd9

.field private static final blacklist HANDLE_WIDTH_IN_DP:F = 15.0f

.field private static final blacklist HAS_FOCUS_ALPHA:F = 1.0f

.field private static final blacklist NO_FOCUS_ALPHA:F = 0.3f

.field public static final blacklist TAG:Ljava/lang/String; = "ZoomWindowDecorView"

.field private static final blacklist TOUCH_SLOP:I = 0x1

.field private static final blacklist ZOOM_SIMPLE_MODE:Ljava/lang/String; = "setting_zoom_simple_mode"


# instance fields
.field public blacklist mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

.field private blacklist mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mCanMove:Z

.field private blacklist mCheckForDragging:Z

.field private blacklist mClickTarget:Landroid/view/View;

.field private blacklist mClosedView:Landroid/view/View;

.field private blacklist mClosedViewRect:Landroid/graphics/Rect;

.field private blacklist mColorAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mDoubleTapEvent:Z

.field private blacklist mDragging:Z

.field private blacklist mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

.field private blacklist mFullView:Landroid/view/View;

.field private blacklist mFullViewRect:Landroid/graphics/Rect;

.field private blacklist mGestureDetector:Landroid/view/GestureDetector;

.field private blacklist mHandleAlphaAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mHandleBackground:Landroid/widget/ImageView;

.field private blacklist mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

.field private blacklist mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mHandleColorAnimator:Landroid/animation/ValueAnimator;

.field private blacklist mHandleView:Landroid/view/View;

.field private blacklist mHandleViewRect:Landroid/graphics/Rect;

.field private blacklist mHandleViewShowTipsRect:Landroid/graphics/Rect;

.field private blacklist mHasFocus:Z

.field private blacklist mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

.field private blacklist mIgnoreEvent:Z

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private blacklist mRectDt:I

.field private blacklist mScaleBoundShow:Z

.field private blacklist mScaleBoundView:Landroid/widget/ImageView;

.field private blacklist mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

.field private blacklist mScaleLeftCornerRect:Landroid/graphics/Rect;

.field private blacklist mScaleLeftSideRect:Landroid/graphics/Rect;

.field private blacklist mScaleRightCornerAppendRect:Landroid/graphics/Rect;

.field private blacklist mScaleRightCornerRect:Landroid/graphics/Rect;

.field private blacklist mScaleRightSideRect:Landroid/graphics/Rect;

.field private blacklist mShow:Z

.field private blacklist mSimpleModeEnable:Z

.field private blacklist mThreeButtonAnimator:Landroid/animation/AnimatorSet;

.field private blacklist mThreeButtonShow:Z

.field private blacklist mTipView:Landroid/widget/Button;

.field private blacklist mTouchDownX:I

.field private blacklist mTouchDownY:I

.field private blacklist mWho:Landroid/view/IWindow;

.field private blacklist mZoomDecor:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTipView(Lcom/android/internal/widget/ZoomWindowDecorView;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTipView:Landroid/widget/Button;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDoubleTapEvent(Lcom/android/internal/widget/ZoomWindowDecorView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDoubleTapEvent:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minvalidateView(Lcom/android/internal/widget/ZoomWindowDecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->invalidateView()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 162
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    .line 131
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mMainHandler:Landroid/os/Handler;

    .line 157
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDoubleTapEvent:Z

    .line 163
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->init(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 167
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    .line 131
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mMainHandler:Landroid/os/Handler;

    .line 157
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDoubleTapEvent:Z

    .line 168
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->init(Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 172
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    .line 124
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    .line 128
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    .line 129
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    .line 130
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    .line 131
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    .line 132
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    .line 133
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    .line 155
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mMainHandler:Landroid/os/Handler;

    .line 157
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    .line 159
    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDoubleTapEvent:Z

    .line 173
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->init(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method public static blacklist dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 266
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private blacklist handleSingleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTapUp: raw ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ZoomWindowDecorView"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 689
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 690
    .local v4, "y":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSingleTapUp: relatively ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    if-eqz v1, :cond_2

    .line 692
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    if-nez v1, :cond_0

    .line 693
    const-string v1, "tap in mClosedViewRect"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v2, 0x10

    iput v2, v1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 695
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v1, v2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    if-nez v1, :cond_1

    .line 697
    const-string v1, "tap in mFullViewRect"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v2, 0x400

    iput v2, v1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 699
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v1, v2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto :goto_0

    .line 700
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 701
    const-string v1, "tap in mHandleViewShowTipsRect"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v2, 0x8

    iput v2, v1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 703
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v1, v2}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 706
    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 178
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mRectDt:I

    .line 179
    new-instance v0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    .line 180
    return-void
.end method

.method private blacklist invalidateView()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 503
    :cond_0
    return-void
.end method

.method private blacklist passedSlop(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 420
    iget v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTouchDownX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTouchDownY:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private blacklist updateZoomDecorVisibility()V
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 511
    invoke-direct {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->invalidateView()V

    .line 512
    return-void
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 611
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 289
    .local v0, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 290
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 291
    .local v2, "y":I
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "ZoomWindowDecorView"

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 348
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 349
    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/widget/ZoomWindowDecorView;->passedSlop(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    iput-boolean v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    .line 351
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iput v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 352
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v3, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 353
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v3, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    if-eqz v3, :cond_16

    .line 358
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 366
    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 367
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v4, 0x80

    iput v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 368
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v3, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 369
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v3, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto/16 :goto_6

    .line 370
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 371
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v4, 0x100

    iput v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 372
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v3, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 373
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v3, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto/16 :goto_6

    .line 363
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v4, 0x20

    iput v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 364
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v3, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 365
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v3, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto/16 :goto_6

    .line 359
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v4, 0x40

    iput v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 360
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v3, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 361
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v3, v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    goto/16 :goto_6

    .line 379
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "actionMasked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,mDragging: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,mIgnoreEvent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-boolean v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    if-ne v6, v8, :cond_6

    iget-boolean v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    if-eqz v6, :cond_6

    .line 382
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleColor(Z)V

    .line 383
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleViewBackgroundWithAnim(Z)V

    .line 385
    :cond_6
    if-ne v0, v7, :cond_b

    .line 386
    iget-boolean v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    if-eqz v6, :cond_7

    .line 387
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/4 v7, 0x4

    iput v7, v6, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 388
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v6, v7}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 392
    :cond_7
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    if-eqz v6, :cond_b

    .line 393
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    .line 394
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    .line 396
    :cond_8
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 397
    :cond_9
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->setIfShowScaleBounds(I)V

    goto :goto_3

    .line 395
    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    invoke-virtual {v6, v4}, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->setIfShowScaleBounds(I)V

    .line 401
    :cond_b
    :goto_3
    iget-boolean v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    if-eqz v4, :cond_c

    .line 402
    const/16 v6, 0x200

    iput v6, v4, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 403
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v4, v6}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 405
    :cond_c
    iput-boolean v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    .line 406
    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    if-eqz v4, :cond_16

    .line 407
    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    .line 408
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 409
    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    return v3

    .line 293
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    .line 294
    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 295
    iput-boolean v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    .line 296
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const-string v8, ", y: "

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    if-eqz v3, :cond_e

    .line 297
    iput-boolean v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    .line 298
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    .line 299
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleViewBackgroundWithAnim(Z)V

    .line 300
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v3, v5}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleColor(Z)V

    .line 301
    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    if-eqz v3, :cond_14

    .line 302
    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDoubleTapEvent:Z

    if-nez v3, :cond_d

    .line 303
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v5, 0x12f

    invoke-virtual {v3, v5, v4}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 306
    :cond_d
    iput-boolean v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDoubleTapEvent:Z

    .line 307
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/internal/widget/ZoomWindowDecorView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$1;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    .line 312
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v9, v5

    .line 307
    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 314
    :cond_e
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const-string v4, "event mIgnoreEvent: "

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    if-nez v3, :cond_f

    .line 315
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    .line 316
    iput-boolean v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 318
    :cond_f
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    if-eqz v3, :cond_10

    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    if-nez v3, :cond_10

    .line 319
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    .line 320
    iput-boolean v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 322
    :cond_10
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const-string v4, "tap in scale region x: "

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    .line 323
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_4

    .line 329
    :cond_11
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 330
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", the left side or right side"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-direct {v3}, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 332
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    iget-object v3, v3, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    if-eqz v3, :cond_14

    .line 333
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    iget-object v4, v4, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->who:Landroid/os/IBinder;

    goto :goto_5

    .line 324
    :cond_13
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottom-left or bottom-right"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    new-instance v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-direct {v3}, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 326
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    iget-object v3, v3, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    if-eqz v3, :cond_14

    .line 327
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    iget-object v4, v4, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->who:Landroid/os/IBinder;

    .line 337
    :cond_14
    :goto_5
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_16

    .line 338
    iput v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTouchDownX:I

    .line 339
    iput v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTouchDownY:I

    .line 340
    new-instance v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-direct {v3}, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    .line 341
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    iget-object v3, v3, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    if-eqz v3, :cond_15

    .line 342
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    iget-object v4, v4, Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;->mWho:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->who:Landroid/os/IBinder;

    .line 344
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event down x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_16
    :goto_6
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClickTarget:Landroid/view/View;

    if-eqz v3, :cond_17

    .line 414
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 416
    :cond_17
    iget-boolean v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mIgnoreEvent:Z

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 600
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 595
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 606
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public blacklist getCloseView()Landroid/view/View;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getFullView()Landroid/view/View;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getHandleBackground()Landroid/widget/ImageView;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method public blacklist getHandleView()Landroid/view/View;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getScaleBoundView()Landroid/widget/ImageView;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public blacklist getTipView()Landroid/widget/Button;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTipView:Landroid/widget/Button;

    return-object v0
.end method

.method public blacklist getZoomDecor()Landroid/view/View;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    return-object v0
.end method

.method public blacklist isSplitMode()Z
    .locals 1

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isZoomWindowShowing()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    return v0
.end method

.method synthetic blacklist lambda$showOrHideScaleBoundWithAnim$0$com-android-internal-widget-ZoomWindowDecorView(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 730
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 731
    return-void
.end method

.method synthetic blacklist lambda$updateBoundColorWithAnim$2$com-android-internal-widget-ZoomWindowDecorView(Landroid/graphics/drawable/Drawable;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .line 802
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 803
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 804
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 807
    return-void
.end method

.method synthetic blacklist lambda$updateHandleColor$3$com-android-internal-widget-ZoomWindowDecorView(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "handleView"    # Landroid/widget/ImageView;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .line 856
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 857
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 858
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 859
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 860
    return-void
.end method

.method synthetic blacklist lambda$updateHandleColor$4$com-android-internal-widget-ZoomWindowDecorView()V
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method synthetic blacklist lambda$updateHandleViewBackgroundWithAnim$5$com-android-internal-widget-ZoomWindowDecorView(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 938
    return-void
.end method

.method synthetic blacklist lambda$updateThreeButtonWithAnim$1$com-android-internal-widget-ZoomWindowDecorView(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 766
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 767
    return-void
.end method

.method public blacklist onConfigurationChanged(Z)V
    .locals 2
    .param p1, "isZoomWindow"    # Z

    .line 428
    iput-boolean p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    .line 429
    invoke-direct {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateZoomDecorVisibility()V

    .line 430
    if-eqz p1, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0xc080077

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    const v1, 0xc08008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 433
    iget-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateHandleViewBackground(Z)V

    .line 442
    :cond_1
    return-void
.end method

.method public whitelist onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDoubleTap: raw ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 635
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 636
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isZoomSimpleModeEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 638
    const-string v3, "onDoubleTap to close zoom in simple mode"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->updateHandleColor(Z)V

    .line 640
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/16 v3, 0x800

    iput v3, v1, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 641
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v1, v3}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 644
    :cond_0
    return v4
.end method

.method public whitelist onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 678
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 1

    .line 184
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 186
    return-void
.end method

.method public whitelist onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 279
    const/4 v0, 0x1

    return v0
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v2, v4}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 529
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    .line 530
    invoke-virtual {v5}, Landroid/widget/ImageView;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 531
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 528
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mRectDt:I

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 534
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-static {v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 535
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 536
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 537
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    .line 534
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 539
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 540
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 541
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    .line 538
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 545
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 546
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 547
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v6, v7

    .line 544
    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 550
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 551
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 552
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    sub-int/2addr v7, v8

    .line 549
    invoke-virtual {v0, v1, v2, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 554
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 555
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 556
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v7

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 557
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v8

    add-int/2addr v7, v8

    .line 554
    invoke-virtual {v0, v1, v2, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 560
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 561
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 562
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    .line 559
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 565
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 566
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    sub-int/2addr v5, v6

    .line 564
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 567
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 568
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 569
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 570
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/android/internal/widget/ZoomWindowDecorView;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v5, v3

    .line 567
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLayout: mHandleViewRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , getWidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , getHeight = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mHandleViewShowTipsRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mFullViewRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mClosedViewRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , mDragControlViewRect = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zoomdecor.right = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    .line 578
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 581
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleViewShowTipsRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 582
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 583
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 584
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftCornerAppendRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 585
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 586
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightCornerAppendRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 587
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleLeftSideRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 588
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleRightSideRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 589
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 591
    :goto_0
    return-void
.end method

.method public whitelist onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mDragging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    iget-object v0, v0, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->point:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 667
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;->evActionFlag:I

    .line 668
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mEventInfo:Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;

    invoke-virtual {v0, v1}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->onInputEvent(Lcom/oplus/zoomwindow/OplusZoomInputEventInfo;)V

    .line 669
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 516
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 517
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mZoomDecor:Landroid/view/View;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/ZoomWindowDecorView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 519
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 520
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 519
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ZoomWindowDecorView;->setMeasuredDimension(II)V

    .line 521
    return-void
.end method

.method public whitelist onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 684
    return-void
.end method

.method public whitelist onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 616
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isZoomSimpleModeEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 625
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isZoomSimpleModeEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 628
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "e"    # Landroid/view/MotionEvent;

    .line 659
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onWindowFocusChangedByRoot(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, "focusChange":Z
    iget-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHasFocus:Z

    if-eq v1, p1, :cond_0

    .line 457
    const/4 v0, 0x1

    .line 458
    iput-boolean p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHasFocus:Z

    .line 461
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChangedByRoot hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    focusChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZoomWindowDecorView"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 466
    if-nez p1, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 468
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 469
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 471
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 472
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 473
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 475
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->invalidateView()V

    .line 477
    :cond_2
    return-void
.end method

.method public blacklist restoreNormalMode()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "restoreNormalMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 900
    iput-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    .line 902
    :cond_0
    return-void
.end method

.method public blacklist setCanMove(Z)V
    .locals 0
    .param p1, "canMove"    # Z

    .line 274
    iput-boolean p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mCanMove:Z

    .line 275
    return-void
.end method

.method public blacklist setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;ZLcom/android/internal/policy/OplusZoomWindowDecorViewHelper;)V
    .locals 6
    .param p1, "owner"    # Lcom/android/internal/policy/PhoneWindow;
    .param p2, "show"    # Z
    .param p3, "helper"    # Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    .line 189
    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    .line 190
    iput-boolean p2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mShow:Z

    .line 191
    const v0, 0xc02002b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    .line 192
    const v0, 0xc02009c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    .line 193
    const v0, 0xc02002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    .line 194
    const v0, 0xc02002d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    .line 195
    const v0, 0xc02002e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    .line 196
    const v0, 0xc0200a3

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mTipView:Landroid/widget/Button;

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView;->bringChildToFront(Landroid/view/View;)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setThreeButtonShow(Z)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setScaleBoundShow(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setTipShow(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0xc080057

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 203
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const-string v3, "#007AFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 204
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 207
    check-cast v0, Landroid/widget/ImageView;

    .line 208
    .local v0, "handleView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0xc080077

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 209
    .local v3, "handleDrawable":Landroid/graphics/drawable/Drawable;
    const-string v4, "#999999"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 210
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getCurrentZoomWindowState()Lcom/oplus/zoomwindow/OplusZoomWindowInfo;

    move-result-object v4

    .line 213
    .local v4, "zoomWindowInfo":Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    if-eqz v4, :cond_1

    iget v5, v4, Lcom/oplus/zoomwindow/OplusZoomWindowInfo;->windowType:I

    if-eq v5, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 215
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 217
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mAnimHelper:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/OplusZoomDecorAnimHelper;->setThreeButtonShow(Z)V

    .line 218
    const-string v1, "ZoomWindowDecorView"

    const-string v5, "setPhoneWindow windowType is not zoom, hide button"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0    # "handleView":Landroid/widget/ImageView;
    .end local v3    # "handleDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "zoomWindowInfo":Lcom/oplus/zoomwindow/OplusZoomWindowInfo;
    :cond_1
    invoke-static {}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->getInstance()Lcom/oplus/zoomwindow/OplusZoomWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoomwindow/OplusZoomWindowManager;->isZoomSimpleModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    .line 223
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 224
    if-eqz v0, :cond_2

    .line 225
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_3
    :goto_0
    iput-object p3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHelper:Lcom/android/internal/policy/OplusZoomWindowDecorViewHelper;

    .line 234
    return-void
.end method

.method public blacklist showOrHideScaleBoundWithAnim(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .line 715
    iget-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundShow:Z

    if-ne p1, v0, :cond_0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOrHideScaleBoundWithAnim current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", just return"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomWindowDecorView"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 720
    iput-boolean p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundShow:Z

    .line 721
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    .line 722
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 725
    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 729
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 733
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const/4 v3, 0x0

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 735
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mBoundAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 737
    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public blacklist switchSimpleMode()V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 886
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "switchSimpleMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 889
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 890
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mSimpleModeEnable:Z

    .line 892
    :cond_0
    return-void
.end method

.method public blacklist updateBoundColorWithAnim(Z)V
    .locals 7
    .param p1, "isToZoom"    # Z

    .line 789
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 790
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "mScaleBoundView null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    return-void

    .line 794
    :cond_0
    const-string v0, "#FD8326"

    const/4 v1, 0x1

    const-string v2, "#007AFF"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_1

    .line 795
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 797
    :cond_1
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    .line 800
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mScaleBoundView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 801
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 808
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/widget/ZoomWindowDecorView$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/internal/widget/ZoomWindowDecorView$4;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;ZLandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 829
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 830
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 832
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 833
    return-void
.end method

.method public blacklist updateHandleColor(Z)V
    .locals 8
    .param p1, "toDefault"    # Z

    .line 836
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 840
    :cond_0
    const-string v0, "ZoomWindowDecorView"

    const-string v1, "updateHandleColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 843
    const-string v1, "mHandleView null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void

    .line 847
    :cond_1
    const-string v0, "#0A7FFB"

    const/4 v1, 0x1

    const-string v2, "#999999"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_2

    .line 848
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 850
    :cond_2
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v5, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    .line 853
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 854
    .local v0, "handleView":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xc080077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 855
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 861
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/internal/widget/ZoomWindowDecorView$5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/internal/widget/ZoomWindowDecorView$5;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;ZLandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xd9

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 879
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleColorAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x0

    const v6, 0x3f2b851f    # 0.67f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 881
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mMainHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 882
    return-void
.end method

.method public blacklist updateHandleViewBackground(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 905
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_1

    .line 908
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 909
    invoke-virtual {p0}, Lcom/android/internal/widget/ZoomWindowDecorView;->updateLayout()V

    .line 910
    return-void

    .line 906
    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist updateHandleViewBackgroundWithAnim(Z)V
    .locals 11
    .param p1, "hide"    # Z

    .line 913
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 922
    return-void

    .line 926
    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    const v3, 0xc08008d

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 928
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 929
    new-instance v0, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 931
    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 933
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    .line 934
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p1, :cond_4

    move v7, v6

    goto :goto_0

    :cond_4
    move v7, v1

    :goto_0
    aput v7, v5, v2

    if-eqz p1, :cond_5

    move v7, v1

    goto :goto_1

    :cond_5
    move v7, v6

    :goto_1
    const/4 v8, 0x1

    aput v7, v5, v8

    invoke-static {v0, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 935
    .local v0, "alphaAnim":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackground:Landroid/widget/ImageView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v4, [F

    const/high16 v9, 0x3f200000    # 0.625f

    if-eqz p1, :cond_6

    move v10, v6

    goto :goto_2

    :cond_6
    move v10, v9

    :goto_2
    aput v10, v7, v2

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v9, v6

    :goto_3
    aput v9, v7, v8

    invoke-static {v3, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 936
    .local v3, "scaleXAnim":Landroid/animation/ValueAnimator;
    new-instance v5, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 939
    iget-object v5, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    aput-object v3, v4, v8

    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 940
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xd9

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 941
    iget-object v2, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const v7, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v5, v1, v7, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 942
    iget-object v1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleBackgroundAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 943
    const-string v1, "ZoomWindowDecorView"

    const-string v2, "updateHandleViewBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return-void

    .line 914
    .end local v0    # "alphaAnim":Landroid/animation/ValueAnimator;
    .end local v3    # "scaleXAnim":Landroid/animation/ValueAnimator;
    :cond_8
    :goto_4
    return-void
.end method

.method public blacklist updateLayout()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ZoomWindowDecorView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$2;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 487
    :cond_0
    return-void
.end method

.method public blacklist updateThreeButtonWithAnim(Z)V
    .locals 9
    .param p1, "isShow"    # Z

    .line 740
    iget-boolean v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonShow:Z

    const-string v1, "ZoomWindowDecorView"

    if-ne p1, v0, :cond_0

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThreeButtonWithAnim current state is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", just return"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    return-void

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThreeButtonWithAnim change state, current state is"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iput-boolean p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonShow:Z

    .line 747
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 750
    :cond_1
    const/4 v0, 0x0

    .line 751
    .local v0, "closeBtAnimator":Landroid/animation/ValueAnimator;
    const/4 v1, 0x0

    .line 752
    .local v1, "fullBtAnimator":Landroid/animation/ValueAnimator;
    const/4 v2, 0x0

    .line 753
    .local v2, "handleBtAnimator":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mHandleView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 754
    iget-boolean v4, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonShow:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    .line 755
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_0

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 756
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 757
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_2

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    goto :goto_0

    .line 759
    :cond_2
    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_3

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 760
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mClosedView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_4

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 761
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mFullView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v5, [F

    fill-array-data v6, :array_5

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 765
    :goto_0
    new-instance v3, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/ZoomWindowDecorView$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 770
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    .line 771
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const/4 v6, 0x1

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 772
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 773
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const/4 v6, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 775
    iget-object v3, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mThreeButtonAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 783
    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public blacklist updateTipText(I)V
    .locals 2
    .param p1, "text"    # I

    .line 490
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/ZoomWindowDecorView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/widget/ZoomWindowDecorView$3;-><init>(Lcom/android/internal/widget/ZoomWindowDecorView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 497
    :cond_0
    return-void
.end method
