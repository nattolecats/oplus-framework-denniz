.class public Lcom/oplus/compactwindow/OplusCompactWindowManager;
.super Ljava/lang/Object;
.source "OplusCompactWindowManager.java"


# static fields
.field public static final whitelist DEFAULT_COMPACT_ROTATION:I = -0x1

.field private static final blacklist FEATURE_OPLUS_EMBEDDING:Z

.field public static final blacklist METHOD_NOTIFY_SUPPORT_EMBEDDING:Ljava/lang/String; = "notifySupportEmbedding"

.field public static final whitelist OPLUS_MODE_BLOCK_DISPLAY_0:I = 0x400

.field public static final whitelist OPLUS_MODE_BLOCK_DISPLAY_180:I = 0x1000

.field public static final whitelist OPLUS_MODE_BLOCK_DISPLAY_270:I = 0x2000

.field public static final whitelist OPLUS_MODE_BLOCK_DISPLAY_90:I = 0x800

.field public static final whitelist OPLUS_MODE_BLOCK_SENSOR:I = 0x20

.field public static final blacklist OPLUS_MODE_BUYING:I = 0x8

.field public static final whitelist OPLUS_MODE_COMPACT:I = 0x4

.field public static final whitelist OPLUS_MODE_FORCE_BLOCK:I = 0x40

.field public static final whitelist OPLUS_MODE_PARALLEL:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "OplusCompactWindow"

.field public static final whitelist WINDOWING_MODE_COMPACTWINDOW:I = 0x78

.field public static final whitelist WINDOWING_MODE_UNDEFINE:I = -0x1

.field private static volatile blacklist sInstance:Lcom/oplus/compactwindow/OplusCompactWindowManager;

.field private static blacklist sNOTIFIED:Z


# instance fields
.field private blacklist mCompactModeFlag:I

.field private final blacklist mOAms:Landroid/app/OplusActivityManager;

.field private blacklist mOrganizer:Landroid/window/TaskFragmentOrganizer;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 46
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.display.oplus_activity_embedding"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->FEATURE_OPLUS_EMBEDDING:Z

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sNOTIFIED:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mCompactModeFlag:I

    .line 73
    new-instance v0, Landroid/window/TaskFragmentOrganizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/window/TaskFragmentOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOrganizer:Landroid/window/TaskFragmentOrganizer;

    .line 87
    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    .line 88
    return-void
.end method

.method public static whitelist flagToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "flag"    # I

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x2

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 481
    const-string v1, " MODE_PARALLEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    .line 484
    const-string v1, " MODE_COMPACT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_2

    .line 487
    const-string v1, " BLOCK_SENSOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_2
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_3

    .line 490
    const-string v1, " FORCE_BLOCK "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_3
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_4

    .line 493
    const-string v1, " DISPLAY_0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_4
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_5

    .line 496
    const-string v1, " DISPLAY_90 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_5
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_6

    .line 499
    const-string v1, " DISPLAY_180 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_6
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_7

    .line 502
    const-string v1, " DISPLAY_270 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist getBlockDisplayRotation(I)I
    .locals 2
    .param p0, "flag"    # I

    .line 439
    const/4 v0, -0x1

    .line 440
    .local v0, "blockDisplayRotation":I
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_0

    .line 441
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_1

    .line 442
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    .line 443
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_3

    .line 444
    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    move v0, v1

    .line 440
    return v1
.end method

.method public static whitelist getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;
    .locals 2

    .line 76
    sget-object v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sInstance:Lcom/oplus/compactwindow/OplusCompactWindowManager;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sInstance:Lcom/oplus/compactwindow/OplusCompactWindowManager;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/oplus/compactwindow/OplusCompactWindowManager;

    invoke-direct {v1}, Lcom/oplus/compactwindow/OplusCompactWindowManager;-><init>()V

    sput-object v1, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sInstance:Lcom/oplus/compactwindow/OplusCompactWindowManager;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sInstance:Lcom/oplus/compactwindow/OplusCompactWindowManager;

    return-object v0
