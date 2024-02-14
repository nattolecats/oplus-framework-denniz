.class public final Landroid/hardware/OplusCameraStatisticsManager;
.super Ljava/lang/Object;
.source "OplusCameraStatisticsManager.java"

# interfaces
.implements Landroid/hardware/IOplusCameraStatisticsManager;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OplusCameraStatisticsManager"

.field private static blacklist sInstance:Landroid/hardware/OplusCameraStatisticsManager;


# instance fields
.field private blacklist mCameraId:I

.field private blacklist mConnectTime:J

.field private blacklist mCurFaceCount:I

.field private blacklist mDisconnectTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/hardware/OplusCameraStatisticsManager;

    invoke-direct {v0}, Landroid/hardware/OplusCameraStatisticsManager;-><init>()V

    sput-object v0, Landroid/hardware/OplusCameraStatisticsManager;->sInstance:Landroid/hardware/OplusCameraStatisticsManager;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    .line 31
    iput-wide v0, p0, Landroid/hardware/OplusCameraStatisticsManager;->mDisconnectTime:J

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCurFaceCount:I

    .line 37
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/hardware/OplusCameraStatisticsManager;
    .locals 2

    const-class v0, Landroid/hardware/OplusCameraStatisticsManager;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Landroid/hardware/OplusCameraStatisticsManager;->sInstance:Landroid/hardware/OplusCameraStatisticsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist addCaptureInfo(Landroid/hardware/Camera$Parameters;)V
    .locals 12
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 130
    const-string v0, "OplusCameraStatisticsManager"

    const-string v1, "1"

    if-nez p1, :cond_0

    .line 131
    return-void

    .line 135
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    .local v2, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 137
    .local v3, "pictureSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v4

    .line 138
    .local v4, "zoom":I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    .line 139
    .local v5, "flashMode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v6

    .line 140
    .local v6, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const-string v7, "pkgName"

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v7, "camera_id"

    iget v8, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v7, "apLevel"

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v7, "halLevel"

    invoke-virtual {v2, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget v7, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "rear_front"

    if-nez v7, :cond_1

    .line 146
    :try_start_1
    const-string v7, "rear"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 148
    :cond_1
    const-string v7, "front"

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :goto_0
    if-eqz v3, :cond_2

    .line 152
    const-string v7, "width"

    iget v8, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v7, "height"

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_2
    const-string v7, "zoom"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v7, "iso_value"

    const-string v8, "iso"

    invoke-virtual {p1, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v7, "exp_value"

    const-string v8, "exposure-time"

    invoke-virtual {p1, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    if-eqz v5, :cond_5

    .line 161
    const-string v7, "off"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v8, "flash_trigger"

    if-eqz v7, :cond_3

    .line 162
    :try_start_2
    const-string v1, "0"

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 163
    :cond_3
    const-string v7, "on"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 164
    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 165
    :cond_4
    const-string v1, "torch"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 166
    const-string v1, "2"

    invoke-virtual {v2, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_5
    :goto_1
    const/4 v1, 0x0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 171
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Area;

    iget-object v7, v7, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 173
    .local v7, "rect":Landroid/graphics/Rect;
    if-eqz v7, :cond_6

    .line 174
    const-string v8, "touchxy_value"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 175
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_6
    const-string v7, "face_count"

    iget v8, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCurFaceCount:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "2012002"

    const-string v9, "photograph"

    invoke-static {v7, v8, v9, v2, v1}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addCaptureInfo, eventMap: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 185
    nop

    .end local v2    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "pictureSize":Landroid/hardware/Camera$Size;
    .end local v4    # "zoom":I
    .end local v5    # "flashMode":Ljava/lang/String;
    .end local v6    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    goto :goto_2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "failure in addCaptureInfo"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public blacklist addInfo(IJ)V
    .locals 6
    .param p1, "cameraId"    # I
    .param p2, "disconnectTime"    # J

    .line 64
    iget-wide v0, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 65
    iput p1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "pkgName"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "cameraId"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v1, "apLevel"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "halLevel"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-wide v4, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v4, "connentTime"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    cmp-long v1, p2, v2

    if-lez v1, :cond_0

    .line 74
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnectTime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-wide v1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    sub-long v1, p2, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeCost"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    .line 79
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "2012002"

    const-string v4, "openCamera"

    invoke-static {v1, v3, v4, v0, v2}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInfo, eventMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OplusCameraStatisticsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method public blacklist addPreviewInfo(Landroid/hardware/Camera$Parameters;)V
    .locals 12
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .line 87
    const-string v0, "1"

    const-string v1, "OplusCameraStatisticsManager"

    if-eqz p1, :cond_4

    iget-wide v2, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto/16 :goto_1

    .line 92
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v2, "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 94
    .local v3, "previewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v6

    .line 95
    .local v6, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 96
    .local v7, "stopPreviewTime":J
    const-string v9, "pkgName"

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v9, "camera_id"

    iget v10, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v9, "apLevel"

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v9, "halLevel"

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    cmp-long v0, v7, v4

    if-lez v0, :cond_1

    .line 102
    const-string v0, "preview_time"

    iget-wide v4, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    sub-long v4, v7, v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_1
    if-eqz v3, :cond_2

    .line 106
    const-string v0, "width"

    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "height"

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    const/4 v0, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 111
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Area;

    iget-object v4, v4, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    .line 113
    .local v4, "rect":Landroid/graphics/Rect;
    if-eqz v4, :cond_3

    .line 114
    const-string v5, "touchxy_value"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    .line 115
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 114
    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v4    # "rect":Landroid/graphics/Rect;
    :cond_3
    const-string v4, "face_count"

    iget v5, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCurFaceCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "2012002"

    const-string v9, "preview"

    invoke-static {v4, v5, v9, v2, v0}, Loplus/util/OplusStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPreviewInfo, eventMap: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    nop

    .end local v2    # "eventMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "previewSize":Landroid/hardware/Camera$Size;
    .end local v6    # "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v7    # "stopPreviewTime":J
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "exception":Ljava/lang/Exception;
    const-string v2, "failure in addPreviewInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 88
    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist getCameraId()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I

    return v0
.end method

.method public blacklist setCameraId(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .line 52
    iput p1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCameraId:I

    .line 53
    return-void
.end method

.method public blacklist setConnectTime(J)V
    .locals 0
    .param p1, "connectTime"    # J

    .line 44
    iput-wide p1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mConnectTime:J

    .line 45
    return-void
.end method

.method public blacklist setCurFaceCount(I)V
    .locals 0
    .param p1, "curFaceCount"    # I

    .line 60
    iput p1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mCurFaceCount:I

    .line 61
    return-void
.end method

.method public blacklist setDisconnectTime(J)V
    .locals 0
    .param p1, "disconnectTime"    # J

    .line 48
    iput-wide p1, p0, Landroid/hardware/OplusCameraStatisticsManager;->mDisconnectTime:J

    .line 49
    return-void
.end method
