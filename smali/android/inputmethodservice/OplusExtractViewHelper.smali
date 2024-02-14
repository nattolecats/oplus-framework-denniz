.class public Landroid/inputmethodservice/OplusExtractViewHelper;
.super Ljava/lang/Object;
.source "OplusExtractViewHelper.java"


# static fields
.field private static final blacklist BUTTON_ANIMATOR_DOWN_DURATION:I = 0xc8

.field private static final blacklist BUTTON_ANIMATOR_UP_DURATION:I = 0x154

.field private static final blacklist BUTTON_DOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist BUTTON_DOWN_SCALE:F = 0.93f

.field private static final blacklist BUTTON_HEIGHT_28:I = 0x1c

.field private static final blacklist BUTTON_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final blacklist BUTTON_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final blacklist BUTTON_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final blacklist BUTTON_UP_SCALE:F = 1.0f

.field private static final blacklist BUTTON_WIDTH_52:I = 0x34

.field private static final blacklist DEFAULT_THEME_COLOR:I = -0xb89301

.field private static final blacklist HIGHLIGHT_ALPHA:I = 0x4c

.field private static final blacklist KEY_ACCENT_COLOR:Ljava/lang/String; = "sysui_type_accent_color"

.field private static final blacklist LIGHT_BACKGROUND:I = -0xa0a0b

.field private static final blacklist LIGHT_BUTTON_OVERLAY:I = 0x1a000000

.field private static final blacklist LIGHT_CORNER_BACKGROUND:I = -0x1

.field private static final blacklist LIGHT_EDIT_HINT_COLOR:I = 0x4d000000

.field private static final blacklist LIGHT_EDIT_TEXT_COLOR:I = -0x27000000

.field private static final blacklist NIGHT_BACKGROUND:I = -0x1000000

.field private static final blacklist NIGHT_BUTTON_OVERLAY:I = 0x33000000

.field private static final blacklist NIGHT_CORNER_BACKGROUND:I = -0xd1d1d2

.field private static final blacklist NIGHT_EDIT_HINT_COLOR:I = 0x4dffffff

.field private static final blacklist NIGHT_EDIT_TEXT_COLOR:I = -0x26000001

.field private static final blacklist TEXT_SIZE_14:I = 0xe

.field private static final blacklist VALUE_0:I = 0x0

.field private static final blacklist VALUE_12:I = 0xc

.field private static final blacklist VALUE_13:I = 0xd

.field private static final blacklist VALUE_14:I = 0xe

.field private static final blacklist VALUE_16:I = 0x10

.field private static final blacklist VALUE_8:I = 0x8

