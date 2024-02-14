.class public Lcom/android/internal/policy/BackdropFrameRendererExtImpl;
.super Ljava/lang/Object;
.source "BackdropFrameRendererExtImpl.java"

# interfaces
.implements Lcom/android/internal/policy/IBackdropFrameRendererExt;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BackdropFrameRendererExtImpl"


# instance fields
.field private blacklist mDebug:Z


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRendererExtImpl;->mDebug:Z

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist checkSystemBarForceDark(Lcom/android/internal/policy/DecorView;Landroid/graphics/RenderNode;)V
    .locals 2
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "systemBarBackgroundNode"    # Landroid/graphics/RenderNode;

    .line 38
    if-nez p1, :cond_0

    .line 39
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/policy/DecorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/OplusBaseConfiguration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/OplusBaseConfiguration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/RenderNode;->setForceDarkAllowed(Z)Z

    .line 45
    :cond_1
    return-void
.end method

.method public blacklist drawDarkModeBackground(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIIIILandroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)V
    .locals 12
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "lastCaptionHeight"    # I
    .param p4, "top"    # I
    .param p5, "left"    # I
    .param p6, "height"    # I
    .param p7, "width"    # I
    .param p8, "canvas"    # Landroid/graphics/RecordingCanvas;
    .param p9, "renderNode"    # Landroid/graphics/RenderNode;

    .line 26
    move-object v9, p2

    move-object v10, p0

    iget-boolean v0, v10, Lcom/android/internal/policy/BackdropFrameRendererExtImpl;->mDebug:Z

    if-eqz v0, :cond_0

    .line 27
    const-string v0, "BackdropFrameRendererExtImpl"

    const-string v1, "drawDarkModeBackground in impl"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v11, 0x0

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/darkmode/IOplusDarkModeManager;

    const/4 v3, 0x0

    add-int v5, p5, p7

    add-int v6, p4, p6

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-interface/range {v0 .. v8}, Lcom/oplus/darkmode/IOplusDarkModeManager;->darkenSplitScreenDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;IIIILandroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    add-int v0, p5, p7

    add-int v1, p4, p6

    move v2, p3

    invoke-virtual {p2, v11, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    move-object/from16 v0, p8

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 29
    :cond_1
    move v2, p3

    move-object/from16 v0, p8

    .line 34
    :goto_0
    return-void
.end method
