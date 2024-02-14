.class public Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ZoomWindowDecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ZoomWindowDecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HandleBackgroundDrawable"
.end annotation


# instance fields
.field private final blacklist mPaint:Landroid/graphics/Paint;

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ZoomWindowDecorView;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/widget/ZoomWindowDecorView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/widget/ZoomWindowDecorView;

    .line 947
    iput-object p1, p0, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;->this$0:Lcom/android/internal/widget/ZoomWindowDecorView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 948
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 953
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v1, " "

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 954
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 967
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 957
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 958
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 962
    iget-object v0, p0, Lcom/android/internal/widget/ZoomWindowDecorView$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 963
    return-void
.end method