.end method

.method public static whitelist isBlockSensor(I)Z
    .locals 1
    .param p0, "flag"    # I

    .line 472
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isForceBlock(I)Z
    .locals 1
    .param p0, "flag"    # I

    .line 476
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isModeBuying()Z
    .locals 1

    .line 464
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;

    move-result-object v0

    iget v0, v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mCompactModeFlag:I

    invoke-static {v0}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isModeBuying(I)Z

    move-result v0

    return v0
.end method

.method public static blacklist isModeBuying(I)Z
    .locals 1
    .param p0, "flag"    # I

    .line 453
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist isModeCompact(I)Z
    .locals 1
    .param p0, "flag"    # I

    .line 468
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist isModeParallel()Z
    .locals 1

    .line 458
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;

    move-result-object v0

    iget v0, v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mCompactModeFlag:I

    invoke-static {v0}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isModeParallel(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->getInstance()Lcom/oplus/compactwindow/OplusCompactWindowManager;

    move-result-object v0

    iget v0, v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mCompactModeFlag:I

    invoke-static {v0}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isModeCompact(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 458
    :goto_1
    return v0
.end method

.method public static whitelist isModeParallel(I)Z
    .locals 1
    .param p0, "flag"    # I

    .line 448
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist setBlockDisplayRotation(II)I
    .locals 0
    .param p0, "flag"    # I
    .param p1, "rotation"    # I

    .line 419
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 430
    :pswitch_0
    or-int/lit16 p0, p0, 0x2000

    .line 431
    goto :goto_0

    .line 427
    :pswitch_1
    or-int/lit16 p0, p0, 0x1000

    .line 428
    goto :goto_0

    .line 424
    :pswitch_2
    or-int/lit16 p0, p0, 0x800

    .line 425
    goto :goto_0

    .line 421
    :pswitch_3
    or-int/lit16 p0, p0, 0x400

    .line 422
    nop

    .line 435
    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist blockEmbeddingIfNeeded()Z
    .locals 5

    .line 92
    invoke-static {}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->isModeParallel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    sget-boolean v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sNOTIFIED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "notifySupportEmbedding"

    const-string v4, ""

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/oplus/compactwindow/OplusCompactWindowManager;->invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 95
    sput-boolean v1, Lcom/oplus/compactwindow/OplusCompactWindowManager;->sNOTIFIED:Z

    .line 97
    :cond_0
    return v1

    .line 99
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "param1"    # I
    .param p4, "param2"    # Z
    .param p5, "param3"    # Ljava/lang/String;
    .param p6, "object"    # Landroid/os/Bundle;

    .line 380
    const/4 v0, 0x0

    .line 382
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/app/OplusActivityManager;->callMethod(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 386
    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callMethod RemoteException, method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCompactWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 387
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist exitCompactWindow()I
    .locals 3

    .line 129
    const-string v0, "OplusCompactWindow"

    :try_start_0
    const-string v1, "exitCompactWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->exitCompactWindow()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "exitCompactWindow RemoteException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 135
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getFocusBounds(Z)Landroid/graphics/Rect;
    .locals 4
    .param p1, "isPrimary"    # Z

    .line 312
    const/4 v0, 0x0

    .line 314
    .local v0, "bounds":Landroid/graphics/Rect;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->getFocusBounds(Z)Landroid/graphics/Rect;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 315
    return-object v0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusBounds RemoteException isPrimary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCompactWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 320
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getFocusComponent(Z)Landroid/content/ComponentName;
    .locals 4
    .param p1, "isPrimary"    # Z

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "cmn":Landroid/content/ComponentName;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->getFocusComponent(Z)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 337
    return-object v0

    .line 338
    :catch_0
    move-exception v1

    .line 339
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFocusComponent RemoteException isPrimary:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCompactWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 342
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getFocusMode()I
    .locals 3

    .line 293
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getFocusMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCompactWindow"

    const-string v2, "getFocusMode RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPWAppInfo()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getPWAppInfo()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCompactWindow"

    const-string v2, "getPWAppInfo RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRealSize()Landroid/graphics/Point;
    .locals 4

    .line 355
    const/4 v0, 0x0

    .line 357
    .local v0, "point":Landroid/graphics/Point;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getRealSize()Landroid/graphics/Point;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 361
    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "OplusCompactWindow"

    const-string v3, "getRealSize RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 362
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist initmCompactModeFlag(ILjava/lang/String;)V
    .locals 0
    .param p1, "mCompactModeFlag"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 509
    iput p1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mCompactModeFlag:I

    .line 510
    iput-object p2, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mPackageName:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public whitelist invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/lang/String;
    .param p4, "object"    # Landroid/os/Bundle;

    .line 408
    const/4 v0, 0x0

    .line 410
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/app/OplusActivityManager;->invokeSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 414
    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeSync RemoteException, method:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OplusCompactWindow"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 415
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public whitelist isCurrentAppSupportCompactMode()Z
    .locals 3

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->isCurrentAppSupportCompactMode()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCompactWindow"

    const-string v2, "isCurrentAppSupportCompactMode RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 152
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist moveCompactWindowToLeft()I
    .locals 3

    .line 167
    const-string v0, "OplusCompactWindow"

    :try_start_0
    const-string v1, "moveCompactWindowToLeft"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->moveCompactWindowToLeft()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "moveCompactWindowToLeft RemoteException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 173
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist moveCompactWindowToRight()I
    .locals 3

    .line 189
    const-string v0, "OplusCompactWindow"

    :try_start_0
    const-string v1, "moveCompactWindowToRight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->moveCompactWindowToRight()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "moveCompactWindowToRight RemoteException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 195
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist onProtocolUpdated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .line 213
    const-string v0, "OplusCompactWindow"

    :try_start_0
    const-string v1, "onProtocolUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/OplusActivityManager;->onProtocolUpdated(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "onProtocolUpdated RemoteException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->registerCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCompactWindow"

    const-string v2, "registerCompactWindowObserver RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldSendConfigration(Landroid/content/res/OplusBaseConfiguration;Landroid/content/res/OplusBaseConfiguration;Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "current"    # Landroid/content/res/OplusBaseConfiguration;
    .param p2, "newconfig"    # Landroid/content/res/OplusBaseConfiguration;
    .param p3, "token"    # Landroid/os/IBinder;

    .line 515
    sget-boolean v0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->FEATURE_OPLUS_EMBEDDING:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 516
    return v1

    .line 518
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 519
    iget-object v0, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 520
    .local v0, "currentappbounds":Landroid/graphics/Rect;
    iget-object v2, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 521
    .local v2, "newappbounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 522
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 523
    iget-object v3, p2, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Landroid/content/res/OplusBaseConfiguration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 524
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 525
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOrganizer:Landroid/window/TaskFragmentOrganizer;

    invoke-virtual {v1, p3}, Landroid/window/TaskFragmentOrganizer;->isActivityEmbedded(Landroid/os/IBinder;)Z

    move-result v1

    return v1

    .line 530
    .end local v0    # "currentappbounds":Landroid/graphics/Rect;
    .end local v2    # "newappbounds":Landroid/graphics/Rect;
    :cond_1
    return v1
.end method

.method public whitelist startCompactWindow()I
    .locals 3

    .line 111
    const-string v0, "OplusCompactWindow"

    :try_start_0
    const-string v1, "startCompactWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->startCompactWindow()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 113
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "startCompactWindow RemoteException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z
    .locals 3
    .param p1, "observer"    # Lcom/oplus/compactwindow/IOplusCompactWindowObserver;

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/oplus/compactwindow/OplusCompactWindowManager;->mOAms:Landroid/app/OplusActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/OplusActivityManager;->unregisterCompactWindowObserver(Lcom/oplus/compactwindow/IOplusCompactWindowObserver;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusCompactWindow"

    const-string v2, "uregisterCompactWindowObserver RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 256
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method
