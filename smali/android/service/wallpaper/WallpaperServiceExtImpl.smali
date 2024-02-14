.class public Landroid/service/wallpaper/WallpaperServiceExtImpl;
.super Ljava/lang/Object;
.source "WallpaperServiceExtImpl.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperServiceExt;


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperServiceExtImpl"


# instance fields
.field private blacklist mIsFromSwitchingUser:Z

.field private blacklist mIsSupportSeparateWallpaper:Z

.field private blacklist mIsSwitchingEngineOnDisplay:Z

.field blacklist mWallpaperService:Landroid/service/wallpaper/WallpaperService;

.field blacklist mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 23
    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    .line 25
    iput-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperService:Landroid/service/wallpaper/WallpaperService;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsFromSwitchingUser:Z

    .line 30
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSupportSeparateWallpaper:Z

    .line 31
    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSwitchingEngineOnDisplay:Z

    .line 35
    move-object v0, p1

    check-cast v0, Landroid/service/wallpaper/WallpaperService;

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperService:Landroid/service/wallpaper/WallpaperService;

    .line 36
    new-instance v0, Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    invoke-direct {v0}, Landroid/service/wallpaper/OplusWallpaperServiceHelper;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    .line 37
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperServiceExtImpl;->initIsSupportSeparateWallpaper()V

    .line 38
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSupportSeparateWallpaper:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperServiceExtImpl;->initIsSwitchingEngineOnDisplay()V

    .line 41
    :cond_0
    return-void
.end method

.method private blacklist adjustMessageQueueInternal(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 110
    :cond_0
    return-void
.end method

.method private blacklist enableSeparateWallpaperForMultiDisplay()Z
    .locals 2

    .line 154
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 155
    const-string v1, "oplus.software.wallpaper.separate_wallpaper_for_multi_display"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 154
    return v0
.end method

.method private blacklist initIsSupportSeparateWallpaper()V
    .locals 2

    .line 144
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperServiceExtImpl;->enableSeparateWallpaperForMultiDisplay()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSupportSeparateWallpaper:Z

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initIsSupportSeparateWallpaper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSupportSeparateWallpaper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperServiceExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method private blacklist initIsSwitchingEngineOnDisplay()V
    .locals 2

    .line 149
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperServiceExtImpl;->isFoldRemapDisplayDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSwitchingEngineOnDisplay:Z

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initIsSwitchingEngineOnDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSwitchingEngineOnDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperServiceExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method private blacklist isFoldRemapDisplayDisabled()Z
    .locals 2

    .line 159
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    .line 160
    const-string v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    .line 159
    return v0
.end method


# virtual methods
.method public blacklist addEngine(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1
    .param p1, "engine"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 45
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Landroid/service/wallpaper/OplusWallpaperServiceHelper;->addEngine(Landroid/service/wallpaper/WallpaperService$Engine;)V

    .line 48
    :cond_0
    return-void
.end method

.method public blacklist adjustMessageQueue(Landroid/os/Handler;Landroid/os/Message;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # Landroid/os/Message;

    .line 94
    if-eqz p1, :cond_2

    .line 95
    iget v0, p2, Landroid/os/Message;->what:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 98
    :cond_0
    sget-boolean v0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustMessageQueue send msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to front"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperServiceExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/service/wallpaper/WallpaperServiceExtImpl;->adjustMessageQueueInternal(Landroid/os/Handler;Landroid/os/Message;)V

    .line 104
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist blockReportResizeForWallpaper(Landroid/window/ClientWindowFrames;Landroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/util/MergedConfiguration;IIZZLandroid/view/SurfaceControl;)Z
    .locals 6
    .param p1, "currentWinFrames"    # Landroid/window/ClientWindowFrames;
    .param p2, "newWinFrames"    # Landroid/window/ClientWindowFrames;
    .param p3, "currentMergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p4, "newMergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p5, "currentDisplayId"    # I
    .param p6, "newDisplayId"    # I
    .param p7, "reportDraw"    # Z
    .param p8, "forceLayout"    # Z
    .param p9, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 170
    iget-object v0, p1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v3, p2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 171
    .local v0, "frameChanged":Z
    :goto_1
    invoke-virtual {p3, p4}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    .line 172
    .local v3, "configChanged":Z
    if-eq p5, p6, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 173
    .local v4, "displayChanged":Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v4, :cond_3

    if-nez p8, :cond_3

    if-nez p7, :cond_3

    move v1, v2

    .line 174
    .local v1, "shouldBlock":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Block update resized of "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "WallpaperServiceExtImpl"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_4
    return v1
.end method

.method blacklist getUserId()I
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperService:Landroid/service/wallpaper/WallpaperService;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getUserId()I

    move-result v0

    return v0

    .line 89
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public blacklist isFromSwitchingUser()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsFromSwitchingUser:Z

    return v0
.end method

.method public blacklist onBind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    sget-boolean v0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperServiceExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fromSwitchingUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsFromSwitchingUser:Z

    .line 78
    return-void
.end method

.method public blacklist onDispatchAppVisibility(ZZ)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "debug"    # Z

    .line 116
    if-eqz p2, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dispatch app visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperServiceExtImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void
.end method

.method public blacklist registerSetingsContentObserver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p1}, Landroid/service/wallpaper/OplusWallpaperServiceHelper;->registerSetingsContentObserver(Landroid/content/Context;)V

    .line 55
    :cond_0
    return-void
.end method

.method public blacklist removeEngine(Landroid/service/wallpaper/WallpaperService$Engine;)V
    .locals 1
    .param p1, "engine"    # Landroid/service/wallpaper/WallpaperService$Engine;

    .line 59
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/service/wallpaper/OplusWallpaperServiceHelper;->removeEngine(Landroid/service/wallpaper/WallpaperService$Engine;)V

    .line 62
    :cond_0
    return-void
.end method

.method public blacklist sendWallpaperCommandMsg(Lcom/android/internal/os/HandlerCaller;Landroid/os/Message;Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V
    .locals 2
    .param p1, "caller"    # Lcom/android/internal/os/HandlerCaller;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "command"    # Landroid/service/wallpaper/WallpaperService$WallpaperCommand;

    .line 131
    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSupportSeparateWallpaper:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mIsSwitchingEngineOnDisplay:Z

    if-eqz v0, :cond_1

    iget-object v0, p3, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    .line 132
    const-string v1, "switchPhysicalDisplay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    sget-boolean v0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendWallpaperCommandMsg post command="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Landroid/service/wallpaper/WallpaperService$WallpaperCommand;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to front"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperServiceExtImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/service/wallpaper/WallpaperServiceExtImpl;->adjustMessageQueueInternal(Landroid/os/Handler;Landroid/os/Message;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperServiceExt;->sendWallpaperCommandMsg(Lcom/android/internal/os/HandlerCaller;Landroid/os/Message;Landroid/service/wallpaper/WallpaperService$WallpaperCommand;)V

    .line 141
    :goto_0
    return-void
.end method

.method public blacklist setWallpaperService(Landroid/service/wallpaper/WallpaperService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/wallpaper/WallpaperService;

    .line 82
    iput-object p1, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperService:Landroid/service/wallpaper/WallpaperService;

    .line 83
    return-void
.end method

.method public blacklist unregisterSettingsContentObserver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperServiceExtImpl;->mWallpaperServiceHelper:Landroid/service/wallpaper/OplusWallpaperServiceHelper;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0, p1}, Landroid/service/wallpaper/OplusWallpaperServiceHelper;->unregisterSettingsContentObserver(Landroid/content/Context;)V

    .line 69
    :cond_0
    return-void
.end method
