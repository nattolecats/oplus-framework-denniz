.class public interface abstract Lcom/oplus/darkmode/IOplusDarkModeManager;
.super Ljava/lang/Object;
.source "IOplusDarkModeManager.java"

# interfaces
.implements Landroid/common/IOplusCommonFeature;


# static fields
.field public static final whitelist DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/oplus/darkmode/IOplusDarkModeManager$1;

    invoke-direct {v0}, Lcom/oplus/darkmode/IOplusDarkModeManager$1;-><init>()V

    sput-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    return-void
.end method


# virtual methods
.method public whitelist changeColorFilterInDarkMode(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 184
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;

    .line 204
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 248
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;

    .line 208
    return-void
.end method

.method public whitelist changePaintWhenDrawArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/IBaseCanvasExt;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "rectF"    # Landroid/graphics/RectF;
    .param p3, "path"    # Landroid/graphics/Path;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 252
    return-void
.end method

.method public whitelist changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 220
    return-void
.end method

.method public whitelist changePaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 264
    return-void
.end method

.method public whitelist changePaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 212
    return-void
.end method

.method public whitelist changePaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)V
    .locals 0
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 256
    return-void
.end method

.method public whitelist changePaintWhenDrawText(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 196
    return-void
.end method

.method public whitelist changePaintWhenDrawText(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 280
    return-void
.end method

.method public whitelist changeSystemUiVisibility(I)I
    .locals 0
    .param p1, "oldSystemUiVisibility"    # I

    .line 93
    return p1
.end method

.method public whitelist changeUsageForceDarkAlgorithmType(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 59
    return-void
.end method

.method public whitelist changeWhenDrawColor(IZ)I
    .locals 0
    .param p1, "color"    # I
    .param p2, "isDarkMode"    # Z

    .line 215
    return p1
.end method

.method public whitelist changeWhenDrawColor(IZLandroid/graphics/IBaseCanvasExt;)I
    .locals 0
    .param p1, "color"    # I
    .param p2, "isDarkMode"    # Z
    .param p3, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 259
    return p1
.end method

.method public whitelist createWebViewClientWrapper(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;)Landroid/webkit/WebViewClient;
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "client"    # Landroid/webkit/WebViewClient;

    .line 86
    return-object p2
.end method

.method public whitelist darkenSplitScreenDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;IIIILandroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)Z
    .locals 1
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "resizingDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "canvas"    # Landroid/graphics/RecordingCanvas;
    .param p8, "mFrameAndBackdropNode"    # Landroid/graphics/RenderNode;

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist ensureWebSettingDarkMode(Landroid/webkit/WebView;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist forceDarkAllowedDefault(Landroid/content/Context;Z)Z
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceDarkAllowedDefault"    # Z

    .line 55
    return p2
.end method

.method public whitelist forceDarkWithoutTheme(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "useAutoDark"    # Z

    .line 124
    return-void
.end method

.method public whitelist forceDarkWithoutTheme(Landroid/content/Context;Z)Z
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useAutoDark"    # Z

    .line 79
    return p2
.end method

.method public blacklist getColorFilterWhenDrawVectorDrawable(Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;Landroid/graphics/drawable/SumEntity;)Landroid/graphics/ColorFilter;
    .locals 1
    .param p1, "hEntity"    # Landroid/graphics/drawable/SumEntity;
    .param p2, "sEntity"    # Landroid/graphics/drawable/SumEntity;
    .param p3, "lEntity"    # Landroid/graphics/drawable/SumEntity;

    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDarkModeBackgroundMaxL(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public whitelist getDarkModeColors([I)[I
    .locals 0
    .param p1, "colors"    # [I

    .line 223
    return-object p1
.end method

.method public whitelist getDarkModeColors([ILandroid/graphics/IBaseCanvasExt;)[I
    .locals 0
    .param p1, "colors"    # [I
    .param p2, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 267
    return-object p1
.end method

.method public whitelist getDarkModeData(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDarkModeDialogBgMaxL(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 109
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public whitelist getDarkModeForegroundMinL(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 117
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public whitelist getDarkModeLinearGradient(FFFF[I[FIILandroid/graphics/Shader$TileMode;)Landroid/graphics/Shader;
    .locals 1
    .param p1, "mX0"    # F
    .param p2, "mY0"    # F
    .param p3, "mX1"    # F
    .param p4, "mY1"    # F
    .param p5, "mColors"    # [I
    .param p6, "mPositions"    # [F
    .param p7, "mColor0"    # I
    .param p8, "mColor1"    # I
    .param p9, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDarkModeRadialGradient(FFF[II[FILandroid/graphics/Shader$TileMode;)Landroid/graphics/Shader;
    .locals 1
    .param p1, "mX"    # F
    .param p2, "mY"    # F
    .param p3, "mRadius"    # F
    .param p4, "mColors"    # [I
    .param p5, "mCenterColor"    # I
    .param p6, "mPositions"    # [F
    .param p7, "mEdgeColor"    # I
    .param p8, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getDarkModeSweepGradient(FF[I[FII)Landroid/graphics/Shader;
    .locals 1
    .param p1, "mCx"    # F
    .param p2, "mCy"    # F
    .param p3, "mColors"    # [I
    .param p4, "mPositions"    # [F
    .param p5, "mColor0"    # I
    .param p6, "mColor1"    # I

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic whitelist getDefault()Landroid/common/IOplusCommonFeature;
    .locals 1

    .line 37
    invoke-interface {p0}, Lcom/oplus/darkmode/IOplusDarkModeManager;->getDefault()Lcom/oplus/darkmode/IOplusDarkModeManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefault()Lcom/oplus/darkmode/IOplusDarkModeManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/oplus/darkmode/IOplusDarkModeManager;->DEFAULT:Lcom/oplus/darkmode/IOplusDarkModeManager;

    return-object v0
.end method

.method public whitelist getPaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPaintWhenDrawBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getPaintWhenDrawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/IBaseCanvasExt;)Landroid/graphics/Paint;
    .locals 1
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "rectF"    # Landroid/graphics/RectF;
    .param p4, "canvas"    # Landroid/graphics/IBaseCanvasExt;

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRealPaintState(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$RealPaintState;
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getVectorColor(I)I
    .locals 0
    .param p1, "color"    # I

    .line 179
    return p1
.end method

.method public whitelist handleDecodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "outPadding"    # Landroid/graphics/Rect;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;

    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handleEraseColor(I)I
    .locals 0
    .param p1, "color"    # I

    .line 153
    return p1
.end method

.method public whitelist hideAutoChangeUiMode(I)I
    .locals 0
    .param p1, "curMode"    # I

    .line 62
    return p1
.end method

.method public whitelist index()Landroid/common/OplusFeatureList$OplusIndex;
    .locals 1

    .line 43
    sget-object v0, Landroid/common/OplusFeatureList$OplusIndex;->IOplusDarkModeManager:Landroid/common/OplusFeatureList$OplusIndex;

    return-object v0
.end method

.method public whitelist init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    return-void
.end method

.method public whitelist initDarkModeStatus(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    .line 144
    return-void
.end method

.method public whitelist isDarkModePage(Ljava/lang/String;Z)Z
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "systemDarkMode"    # Z

    .line 105
    return p2
.end method

.method public whitelist isInDarkMode(Z)Z
    .locals 1
    .param p1, "isHardware"    # Z

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist logConfigurationNightError(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isNightConfiguration"    # Z

    .line 73
    return-void
.end method

.method public whitelist logForceDarkAllowedStatus(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forceDarkAllowedDefault"    # Z

    .line 70
    return-void
.end method

.method public whitelist markBackground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 238
    return-void
.end method

.method public whitelist markDispatchDraw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 236
    return-void
.end method

.method public whitelist markDrawChild(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .line 234
    return-void
.end method

.method public whitelist markDrawFadingEdge(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 244
    return-void
.end method

.method public whitelist markForeground(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 240
    return-void
.end method

.method public whitelist markOnDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .line 242
    return-void
.end method

.method public whitelist markViewTypeBySize(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 140
    return-void
.end method

.method public whitelist newOplusDarkModeManager()Lcom/oplus/darkmode/IOplusDarkModeManager;
    .locals 0

    .line 121
    return-object p0
.end method

.method public whitelist refreshForceDark(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .line 90
    return-void
.end method

.method public whitelist refreshForceDark(Landroid/view/View;IFFF)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "colorForceDarkValue"    # I
    .param p3, "progress"    # F
    .param p4, "backgroundMaxL"    # F
    .param p5, "foregroundMinL"    # F

    .line 98
    return-void
.end method

.method public whitelist refreshForceDark(Landroid/view/View;Lcom/oplus/darkmode/OplusDarkModeData;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "oplusDarkModeData"    # Lcom/oplus/darkmode/OplusDarkModeData;

    .line 138
    return-void
.end method

.method public whitelist resetRealPaintIfNeed(Landroid/graphics/Paint;Landroid/graphics/IBaseCanvasExt$RealPaintState;)V
    .locals 0
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "realPaintState"    # Landroid/graphics/IBaseCanvasExt$RealPaintState;

    .line 200
    return-void
.end method

.method public whitelist setDarkModeProgress(Landroid/view/View;)V
    .locals 0
    .param p1, "decor"    # Landroid/view/View;

    .line 76
    return-void
.end method

.method public whitelist setDarkModeProgress(Landroid/view/View;Landroid/content/res/OplusBaseConfiguration;)Z
    .locals 1
    .param p1, "decor"    # Landroid/view/View;
    .param p2, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist shouldIntercept()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist shouldInterceptConfigRelaunch(ILandroid/content/res/OplusBaseConfiguration;)Z
    .locals 1
    .param p1, "diff"    # I
    .param p2, "configuration"    # Landroid/content/res/OplusBaseConfiguration;

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist startDelayInjectJS(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Landroid/webkit/WebView;

    .line 83
    return-void
.end method

.method public whitelist useForcePowerSave()Z
    .locals 1

    .line 66
    const/4 v0, 0x1

    return v0
.end method
