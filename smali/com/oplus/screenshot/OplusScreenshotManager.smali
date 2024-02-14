.class public final Lcom/oplus/screenshot/OplusScreenshotManager;
.super Ljava/lang/Object;
.source "OplusScreenshotManager.java"


# static fields
.field private static final blacklist DBG:Z

.field public static final whitelist GLOBAL_ACTION_VISIBLE:Ljava/lang/String; = "global_action_visible"

.field public static final whitelist NAVIGATIONBAR_VISIBLE:Ljava/lang/String; = "navigationbar_visible"

.field public static final whitelist SCREENSHOT_DIRECTION:Ljava/lang/String; = "screenshot_direction"

.field public static final whitelist SCREENSHOT_ORIENTATION:Ljava/lang/String; = "screenshot_orientation"

.field public static final whitelist SCREENSHOT_SOURCE:Ljava/lang/String; = "screenshot_source"

.field private static final blacklist SECONDS_30:I = 0x7530

.field public static final whitelist STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar_visible"

.field private static final blacklist TAG:Ljava/lang/String; = "LongshotDump"

.field private static blacklist sIOplusDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

.field private static volatile blacklist sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;


# instance fields
.field private blacklist mIsLaunching:Z

.field private blacklist mRotation:I

.field private final blacklist mService:Lcom/oplus/screenshot/IOplusScreenshotManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 96
    sget-boolean v0, Lcom/oplus/screenshot/OplusLongshotDump;->DBG:Z

    sput-boolean v0, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lcom/oplus/screenshot/OplusScreenshotManager;->sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;

    .line 105
    sput-object v0, Lcom/oplus/screenshot/OplusScreenshotManager;->sIOplusDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mIsLaunching:Z

    .line 120
    nop

    .line 121
    const-string v0, "color_screenshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/oplus/screenshot/IOplusScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/screenshot/IOplusScreenshotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    .line 122
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/screenshot/OplusScreenshotManager;
    .locals 2

    .line 134
    sget-object v0, Lcom/oplus/screenshot/OplusScreenshotManager;->sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;

    if-nez v0, :cond_1

    .line 135
    const-class v0, Lcom/oplus/screenshot/OplusScreenshotManager;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/oplus/screenshot/OplusScreenshotManager;->sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/oplus/screenshot/OplusScreenshotManager;

    invoke-direct {v1}, Lcom/oplus/screenshot/OplusScreenshotManager;-><init>()V

    sput-object v1, Lcom/oplus/screenshot/OplusScreenshotManager;->sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;

    .line 139
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/screenshot/OplusScreenshotManager;->sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;

    return-object v0
.end method

.method public static blacklist peekInstance()Lcom/oplus/screenshot/OplusScreenshotManager;
    .locals 1

    .line 152
    sget-object v0, Lcom/oplus/screenshot/OplusScreenshotManager;->sInstance:Lcom/oplus/screenshot/OplusScreenshotManager;

    return-object v0
.end method


# virtual methods
.method public whitelist getRatation()I
    .locals 1

    .line 473
    iget v0, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mRotation:I

    return v0
.end method

.method public whitelist isLaunching()Z
    .locals 1

    .line 463
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mIsLaunching:Z

    return v0
.end method

