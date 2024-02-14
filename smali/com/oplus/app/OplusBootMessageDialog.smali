.class public Lcom/oplus/app/OplusBootMessageDialog;
.super Landroid/app/ProgressDialog;
.source "OplusBootMessageDialog.java"


# static fields
.field private static final blacklist ALPHA_0:F = 0.0f

.field private static final blacklist ALPHA_1:F = 1.0f

.field private static final blacklist DBG:Z = false

.field private static final blacklist HIDE_TIME:J = 0x14dL

.field private static final blacklist MAX_TIME_OUT_DISPLAYED_BOOT_DIALOG:J = 0xea60L

.field private static final blacklist SHOW_TIME:J = 0x341L

.field private static final blacklist SPLIT_COUNT:I = 0x2

.field private static final blacklist START_LOADING_ALPHA:F = 0.9f

.field private static final blacklist TAG:Ljava/lang/String; = "OplusBootMessageDialog"


# instance fields
.field private blacklist mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private blacklist mBootDialogShowTimeBegin:J

.field private final blacklist mIdProgressPercent:I

.field private blacklist mIsStartAnimation:Z

.field private blacklist mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field private blacklist mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnimationDrawable(Lcom/oplus/app/OplusBootMessageDialog;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0

    iget-object p0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsStartAnimation(Lcom/oplus/app/OplusBootMessageDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mIsStartAnimation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsStartAnimation(Lcom/oplus/app/OplusBootMessageDialog;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/app/OplusBootMessageDialog;->mIsStartAnimation:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    sget-object v0, Lcom/oplus/theme/IOplusThemeStyle;->DEFAULT:Lcom/oplus/theme/IOplusThemeStyle;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/theme/IOplusThemeStyle;

    const v2, 0xc030026

    invoke-interface {v0, v2}, Lcom/oplus/theme/IOplusThemeStyle;->getDialogBootMessageThemeStyle(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mBootDialogShowTimeBegin:J

    .line 79
    iput-boolean v1, p0, Lcom/oplus/app/OplusBootMessageDialog;->mIsStartAnimation:Z

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 91
    const-string v0, "OplusBootMessageDialog"

    const-string v1, "new OplusBootMessageDialog"

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0xc02007f

    invoke-static {v0, v1}, Lcom/oplus/util/OplusContextUtil;->getResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mIdProgressPercent:I

    .line 93
    return-void
.end method

.method static synthetic blacklist access$001(Lcom/oplus/app/OplusBootMessageDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/oplus/app/OplusBootMessageDialog;

    .line 57
    invoke-super {p0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 162
    new-instance v0, Lcom/oplus/app/OplusBootMessageDialog;

    invoke-direct {v0, p0}, Lcom/oplus/app/OplusBootMessageDialog;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "dialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 165
    return-object v0
.end method

.method private blacklist initWindow(Landroid/view/Window;)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;

    .line 183
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 184
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 185
    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 186
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 187
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 188
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 189
    invoke-virtual {p0, v0}, Lcom/oplus/app/OplusBootMessageDialog;->onInitWindowParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->getWindowFlags()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    .line 191
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "decorView":Landroid/view/View;
    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 194
    invoke-direct {p0}, Lcom/oplus/app/OplusBootMessageDialog;->updateMessage()V

    .line 195
    return-void
.end method

.method private blacklist updateMessage()V
    .locals 3

    .line 198
    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/oplus/app/OplusBootMessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 199
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0xc0400e9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .locals 3

    .line 205
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 206
    .local v0, "endAnimation":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 207
    iget-object v1, p0, Lcom/oplus/app/OplusBootMessageDialog;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    new-instance v1, Lcom/oplus/app/OplusBootMessageDialog$1;

    invoke-direct {v1, p0}, Lcom/oplus/app/OplusBootMessageDialog$1;-><init>(Lcom/oplus/app/OplusBootMessageDialog;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 219
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public whitelist dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mBootDialogShowTimeBegin:J

    sub-long/2addr v0, v2

    .line 103
    .local v0, "displayedTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oat boot optmize dispatchKeyEvent event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusBootMessageDialog"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->dismiss()V

    .line 107
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mBootDialogShowTimeBegin:J

    sub-long/2addr v0, v2

    .line 118
    .local v0, "displayedTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oat boot optmize touch event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusBootMessageDialog"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->dismiss()V

    .line 122
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public whitelist dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method protected blacklist getWindowFlags()I
    .locals 1

    .line 176
    const v0, -0x77fff900

    return v0
.end method

.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 142
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/oplus/app/OplusBootMessageDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/app/OplusBootMessageDialog;->initWindow(Landroid/view/Window;)V

    .line 144
    return-void
.end method

.method protected blacklist onInitWindowParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 172
    const/16 v0, 0x7e5

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 173
    return-void
.end method

.method public whitelist setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 149
    return-void
.end method

.method public whitelist show()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroid/app/ProgressDialog;->show()V

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mBootDialogShowTimeBegin:J

    .line 156
    return-void
.end method

.method public blacklist startProgress(J)V
    .locals 5
    .param p1, "timeMillis"    # J

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oat boot optmize startProgress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBootMessageDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const v0, 0xc02003d

    invoke-virtual {p0, v0}, Lcom/oplus/app/OplusBootMessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 224
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/oplus/app/OplusBootMessageDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 225
    .local v1, "message":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 226
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 227
    const-wide/16 v3, 0x341

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    iget-object v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/oplus/app/OplusBootMessageDialog;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 229
    iget-object v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/oplus/app/OplusBootMessageDialog$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/oplus/app/OplusBootMessageDialog$2;-><init>(Lcom/oplus/app/OplusBootMessageDialog;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 246
    iget-object v2, p0, Lcom/oplus/app/OplusBootMessageDialog;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 247
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public blacklist stopProgress(Z)V
    .locals 1
    .param p1, "isFromLauncher"    # Z

    .line 250
    iget-object v0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/oplus/app/OplusBootMessageDialog;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 254
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 256
    :cond_1
    return-void
.end method
