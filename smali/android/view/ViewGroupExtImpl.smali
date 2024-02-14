.class public Landroid/view/ViewGroupExtImpl;
.super Ljava/lang/Object;
.source "ViewGroupExtImpl.java"

# interfaces
.implements Landroid/view/IViewGroupExt;


# instance fields
.field private blacklist mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "viewGroup"    # Ljava/lang/Object;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroupExtImpl;->mViewGroup:Landroid/view/ViewGroup;

    .line 16
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/view/ViewGroupExtImpl;->mViewGroup:Landroid/view/ViewGroup;

    .line 17
    return-void
.end method


# virtual methods
.method public blacklist d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {p1, p2}, Lcom/oplus/debug/InputLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public blacklist hookdispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/IViewExt;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "viewExt"    # Landroid/view/IViewExt;

    .line 46
    invoke-interface {p2, p1}, Landroid/view/IViewExt;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 47
    return-void
.end method

.method public blacklist hookdrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "transientChild"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 61
    iget-object v0, p1, Landroid/graphics/Canvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    .line 62
    .local v0, "baseCanvasExt":Landroid/graphics/IBaseCanvasExt;
    const/4 v1, 0x0

    .line 63
    .local v1, "clipChldRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Landroid/graphics/IBaseCanvasExt;->getClipChildRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 66
    :cond_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 67
    return v2

    .line 69
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 70
    .local v3, "childRect":Landroid/graphics/Rect;
    invoke-virtual {p2, v3, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 71
    invoke-static {v1, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 72
    return v2

    .line 74
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist isLevelDebug()Z
    .locals 1

    .line 22
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelDebug()Z

    move-result v0

    return v0
.end method

.method public blacklist isLevelVerbose()Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    return v0
.end method

.method public blacklist markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 51
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method

.method public blacklist markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 56
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/darkmode/IOplusDarkModeManager;->markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 57
    return-void
.end method

.method public blacklist v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/oplus/debug/InputLog;->isLevelVerbose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p1, p2}, Lcom/oplus/debug/InputLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