.method public whitelist isLongshotDisabled()Z
    .locals 6

    .line 294
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 295
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 297
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isLongshotDisabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 302
    :goto_0
    goto :goto_1

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 298
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 299
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLongshotDisabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 304
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist isLongshotEnabled()Z
    .locals 6

    .line 414
    const-string v0, "LongshotDump"

    const/4 v1, 0x1

    .line 415
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 417
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isLongshotEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 422
    :goto_0
    goto :goto_1

    .line 420
    :catch_0
    move-exception v2

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 418
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 419
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLongshotEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 424
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist isLongshotMode()Z
    .locals 6

    .line 273
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 274
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 276
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isLongshotMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 281
    :goto_0
    goto :goto_1

    .line 279
    :catch_0
    move-exception v2

    .line 280
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 278
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLongshotMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 283
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist isScreenshotEdit()Z
    .locals 6

    .line 206
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 207
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 209
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isScreenshotEdit()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 214
    :goto_0
    goto :goto_1

    .line 212
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 211
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenshotEdit : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 216
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist isScreenshotEnabled()Z
    .locals 6

    .line 374
    const-string v0, "LongshotDump"

    const/4 v1, 0x1

    .line 375
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 377
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isScreenshotEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 382
    :goto_0
    goto :goto_1

    .line 380
    :catch_0
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 378
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 379
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenshotEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 384
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist isScreenshotMode()Z
    .locals 6

    .line 185
    const-string v0, "LongshotDump"

    const/4 v1, 0x0

    .line 186
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 188
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isScreenshotMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 190
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenshotMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 195
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist isScreenshotSupported()Z
    .locals 6

    .line 334
    const-string v0, "LongshotDump"

    const/4 v1, 0x1

    .line 335
    .local v1, "result":Z
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v2, :cond_0

    .line 337
    :try_start_0
    invoke-interface {v2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->isScreenshotSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 342
    :goto_0
    goto :goto_1

    .line 340
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 338
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 339
    .local v2, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenshotSupported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 344
    :cond_0
    :goto_1
    return v1
.end method

.method public whitelist notifyOverScroll(Lcom/oplus/screenshot/OplusLongshotEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/oplus/screenshot/OplusLongshotEvent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_0

    .line 436
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/screenshot/IOplusScreenshotManager;->notifyOverScroll(Lcom/oplus/screenshot/OplusLongshotEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyOverScroll : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 443
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist reportLongshotDumpResult(Lcom/oplus/screenshot/OplusLongshotDump;)V
    .locals 5
    .param p1, "result"    # Lcom/oplus/screenshot/OplusLongshotDump;

    .line 315
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_0

    .line 317
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/screenshot/IOplusScreenshotManager;->reportLongshotDumpResult(Lcom/oplus/screenshot/OplusLongshotDump;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 319
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportLongshotDumpResult : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 324
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setFixedRotationLaunchingAppUnchecked(ZI)V
    .locals 0
    .param p1, "isLaunching"    # Z
    .param p2, "rotation"    # I

    .line 452
    iput-boolean p1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mIsLaunching:Z

    .line 453
    iput p2, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mRotation:I

    .line 454
    return-void
.end method

.method public whitelist setLongshotEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 395
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/screenshot/IOplusScreenshotManager;->setLongshotEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 399
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLongshotEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 404
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist setScreenshotEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .line 355
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/screenshot/IOplusScreenshotManager;->setScreenshotEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    .line 361
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setScreenshotEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 364
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist stopLongshot()V
    .locals 5

    .line 254
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_0

    .line 256
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/screenshot/IOplusScreenshotManager;->stopLongshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopLongshot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist takeLongshot(ZZ)V
    .locals 5
    .param p1, "statusBarVisible"    # Z
    .param p2, "navBarVisible"    # Z

    .line 228
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_1

    .line 233
    :try_start_0
    sget-object v1, Lcom/oplus/screenshot/OplusScreenshotManager;->sIOplusDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    if-nez v1, :cond_0

    .line 234
    invoke-static {}, Landroid/common/OplusFrameworkFactory;->getInstance()Landroid/common/OplusFrameworkFactory;

    move-result-object v1

    sget-object v2, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->DEFAULT:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 235
    invoke-virtual {v1, v2, v3}, Landroid/common/OplusFrameworkFactory;->getFeature(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v1

    check-cast v1, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    sput-object v1, Lcom/oplus/screenshot/OplusScreenshotManager;->sIOplusDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    .line 237
    :cond_0
    sget-object v1, Lcom/oplus/screenshot/OplusScreenshotManager;->sIOplusDynamicVsyncFeature:Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;

    const/16 v2, 0x7530

    const-string v3, "Longshot"

    invoke-interface {v1, v2, v3}, Lcom/oplus/dynamicvsync/IOplusDynamicVsyncFeature;->doAnimation(ILjava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    invoke-interface {v1, p1, p2}, Lcom/oplus/screenshot/IOplusScreenshotManager;->takeLongshot(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 241
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeLongshot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 246
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist takeScreenshot(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 166
    const-string v0, "LongshotDump"

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScreenshotManager;->mService:Lcom/oplus/screenshot/IOplusScreenshotManager;

    if-eqz v1, :cond_0

    .line 168
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/screenshot/IOplusScreenshotManager;->takeScreenshot(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    sget-boolean v2, Lcom/oplus/screenshot/OplusScreenshotManager;->DBG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "takeScreenshot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/oplus/util/OplusLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
