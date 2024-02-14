.class public Lcom/oplus/miragewindow/OplusMirageWindowManager;
.super Ljava/lang/Object;
.source "OplusMirageWindowManager.java"


# static fields
.field public static final whitelist DISPLAY_ID:I = 0x7e4

.field public static final whitelist DISPLAY_NAME:Ljava/lang/String; = "Mirage_display"

.field public static final whitelist FLAG_MASK:I = 0xffff

.field public static final whitelist FLAG_POWER_SAVE:I = 0x1

.field public static final whitelist FLAG_PRIVACY_PROTECTION:I = 0x10

.field public static final whitelist IS_DEFAULT:Ljava/lang/String; = "is_default"

.field public static final whitelist MODE_MASK:I = -0x10000

.field public static final whitelist MODE_MIRROR_CAST:I = 0x1000000

.field public static final whitelist MODE_SINGLE_APP_CAST:I = 0x2000000

.field public static final whitelist Mirage_CORNER_RADIUS:F = 30.0f

.field private static final blacklist TAG:Ljava/lang/String; = "OplusMirageWindowManager"

.field private static volatile blacklist sInstance:Lcom/oplus/miragewindow/OplusMirageWindowManager;


# instance fields
.field private blacklist mAms:Landroid/app/OplusActivityManager;

.field private blacklist mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;


