.class public final Lcom/oplus/view/OplusSurfaceControl;
.super Ljava/lang/Object;
.source "OplusSurfaceControl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusSurfaceControl"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist screenshot(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 50
    .local v0, "sourceCrop":Landroid/graphics/Rect;
    invoke-static {v0, p0, p1, v1}, Lcom/oplus/view/OplusSurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist screenshot(III)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "maxLayer"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    .local v0, "sourceCrop":Landroid/graphics/Rect;
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v2

    .line 69
    .local v2, "displayToken":Landroid/os/IBinder;
    new-instance v3, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v3, v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 71
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 72
    invoke-virtual {v3, p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v3

    .line 73
    invoke-virtual {v3, v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v1

    .line 75
    .local v1, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    nop

    .line 76
    invoke-static {v1}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v3

    .line 77
    .local v3, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    return-object v4
.end method

.method public static whitelist screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxLayer"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/oplus/view/OplusSurfaceControl;->screenshot(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist screenshot(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "sourceCrop"    # Landroid/graphics/Rect;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxLayer"    # I
    .param p4, "rotation"    # I

    .line 110
    const-string v0, "OplusSurfaceControl"

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    .line 131
    .local v0, "displayToken":Landroid/os/IBinder;
    new-instance v1, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    invoke-direct {v1, v0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    .line 133
    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$CaptureArgs$Builder;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 134
    invoke-virtual {v1, p1, p2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setSize(II)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->setUseIdentityTransform(Z)Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->build()Landroid/view/SurfaceControl$DisplayCaptureArgs;

    move-result-object v1

    .line 137
    .local v1, "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    nop

    .line 138
    invoke-static {v1}, Landroid/view/SurfaceControl;->captureDisplay(Landroid/view/SurfaceControl$DisplayCaptureArgs;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 139
    .local v2, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_0
    return-object v3

    .line 111
    .end local v0    # "displayToken":Landroid/os/IBinder;
    .end local v1    # "captureArgs":Landroid/view/SurfaceControl$DisplayCaptureArgs;
    .end local v2    # "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 113
    .local v1, "result":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/view/OplusWindowManager;

    invoke-direct {v2}, Landroid/view/OplusWindowManager;-><init>()V

    .line 115
    .local v2, "wm":Landroid/view/OplusWindowManager;
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/OplusWindowManager;->getLongshotWindowByTypeForR(I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 116
    .local v3, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenshot surfaceControl : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oplus/util/OplusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, p0, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v4

    .line 119
    .local v4, "buffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v4, :cond_3

    .line 120
    invoke-virtual {v4}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .end local v1    # "result":Landroid/graphics/Bitmap;
    .local v0, "result":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 122
    .end local v0    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "result":Landroid/graphics/Bitmap;
    :cond_3
    const-string v5, "screenshot buffer error"

    invoke-static {v0, v5}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v2    # "wm":Landroid/view/OplusWindowManager;
    .end local v3    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v4    # "buffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :goto_2
    goto :goto_3

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ERROR] captureLayers : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v1
.end method
