.class Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;
.super Ljava/lang/Object;
.source "OplusAlertDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/dialog/OplusAlertDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InsetTouchListener"
.end annotation


# instance fields
.field private blacklist dialog:Landroid/app/Dialog;

.field private final blacklist prePieSlop:I

.field final synthetic blacklist this$0:Landroid/app/dialog/OplusAlertDialogBuilder;


# direct methods
.method public constructor blacklist <init>(Landroid/app/dialog/OplusAlertDialogBuilder;Landroid/app/Dialog;)V
    .locals 1
    .param p1, "this$0"    # Landroid/app/dialog/OplusAlertDialogBuilder;
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 177
    iput-object p1, p0, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;->this$0:Landroid/app/dialog/OplusAlertDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;->dialog:Landroid/app/Dialog;

    .line 179
    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;->prePieSlop:I

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 184
    const v0, 0x1020419

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    .local v0, "parentPanel":Landroid/view/View;
    new-instance v1, Landroid/graphics/RectF;

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 188
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 192
    .local v1, "contentRect":Landroid/graphics/RectF;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 193
    return v3

    .line 195
    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 196
    .local v2, "outsideEvent":Landroid/view/MotionEvent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 197
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 201
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-ge v4, v6, :cond_2

    .line 202
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 203
    iget v3, p0, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;->prePieSlop:I

    neg-int v4, v3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    neg-int v3, v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 205
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 206
    iget-object v3, p0, Landroid/app/dialog/OplusAlertDialogBuilder$InsetTouchListener;->dialog:Landroid/app/Dialog;

    invoke-virtual {v3, v2}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 207
    .local v3, "isConsumed":Z
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 208
    return v3
.end method
