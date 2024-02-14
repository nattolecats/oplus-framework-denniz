.class public Landroid/service/wallpaper/EngineExtImpl;
.super Ljava/lang/Object;
.source "EngineExtImpl.java"

# interfaces
.implements Landroid/service/wallpaper/IEngineExt;


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist FINISH_DRAWING_DELAY_IN_MILLIONS:I = 0x1f4

.field private static final blacklist FLOAT_ROUND_NUM:F = 0.5f

.field private static final blacklist TAG:Ljava/lang/String; = "EngineExt"


# instance fields
.field private final blacklist mBase:Landroid/service/wallpaper/WallpaperService$Engine;

.field private blacklist mIsSupportReportFinishDrawing:Z

.field private blacklist mReportedFinishDrawing:Z

.field private blacklist mWallpaperService:Landroid/service/wallpaper/WallpaperService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfinishDrawingIfNeed(Landroid/service/wallpaper/EngineExtImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->finishDrawingIfNeed()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    .line 31
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/wallpaper/EngineExtImpl;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mIsSupportReportFinishDrawing:Z

    .line 42
    iput-boolean v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mReportedFinishDrawing:Z

    .line 47
    move-object v0, p1

    check-cast v0, Landroid/service/wallpaper/WallpaperService$Engine;

    iput-object v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mBase:Landroid/service/wallpaper/WallpaperService$Engine;

    .line 48
    return-void
.end method

.method private blacklist canReportFinishDrawing()Z
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mIsSupportReportFinishDrawing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->isFromSwitchingUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist finishDrawing()V
    .locals 4

    .line 138
    iget-object v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mBase:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mBase:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService$Engine;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/service/wallpaper/EngineExtImpl;->mBase:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v1, v1, Landroid/service/wallpaper/WallpaperService$Engine;->mWindow:Lcom/android/internal/view/BaseIWindow;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 144
    :goto_0
    goto :goto_1

    .line 146
    :cond_0
    const-string v0, "EngineExt"

    const-string v1, "Fail to call finishDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_1
    return-void
.end method

.method private blacklist finishDrawingIfNeed()V
    .locals 4

    .line 124
    const-string v0, "EngineExt"

    iget-boolean v1, p0, Landroid/service/wallpaper/EngineExtImpl;->mReportedFinishDrawing:Z

    if-nez v1, :cond_1

    .line 126
    :try_start_0
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->finishDrawing()V

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/wallpaper/EngineExtImpl;->mReportedFinishDrawing:Z

    .line 128
    sget-boolean v1, Landroid/service/wallpaper/EngineExtImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "finishDrawingIfNeed: finishDrawing done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDrawingIfNeed: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist isFromSwitchingUser()Z
    .locals 1

    .line 116
    iget-object v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mWallpaperService:Landroid/service/wallpaper/WallpaperService;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/service/wallpaper/WallpaperService;->mOplusWallpaperServiceExt:Landroid/service/wallpaper/IWallpaperServiceExt;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperServiceExt;->isFromSwitchingUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isLandscape(Landroid/view/Display;)Z
    .locals 4
    .param p1, "display"    # Landroid/view/Display;

    .line 205
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 206
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 207
    .local v1, "rotation":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    return v0

    .line 209
    .end local v1    # "rotation":I
    :cond_2
    return v0
.end method

.method private blacklist isOnMainThread()Z
    .locals 2

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 72
    .local v0, "curThreadLooper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist isPreview()Z
    .locals 1

    .line 120
    iget-object v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mBase:Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    return v0
.end method

.method private blacklist needDelayFinishDrawing()Z
    .locals 4

    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, "needDelay":Z
    :try_start_0
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->canReportFinishDrawing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/service/wallpaper/EngineExtImpl;->mReportedFinishDrawing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 107
    goto :goto_1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needDelayFinishDrawing: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EngineExt"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v0, 0x0

    .line 108
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method


# virtual methods
.method public blacklist initLayoutForInvalidMaxBounds(Landroid/graphics/Rect;Landroid/view/WindowManager$LayoutParams;Landroid/view/Display;II)Z
    .locals 7
    .param p1, "maxBounds"    # Landroid/graphics/Rect;
    .param p2, "layout"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "myWidth"    # I
    .param p5, "myHeight"    # I

    .line 172
    const-string v0, "EngineExt"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 178
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 182
    :cond_1
    invoke-virtual {p3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v2

    .line 183
    .local v2, "mode":Landroid/view/Display$Mode;
    if-nez v2, :cond_2

    .line 184
    const-string v3, "initLayoutForInvalidMaxBounds fail to get display mode"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return v1

    .line 188
    :cond_2
    invoke-direct {p0, p3}, Landroid/service/wallpaper/EngineExtImpl;->isLandscape(Landroid/view/Display;)Z

    move-result v3

    .line 189
    .local v3, "isLandscape":Z
    new-instance v4, Landroid/graphics/Rect;

    .line 190
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    .line 191
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v6

    :goto_1
    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v1, v4

    .line 192
    .local v1, "tmpBounds":Landroid/graphics/Rect;
    nop

    .line 193
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p4

    div-float/2addr v4, v5

    .line 194
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    int-to-float v6, p5

    div-float/2addr v5, v6

    .line 192
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 195
    .local v4, "layoutScale":F
    int-to-float v5, p4

    mul-float/2addr v5, v4

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 196
    int-to-float v5, p5

    mul-float/2addr v5, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 197
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initLayoutForInvalidMaxBounds bounds="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v0, 0x1

    return v0

    .line 179
    .end local v1    # "tmpBounds":Landroid/graphics/Rect;
    .end local v2    # "mode":Landroid/view/Display$Mode;
    .end local v3    # "isLandscape":Z
    .end local v4    # "layoutScale":F
    :cond_5
    :goto_2
    return v1

    .line 173
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLayoutForInvalidMaxBounds illegal param maxBounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " layout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v1
.end method

.method public blacklist onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .line 152
    sget-boolean v0, Landroid/service/wallpaper/EngineExtImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommand: action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EngineExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    const-string v0, "finishDrawing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->finishDrawingIfNeed()V

    goto :goto_0

    .line 157
    :cond_1
    const-string v0, "supportReportFinishDrawing"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mIsSupportReportFinishDrawing:Z

    .line 160
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist reportEngineShown(Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;Z)Z
    .locals 3
    .param p1, "engineWrapper"    # Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;
    .param p2, "waitForEngineShown"    # Z

    .line 55
    sget-boolean v0, Landroid/service/wallpaper/EngineExtImpl;->DEBUG:Z

    const-string v1, "EngineExt"

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportEngineShown isSupportReportFinishDrawing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/wallpaper/EngineExtImpl;->mIsSupportReportFinishDrawing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isFromSwitchingUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->isFromSwitchingUser()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " waitForEngineShown="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->canReportFinishDrawing()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    const-string v0, "reportEngineShown report immediately"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;->reportShown()V

    .line 64
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportFinishDrawing(Landroid/os/Handler;Landroid/view/IWindowSession;Lcom/android/internal/view/BaseIWindow;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "windowSession"    # Landroid/view/IWindowSession;
    .param p3, "window"    # Lcom/android/internal/view/BaseIWindow;

    .line 80
    sget-boolean v0, Landroid/service/wallpaper/EngineExtImpl;->DEBUG:Z

    const-string v1, "EngineExt"

    if-eqz v0, :cond_0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFinishDrawing: mReportedFinishDrawing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/service/wallpaper/EngineExtImpl;->mReportedFinishDrawing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mIsFromSwitchingUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 82
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->isFromSwitchingUser()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->needDelayFinishDrawing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    if-eqz v0, :cond_1

    .line 86
    const-string v0, "reportFinishDrawing delay finishDrawing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1
    new-instance v0, Landroid/service/wallpaper/EngineExtImpl$1;

    invoke-direct {v0, p0}, Landroid/service/wallpaper/EngineExtImpl$1;-><init>(Landroid/service/wallpaper/EngineExtImpl;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Landroid/service/wallpaper/EngineExtImpl;->finishDrawing()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/EngineExtImpl;->mReportedFinishDrawing:Z

    .line 98
    :goto_0
    return-void
.end method

.method public blacklist setWallpaperService(Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .param p1, "wallpaperService"    # Landroid/service/wallpaper/WallpaperService;

    .line 164
    iput-object p1, p0, Landroid/service/wallpaper/EngineExtImpl;->mWallpaperService:Landroid/service/wallpaper/WallpaperService;

    .line 165
    return-void
.end method
