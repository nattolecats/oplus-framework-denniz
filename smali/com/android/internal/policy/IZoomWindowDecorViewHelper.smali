.class public interface abstract Lcom/android/internal/policy/IZoomWindowDecorViewHelper;
.super Ljava/lang/Object;
.source "IZoomWindowDecorViewHelper.java"


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/policy/IZoomWindowDecorViewHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/android/internal/policy/IZoomWindowDecorViewHelper$1;

    invoke-direct {v0}, Lcom/android/internal/policy/IZoomWindowDecorViewHelper$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/IZoomWindowDecorViewHelper;->DEFAULT:Lcom/android/internal/policy/IZoomWindowDecorViewHelper;

    return-void
.end method


# virtual methods
.method public blacklist draw(Landroid/graphics/Canvas;II)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 22
    return-void
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "context"    # Landroid/content/Context;

    .line 30
    return-void
.end method

.method public blacklist relayoutZoomView()V
    .locals 0

    .line 18
    return-void
.end method

.method public blacklist relayoutZoomView(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "mWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 14
    return-void
.end method

.method public blacklist remeasureZoomView(II)Z
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeZoomView()V
    .locals 0

    .line 34
    return-void
.end method

.method public blacklist setWindow(Landroid/view/IWindow;)V
    .locals 0
    .param p1, "window"    # Landroid/view/IWindow;

    .line 26
    return-void
.end method