.field private static blacklist mLastExtractViewHash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/OplusExtractViewHelper;->BUTTON_DOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 53
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Landroid/inputmethodservice/OplusExtractViewHelper;->BUTTON_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 56
    const/4 v0, 0x0

    sput v0, Landroid/inputmethodservice/OplusExtractViewHelper;->mLastExtractViewHash:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist updateExtractViewStyle(Landroid/view/View;)V
    .locals 28
    .param p0, "extractView"    # Landroid/view/View;

    .line 59
    move-object/from16 v0, p0

    if-eqz v0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sget v2, Landroid/inputmethodservice/OplusExtractViewHelper;->mLastExtractViewHash:I

    if-eq v1, v2, :cond_8

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 61
    .local v1, "extractFrame":Landroid/view/ViewGroup;
    const v2, 0x1020025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 62
    .local v2, "extractEditText":Landroid/widget/EditText;
    const v3, 0x1020059

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 63
    .local v3, "extractActionView":Landroid/widget/Button;
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 65
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sput v4, Landroid/inputmethodservice/OplusExtractViewHelper;->mLastExtractViewHash:I

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v4, "density":F
    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v5, v4

    float-to-int v5, v5

    .line 69
    .local v5, "dp8":I
    const/high16 v6, 0x41400000    # 12.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 70
    .local v6, "dp12":I
    const/high16 v7, 0x41500000    # 13.0f

    mul-float/2addr v7, v4

    float-to-int v7, v7

    .line 71
    .local v7, "dp13":I
    const/high16 v8, 0x41600000    # 14.0f

    mul-float v9, v4, v8

    float-to-int v9, v9

    .line 72
    .local v9, "dp14":I
    const/high16 v10, 0x41800000    # 16.0f

    mul-float/2addr v10, v4

    float-to-int v10, v10

    .line 74
    .local v10, "dp16":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v11, v11, 0x30

    const/16 v12, 0x20

    const/4 v14, 0x0

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v14

    .line 77
    .local v11, "nightMode":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v15, "sysui_type_accent_color"

    invoke-static {v12, v15}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "colorString":Ljava/lang/String;
    const v15, -0xb89301

    .line 79
    .local v15, "themeColor":I
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 80
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    .line 83
    :cond_1
    new-instance v16, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object/from16 v17, v16

    .line 84
    .local v17, "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    move-object/from16 v8, v17

    .end local v17    # "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    .local v8, "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v8, v14}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 85
    const/16 v13, 0x8

    move-object/from16 v18, v12

    .end local v12    # "colorString":Ljava/lang/String;
    .local v18, "colorString":Ljava/lang/String;
    new-array v12, v13, [F

    int-to-float v13, v10

    aput v13, v12, v14

    int-to-float v13, v10

    const/16 v17, 0x1

    aput v13, v12, v17

    int-to-float v13, v10

    const/4 v14, 0x2

    aput v13, v12, v14

    int-to-float v13, v10

    const/16 v21, 0x3

    aput v13, v12, v21

    int-to-float v13, v10

    const/16 v22, 0x4

    aput v13, v12, v22

    int-to-float v13, v10

    const/16 v23, 0x5

    aput v13, v12, v23

    int-to-float v13, v10

    const/16 v24, 0x6

    aput v13, v12, v24

    int-to-float v13, v10

    const/16 v25, 0x7

    aput v13, v12, v25

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 86
    if-eqz v11, :cond_2

    const v13, -0xd1d1d2

    goto :goto_1

    :cond_2
    const/4 v13, -0x1

    :goto_1
    invoke-virtual {v8, v13}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 88
    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 89
    .local v13, "actionNormalBackground":Landroid/graphics/drawable/GradientDrawable;
    const/4 v12, 0x0

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 90
    move-object/from16 v27, v1

    const/16 v14, 0x8

    .end local v1    # "extractFrame":Landroid/view/ViewGroup;
    .local v27, "extractFrame":Landroid/view/ViewGroup;
    new-array v1, v14, [F

    int-to-float v14, v9

    aput v14, v1, v12

    int-to-float v12, v9

    const/4 v14, 0x1

    aput v12, v1, v14

    int-to-float v12, v9

    const/4 v14, 0x2

    aput v12, v1, v14

    int-to-float v12, v9

    aput v12, v1, v21

    int-to-float v12, v9

    aput v12, v1, v22

    int-to-float v12, v9

    aput v12, v1, v23

    int-to-float v12, v9

    aput v12, v1, v24

    int-to-float v12, v9

    aput v12, v1, v25

    invoke-virtual {v13, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 91
    invoke-virtual {v13, v15}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 92
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 93
    .local v1, "actionOverlayBackground":Landroid/graphics/drawable/GradientDrawable;
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 94
    const/16 v14, 0x8

    new-array v14, v14, [F

    int-to-float v0, v9

    aput v0, v14, v12

    int-to-float v0, v9

    const/4 v12, 0x1

    aput v0, v14, v12

    int-to-float v0, v9

    const/4 v12, 0x2

    aput v0, v14, v12

    int-to-float v0, v9

    aput v0, v14, v21

    int-to-float v0, v9

    aput v0, v14, v22

    int-to-float v0, v9

    aput v0, v14, v23

    int-to-float v0, v9

    aput v0, v14, v24

    int-to-float v0, v9

    aput v0, v14, v25

    invoke-virtual {v1, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 95
    if-eqz v11, :cond_3

    const/high16 v0, 0x33000000

    goto :goto_2

    :cond_3
    const/high16 v0, 0x1a000000

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 96
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 97
    .local v0, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v12, 0x1

    new-array v14, v12, [I

    const v19, 0x10100a7

    const/16 v20, 0x0

    aput v19, v14, v20

    new-instance v12, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v22, v8

    move/from16 v21, v9

    const/4 v9, 0x2

    .end local v8    # "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    .end local v9    # "dp14":I
    .local v21, "dp14":I
    .local v22, "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    new-array v8, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v13, v8, v20

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-direct {v12, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v14, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 99
    new-array v8, v9, [I

    const v9, 0x101009e

    aput v9, v8, v20

    invoke-virtual {v0, v8, v13}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 101
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 102
    .local v8, "downAnimatorSet":Landroid/animation/AnimatorSet;
    move v12, v10

    .end local v10    # "dp16":I
    .local v12, "dp16":I
    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 103
    sget-object v9, Landroid/inputmethodservice/OplusExtractViewHelper;->BUTTON_DOWN_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 104
    const/4 v9, 0x2

    new-array v10, v9, [Landroid/animation/Animator;

    const/4 v9, 0x1

    new-array v14, v9, [F

    const v17, 0x3f6e147b    # 0.93f

    const/16 v20, 0x0

    aput v17, v14, v20

    const-string v9, "scaleX"

    invoke-static {v3, v9, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v10, v20

    move-object/from16 v24, v1

    const/4 v14, 0x1

    .end local v1    # "actionOverlayBackground":Landroid/graphics/drawable/GradientDrawable;
    .local v24, "actionOverlayBackground":Landroid/graphics/drawable/GradientDrawable;
    new-array v1, v14, [F

    aput v17, v1, v20

    .line 105
    move-object/from16 v25, v13

    .end local v13    # "actionNormalBackground":Landroid/graphics/drawable/GradientDrawable;
    .local v25, "actionNormalBackground":Landroid/graphics/drawable/GradientDrawable;
    const-string v13, "scaleY"

    invoke-static {v3, v13, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v10, v14

    .line 104
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 106
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 107
    .local v1, "upAnimatorSet":Landroid/animation/AnimatorSet;
    move v10, v4

    move v14, v5

    .end local v4    # "density":F
    .end local v5    # "dp8":I
    .local v10, "density":F
    .local v14, "dp8":I
    const-wide/16 v4, 0x154

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 108
    sget-object v4, Landroid/inputmethodservice/OplusExtractViewHelper;->BUTTON_UP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v8, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    move-object/from16 v17, v0

    const/4 v5, 0x1

    .end local v0    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    .local v17, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v0, v5, [F

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    aput v26, v0, v20

    invoke-static {v3, v9, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v20

    new-array v0, v5, [F

    aput v26, v0, v20

    .line 110
    invoke-static {v3, v13, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v4, v5

    .line 109
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 111
    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    .line 112
    .local v0, "stateListAnimator":Landroid/animation/StateListAnimator;
    new-array v4, v5, [I

    const/4 v9, 0x0

    aput v19, v4, v9

    invoke-virtual {v0, v4, v8}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 113
    new-array v4, v5, [I

    const v5, 0x101009e

    aput v5, v4, v9

    invoke-virtual {v0, v4, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    .line 115
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSelectHandleLeft()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 116
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSelectHandleRight()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 117
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextSelectHandle()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 118
    invoke-virtual {v2}, Landroid/widget/EditText;->getTextCursorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 119
    const/16 v4, 0x4c

    invoke-static {v15}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .line 120
    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v15}, Landroid/graphics/Color;->blue(I)I

    move-result v13

    .line 119
    invoke-static {v4, v5, v9, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHighlightColor(I)V

    .line 121
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 123
    if-eqz v11, :cond_4

    const v4, -0x26000001

    goto :goto_3

    :cond_4
    const/high16 v4, -0x27000000

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 124
    if-eqz v11, :cond_5

    const v4, 0x4dffffff    # 5.3687088E8f

    goto :goto_4

    :cond_5
    const/high16 v4, 0x4d000000    # 1.34217728E8f

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 125
    const/4 v4, 0x0

    invoke-virtual {v2, v12, v7, v4, v14}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 127
    move-object v4, v3

    .line 128
    .local v4, "extractAction":Landroid/widget/Button;
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    const/high16 v5, 0x42500000    # 52.0f

    mul-float v9, v10, v5

    float-to-int v9, v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setMinWidth(I)V

    .line 130
    mul-float/2addr v5, v10

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 131
    invoke-virtual {v4}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/high16 v9, 0x41e00000    # 28.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5, v6, v5}, Landroid/widget/Button;->setPadding(IIII)V

    .line 133
    move-object/from16 v5, v17

    .end local v17    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    .local v5, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    const/16 v9, 0x11

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setGravity(I)V

    .line 135
    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setTextSize(F)V

    .line 136
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 138
    move-object/from16 v9, p0

    move-object/from16 v13, v22

    .end local v22    # "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    .local v13, "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v9, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "stateListAnimator":Landroid/animation/StateListAnimator;
    .local v16, "stateListAnimator":Landroid/animation/StateListAnimator;
    invoke-virtual {v9, v0, v0, v14, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v12, v12, v12, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 142
    if-eqz v11, :cond_6

    const/high16 v0, -0x1000000

    goto :goto_5

    :cond_6
    const v0, -0xa0a0b

    :goto_5
    move-object/from16 v17, v1

    move-object/from16 v1, v27

    .end local v27    # "extractFrame":Landroid/view/ViewGroup;
    .local v1, "extractFrame":Landroid/view/ViewGroup;
    .local v17, "upAnimatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_6

    .line 63
    .end local v4    # "extractAction":Landroid/widget/Button;
    .end local v5    # "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    .end local v6    # "dp12":I
    .end local v7    # "dp13":I
    .end local v8    # "downAnimatorSet":Landroid/animation/AnimatorSet;
    .end local v10    # "density":F
    .end local v11    # "nightMode":Z
    .end local v12    # "dp16":I
    .end local v13    # "extractBackground":Landroid/graphics/drawable/GradientDrawable;
    .end local v14    # "dp8":I
    .end local v15    # "themeColor":I
    .end local v16    # "stateListAnimator":Landroid/animation/StateListAnimator;
    .end local v17    # "upAnimatorSet":Landroid/animation/AnimatorSet;
    .end local v18    # "colorString":Ljava/lang/String;
    .end local v21    # "dp14":I
    .end local v24    # "actionOverlayBackground":Landroid/graphics/drawable/GradientDrawable;
    .end local v25    # "actionNormalBackground":Landroid/graphics/drawable/GradientDrawable;
    :cond_7
    move-object v9, v0

    goto :goto_6

    .line 59
    .end local v1    # "extractFrame":Landroid/view/ViewGroup;
    .end local v2    # "extractEditText":Landroid/widget/EditText;
    .end local v3    # "extractActionView":Landroid/widget/Button;
    :cond_8
    move-object v9, v0

    .line 145
    :goto_6
    return-void
.end method
