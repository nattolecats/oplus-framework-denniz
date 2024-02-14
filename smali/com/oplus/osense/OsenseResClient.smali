.class public Lcom/oplus/osense/OsenseResClient;
.super Ljava/lang/Object;
.source "OsenseResClient.java"


# static fields
.field private static blacklist DEBUG_OSENSE:Z = false

.field private static final blacklist STACK_BEGIN:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist sDurationOffSet:I = 0x64

.field private static final blacklist sMaxVelocity:I = 0x5dc0

.field private static final blacklist sMinDiffX:I = 0x96

.field private static final blacklist sMinVelocity:I = 0x96

.field private static final blacklist sMoveSlop:I = 0x28

.field private static blacklist sOsenseResClientMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/osense/OsenseResClient;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sSwResManager:Lcom/oplus/osense/OsenseResClient; = null

.field private static final blacklist sTimeOutZero:I = 0x0

.field private static final blacklist sUnits:I = 0x3e8


# instance fields
.field private blacklist mIdentity:Ljava/lang/String;

.field private blacklist mRequest:J

.field private blacklist mStartX:I

.field private blacklist mStartY:I

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist mVerifyStackFailed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/oplus/osense/OsenseResClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/osense/OsenseResClient;->sOsenseResClientMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/Class;)V
    .locals 3
    .param p1, "cls"    # Ljava/lang/Class;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/osense/OsenseResClient;->mVerifyStackFailed:Z

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/oplus/osense/OsenseResClient;->verifyClazzStackTrace(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stack trace verify failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/osense/OsenseResClient;->mVerifyStackFailed:Z

    .line 62
    :cond_0
    return-void
.end method

.method public static whitelist get(Ljava/lang/Class;)Lcom/oplus/osense/OsenseResClient;
    .locals 4
    .param p0, "cls"    # Ljava/lang/Class;

    .line 81
    if-nez p0, :cond_0

    .line 82
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    const-string v1, "the parameter class is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 87
    .local v1, "resClient":Lcom/oplus/osense/OsenseResClient;
    sget-object v2, Lcom/oplus/osense/OsenseResClient;->sOsenseResClientMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 88
    :try_start_0
    sget-object v3, Lcom/oplus/osense/OsenseResClient;->sOsenseResClientMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/osense/OsenseResClient;

    move-object v1, v3

    .line 89
    if-nez v1, :cond_1

    .line 90
    new-instance v3, Lcom/oplus/osense/OsenseResClient;

    invoke-direct {v3, p0}, Lcom/oplus/osense/OsenseResClient;-><init>(Ljava/lang/Class;)V

    move-object v1, v3

    .line 91
    sget-object v3, Lcom/oplus/osense/OsenseResClient;->sOsenseResClientMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    monitor-exit v2

    .line 94
    return-object v1

    .line 93
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private blacklist isAccessPermitted()Z
    .locals 3

    .line 110
    iget-boolean v0, p0, Lcom/oplus/osense/OsenseResClient;->mVerifyStackFailed:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has no access permission!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist verifyClazzStackTrace(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "flag":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 100
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x4

    .local v2, "index":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 101
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 103
    goto :goto_1

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v2    # "index":I
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist osenseClrCtrlData()V
    .locals 3

    .line 222
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_1

    .line 226
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseClrCtrlData by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_1
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResManager;->clrCtrlData(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public whitelist osenseClrSceneAction(J)V
    .locals 3
    .param p1, "handle"    # J

    .line 156
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 160
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    const-string v1, "osenseClrSceneAction: handle is illegal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void

    .line 163
    :cond_1
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_2

    .line 164
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseClrSceneAction: handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/osense/OsenseResManager;->clrSceneAction(Ljava/lang/String;J)V

    .line 167
    return-void
.end method

.method public whitelist osenseGetModeStatus(I)I
    .locals 3
    .param p1, "mode"    # I

    .line 240
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    const/4 v0, -0x1

    return v0

    .line 243
    :cond_0
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_1

    .line 244
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseGetModeStatus: identity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/osense/OsenseResManager;->getModeStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist osenseGetPerfLimit()[[[J
    .locals 3

    .line 258
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_0
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_1

    .line 262
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseGetPerfLimit: identity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_1
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/osense/OsenseResManager;->getPerfLimit(Ljava/lang/String;)[[[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist osenseSendFling(Landroid/view/MotionEvent;I)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "diffX":I
    const/4 v1, 0x0

    .line 279
    .local v1, "diffY":I
    const/4 v2, 0x0

    .line 280
    .local v2, "actionMasked":I
    const/4 v3, 0x0

    .line 281
    .local v3, "pointerIndex":I
    const/4 v4, 0x0

    .line 284
    .local v4, "pointerId":I
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v2, v5

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v3, v5

    .line 286
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 290
    nop

    .line 292
    const-string v5, ""

    const-wide/16 v6, -0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 361
    :pswitch_0
    iget-wide v8, p0, Lcom/oplus/osense/OsenseResClient;->mRequest:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_5

    .line 362
    invoke-virtual {p0, v8, v9}, Lcom/oplus/osense/OsenseResClient;->osenseClrSceneAction(J)V

    goto/16 :goto_1

    .line 312
    :pswitch_1
    iget-object v8, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 314
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 315
    iget-wide v8, p0, Lcom/oplus/osense/OsenseResClient;->mRequest:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_5

    .line 316
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/oplus/osense/OsenseResClient;->mStartX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 317
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/oplus/osense/OsenseResClient;->mStartY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 318
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_5

    .line 319
    const/4 v6, 0x0

    if-le v0, v1, :cond_0

    .line 320
    new-instance v7, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v8, "OSENSE_ACTION_SWIPE_SLOW_H"

    invoke-direct {v7, v5, v8, v6}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oplus/osense/OsenseResClient;->mRequest:J

    goto/16 :goto_1

    .line 322
    :cond_0
    new-instance v7, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v8, "OSENSE_ACTION_SWIPE_SLOW_V"

    invoke-direct {v7, v5, v8, v6}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oplus/osense/OsenseResClient;->mRequest:J

    goto/16 :goto_1

    .line 330
    :pswitch_2
    iget-object v8, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 332
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 334
    iget-object v8, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    const v10, 0x46bb8000    # 24000.0f

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 336
    iget-object v8, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 337
    .local v8, "xVelcity":F
    iget-object v9, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 338
    .local v9, "yVelcity":F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    .line 339
    .local v10, "initialVelocity":I
    iget-wide v11, p0, Lcom/oplus/osense/OsenseResClient;->mRequest:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_1

    .line 340
    invoke-virtual {p0, v11, v12}, Lcom/oplus/osense/OsenseResClient;->osenseClrSceneAction(J)V

    .line 342
    :cond_1
    const/16 v6, 0x96

    if-le v10, v6, :cond_3

    .line 344
    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v11, v10

    mul-float/2addr v11, v7

    const/high16 v7, 0x43160000    # 150.0f

    div-float/2addr v11, v7

    mul-float/2addr v6, v11

    float-to-int p2, v6

    .line 347
    cmpl-float v6, v8, v9

    if-lez v6, :cond_2

    .line 349
    new-instance v6, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v7, "OSENSE_ACTION_SWIPE_H"

    invoke-direct {v6, v5, v7, p2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    goto :goto_1

    .line 352
    :cond_2
    new-instance v6, Lcom/oplus/osense/info/OsenseSaRequest;

    const-string v7, "OSENSE_ACTION_SWIPE_V"

    invoke-direct {v6, v5, v7, p2}, Lcom/oplus/osense/info/OsenseSaRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/oplus/osense/OsenseResClient;->osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J

    .line 354
    goto :goto_1

    .line 356
    .end local v8    # "xVelcity":F
    .end local v9    # "yVelcity":F
    .end local v10    # "initialVelocity":I
    :cond_3
    goto :goto_1

    .line 294
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oplus/osense/OsenseResClient;->mStartX:I

    .line 295
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oplus/osense/OsenseResClient;->mStartY:I

    .line 296
    iget-object v5, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_4

    .line 298
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 301
    :cond_4
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 303
    :goto_0
    iget-object v5, p0, Lcom/oplus/osense/OsenseResClient;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_5

    .line 305
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 306
    iput-wide v6, p0, Lcom/oplus/osense/OsenseResClient;->mRequest:J

    .line 369
    :cond_5
    :goto_1
    return-void

    .line 287
    :catch_0
    move-exception v5

    .line 288
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    const-string v7, "java.lang.IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist osenseSetCtrlData(Lcom/oplus/osense/info/OsenseCtrlDataRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/oplus/osense/info/OsenseCtrlDataRequest;

    .line 200
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    if-nez p1, :cond_1

    .line 204
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    const-string v1, "osenseSetCtrlData: request is illegal!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 207
    :cond_1
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_2

    .line 208
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseSetCtrlData by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_2
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/osense/OsenseResManager;->setCtrlData(Ljava/lang/String;Lcom/oplus/osense/info/OsenseCtrlDataRequest;)V

    .line 211
    return-void
.end method

.method public whitelist osenseSetNotification(Lcom/oplus/osense/info/OsenseNotifyRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/oplus/osense/info/OsenseNotifyRequest;

    .line 178
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/osense/info/OsenseNotifyRequest;->getParam4()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_2

    .line 186
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseSetNotification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/osense/info/OsenseNotifyRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_2
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/osense/OsenseResManager;->setNotification(Ljava/lang/String;Lcom/oplus/osense/info/OsenseNotifyRequest;)V

    .line 189
    return-void

    .line 182
    :cond_3
    :goto_0
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    const-string v1, "osenseSetNotification: request is illegal!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public whitelist osenseSetSceneAction(Lcom/oplus/osense/info/OsenseSaRequest;)J
    .locals 4
    .param p1, "request"    # Lcom/oplus/osense/info/OsenseSaRequest;

    .line 134
    invoke-direct {p0}, Lcom/oplus/osense/OsenseResClient;->isAccessPermitted()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 135
    return-wide v1

    .line 137
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/oplus/osense/info/OsenseSaRequest;->getScene()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/oplus/osense/info/OsenseSaRequest;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    sget-boolean v0, Lcom/oplus/osense/OsenseResClient;->DEBUG_OSENSE:Z

    if-eqz v0, :cond_2

    .line 142
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "osenseSetSceneAction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/osense/info/OsenseSaRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    invoke-static {}, Lcom/oplus/osense/OsenseResManager;->getInstance()Lcom/oplus/osense/OsenseResManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/osense/OsenseResClient;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/osense/OsenseResManager;->setSceneAction(Ljava/lang/String;Lcom/oplus/osense/info/OsenseSaRequest;)J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_3
    :goto_0
    sget-object v0, Lcom/oplus/osense/OsenseResClient;->TAG:Ljava/lang/String;

    const-string v3, "osenseSetSceneAction...request or parameters is null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-wide v1
.end method
