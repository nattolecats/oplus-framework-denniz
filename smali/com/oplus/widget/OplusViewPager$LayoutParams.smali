.class public Lcom/oplus/widget/OplusViewPager$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "OplusViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/widget/OplusViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field blacklist childIndex:I

.field public whitelist gravity:I

.field public whitelist isDecor:Z

.field blacklist needsMeasure:Z

.field blacklist position:I

.field blacklist widthFactor:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 3179
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/widget/OplusViewPager$LayoutParams;->widthFactor:F

    .line 3180
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 3183
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3160
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/widget/OplusViewPager$LayoutParams;->widthFactor:F

    .line 3185
    invoke-static {}, Lcom/oplus/widget/OplusViewPager;->-$$Nest$sfgetLAYOUT_ATTRS()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3186
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/oplus/widget/OplusViewPager$LayoutParams;->gravity:I

    .line 3187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3188
    return-void
.end method