# direct methods
.method private constructor blacklist <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    .line 69
    :try_start_0
    new-instance v1, Lcom/oplus/miragewindow/OplusMirageWindowManager$1;

    invoke-direct {v1, p0}, Lcom/oplus/miragewindow/OplusMirageWindowManager$1;-><init>(Lcom/oplus/miragewindow/OplusMirageWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/app/OplusActivityManager;->createMirageWindowSession(Lcom/oplus/miragewindow/IOplusMirageSessionCallback;)Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "create session remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public static whitelist getInstance()Lcom/oplus/miragewindow/OplusMirageWindowManager;
    .locals 2

    .line 56
    sget-object v0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->sInstance:Lcom/oplus/miragewindow/OplusMirageWindowManager;

    if-nez v0, :cond_1

    .line 57
    const-class v0, Lcom/oplus/miragewindow/OplusMirageWindowManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/oplus/miragewindow/OplusMirageWindowManager;->sInstance:Lcom/oplus/miragewindow/OplusMirageWindowManager;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/oplus/miragewindow/OplusMirageWindowManager;

    invoke-direct {v1}, Lcom/oplus/miragewindow/OplusMirageWindowManager;-><init>()V

    sput-object v1, Lcom/oplus/miragewindow/OplusMirageWindowManager;->sInstance:Lcom/oplus/miragewindow/OplusMirageWindowManager;

    .line 61
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 63
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->sInstance:Lcom/oplus/miragewindow/OplusMirageWindowManager;

    return-object v0
.end method


# virtual methods
.method public whitelist addCastScreenState(Lcom/oplus/miragewindow/OplusCastScreenState;)V
    .locals 4
    .param p1, "state"    # Lcom/oplus/miragewindow/OplusCastScreenState;

    .line 407
    const-class v0, Lcom/oplus/miragewindow/OplusMirageWindowManager;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 412
    :cond_0
    invoke-interface {v1, p1}, Lcom/oplus/miragewindow/IOplusMirageWindowSession;->addCastScreenState(Lcom/oplus/miragewindow/OplusCastScreenState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    goto :goto_1

    .line 410
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 416
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 413
    :catch_0
    move-exception v1

    .line 414
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMirageWindowManager"

    const-string v3, "addCastScreenState remoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist createMirageDisplay(Landroid/view/Surface;)I
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->createMirageDisplay(Landroid/view/Surface;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to createMirageDisplay: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 252
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist expandToFullScreen()V
    .locals 3

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->expandToFullScreen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "expandTofullscreen remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 225
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist feedbackUserSelection(IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "eventId"    # I
    .param p2, "selection"    # I
    .param p3, "extension"    # Landroid/os/Bundle;

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/OplusActivityManager;->feedbackUserSelection(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "feedbackUserSelection remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 360
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist getCastScreenStateList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/miragewindow/OplusCastScreenState;",
            ">;"
        }
    .end annotation

    .line 433
    const-class v0, Lcom/oplus/miragewindow/OplusMirageWindowManager;

    monitor-enter v0

    .line 435
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 436
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    .line 438
    :cond_0
    :try_start_2
    invoke-interface {v2}, Lcom/oplus/miragewindow/IOplusMirageWindowSession;->getCastScreenStateList()Ljava/util/List;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object v1

    .line 442
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "OplusMirageWindowManager"

    const-string v4, "getCastScreenStateList remoteException "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    monitor-exit v0

    .line 443
    return-object v1

    .line 442
    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public whitelist getDisplayIdForPackageName(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getGetDisplayIdForPackageName(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to getDisplayIdForPackageName: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 496
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getMirageDisplayCastMode(I)I
    .locals 3
    .param p1, "displayId"    # I

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->getMirageDisplayCastMode(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "getMirageDisplayCastMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;
    .locals 3

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getMirageWindowInfo()Lcom/oplus/miragewindow/OplusMirageWindowInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "getMirageWindowInfo remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/oplus/miragewindow/OplusMirageWindowInfo;

    invoke-direct {v0}, Lcom/oplus/miragewindow/OplusMirageWindowInfo;-><init>()V

    return-object v0
.end method

.method public whitelist isMirageWindowShow()Z
    .locals 3

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->isMirageWindowShow()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "isMirageWindowShow remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSupportMirageWindowMode()Z
    .locals 3

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->isSupportMirageWindowMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "isSupportMirageWindowMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist rebindDisplayIfNeeded(II)Z
    .locals 3
    .param p1, "castDisplayId"    # I
    .param p2, "mirageDisplayId"    # I

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->rebindDisplayIfNeeded(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 502
    :catch_0
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to rebindDisplayIfNeeded: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;

    .line 448
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    invoke-interface {v1, p1}, Lcom/oplus/miragewindow/IOplusMirageWindowSession;->registerCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 449
    :cond_1
    :goto_0
    return v0

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMirageWindowManager"

    const-string v3, "Failed to registerCastScreenStateObserver: remoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 456
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->registerMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to registerMirageDisplayObserver: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 327
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->registerMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to registerMirageWindowObserver: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 295
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist removeCastScreenState()V
    .locals 4

    .line 420
    const-class v0, Lcom/oplus/miragewindow/OplusMirageWindowManager;

    monitor-enter v0

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 423
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 425
    :cond_0
    :try_start_2
    invoke-interface {v1}, Lcom/oplus/miragewindow/IOplusMirageWindowSession;->removeCastScreenState()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    goto :goto_0

    .line 429
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 426
    :catch_0
    move-exception v1

    .line 427
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "OplusMirageWindowManager"

    const-string v3, "removeCastScreenState remoteException "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 430
    return-void

    .line 429
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public whitelist setMirageDisplayId(I)V
    .locals 3
    .param p1, "id"    # I

    .line 479
    const-string v0, "OplusMirageWindowManager"

    :try_start_0
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    if-nez v1, :cond_0

    .line 480
    return-void

    .line 482
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMirageDisplayId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    invoke-interface {v1, p1}, Lcom/oplus/miragewindow/IOplusMirageWindowSession;->setMirageDisplayId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    goto :goto_0

    .line 484
    :catch_0
    move-exception v1

    .line 485
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "setMirageDisplayId remoteException "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setMirageDisplaySurfaceById(ILandroid/view/Surface;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->setMirageDisplaySurfaceById(ILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "setMirageDisplaySurfaceById remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "surface"    # Landroid/view/Surface;

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->setMirageDisplaySurfaceByMode(ILandroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "setMirageDisplaySurfaceByMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 193
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist setMirageWindowSilent(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->setMirageWindowSilent(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "setMirageWindowSilent remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 238
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->startMirageWindowMode(Landroid/content/Intent;Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "startMirageWindowMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 118
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist startMirageWindowMode(Landroid/content/ComponentName;IILandroid/os/Bundle;)V
    .locals 3
    .param p1, "cpnName"    # Landroid/content/ComponentName;
    .param p2, "taskId"    # I
    .param p3, "mode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityManager;->startMirageWindowMode(Landroid/content/ComponentName;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "startMirageWindowMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist stopMirageWindowMode()V
    .locals 3

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->stopMirageWindowMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "stopMirageWindowMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist stopMirageWindowMode(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->stopMirageWindowMode(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "stopMirageWindowMode remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist unregisterCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z
    .locals 4
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;

    .line 466
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mSession:Lcom/oplus/miragewindow/IOplusMirageWindowSession;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    invoke-interface {v1, p1}, Lcom/oplus/miragewindow/IOplusMirageWindowSession;->unregisterCastScreenStateObserver(Lcom/oplus/miragewindow/IOplusCastScreenStateObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 467
    :cond_1
    :goto_0
    return v0

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusMirageWindowManager"

    const-string v3, "Failed to unregisterCastScreenStateObserver: remoteException"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 474
    .end local v1    # "e":Landroid/os/RemoteException;
    return v0
.end method

.method public whitelist unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->unregisterMirageDisplayObserver(Lcom/oplus/miragewindow/IOplusMirageDisplayObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to unregisterMirageDisplayObserver: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/miragewindow/IOplusMirageWindowObserver;

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->unregisterMirageWindowObserver(Lcom/oplus/miragewindow/IOplusMirageWindowObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "Failed to unregisterMirageWindowObserver: remoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 310
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z
    .locals 3
    .param p1, "list"    # Ljava/lang/String;

    .line 398
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->updateCarModeMultiLaunchWhiteList(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "updateCarModeMultiLaunchWhiteList default remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updateMirageWindowCastFlag(I)Z
    .locals 1
    .param p1, "castFlag"    # I

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public whitelist updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "castFlag"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "updateMirageWindowCastFlag remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 373
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updatePrivacyProtectionList(Ljava/util/List;Z)Z
    .locals 3
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 378
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/OplusActivityManager;->updatePrivacyProtectionList(Ljava/util/List;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "updatePrivacyProtectionList remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 383
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist updatePrivacyProtectionList(Ljava/util/List;ZZLandroid/os/Bundle;)Z
    .locals 3
    .param p2, "append"    # Z
    .param p3, "isDefault"    # Z
    .param p4, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .line 388
    .local p1, "name":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/oplus/miragewindow/OplusMirageWindowManager;->mAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/OplusActivityManager;->updatePrivacyProtectionList(Ljava/util/List;ZZLandroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusMirageWindowManager"

    const-string v2, "updatePrivacyProtectionList default remoteException "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 393
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
