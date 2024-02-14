.class public Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "OplusZoomDecorAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/OplusZoomDecorAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "HandleBackgroundDrawable"
.end annotation


# instance fields
.field private final blacklist mPaint:Landroid/graphics/Paint;

.field final synthetic blacklist this$0:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/policy/OplusZoomDecorAnimHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    .line 321
    iput-object p1, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;->this$0:Lcom/android/internal/policy/OplusZoomDecorAnimHelper;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 322
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 327
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    const-string v1, " "

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 328
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 341
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "i"    # I

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 332
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 336
    iget-object v0, p0, Lcom/android/internal/policy/OplusZoomDecorAnimHelper$HandleBackgroundDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 337
    return-void
.end method
