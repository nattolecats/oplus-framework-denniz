.class public Lcom/oplus/orms/OplusResourceManager;
.super Ljava/lang/Object;
.source "OplusResourceManager.java"

# interfaces
.implements Lcom/oplus/orms/IOplusResourceManager;


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist STACK_BEGIN:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "Orms_Manager"

.field private static final blacklist sDurationOffSet:I = 0x64

.field private static final blacklist sInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/orms/OplusResourceManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sMaxVelocity:I = 0x5dc0

.field private static final blacklist sMinDiffX:I = 0x96

.field private static final blacklist sMinVelocity:I = 0x96

.field private static final blacklist sMoveSlop:I = 0x28

.field private static final blacklist sTimeOutZero:I = 0x0

.field private static final blacklist sUnits:I = 0x3e8


# instance fields
.field private blacklist mAccessPermission:I

.field private blacklist mIdentity:Ljava/lang/String;

.field private blacklist mRequest:J

.field private blacklist mStartX:I

.field private blacklist mStartY:I

.field private blacklist mVelocityTracker:Landroid/view/VelocityTracker;

.field private blacklist mVerifyStackFailed:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/orms/OplusResourceManager;->sInstanceCache:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/orms/OplusResourceManager;->mVerifyStackFailed:Z

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/orms/OplusResourceManager;->mAccessPermission:I

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Lcom/oplus/orms/OplusResourceManager;->verifyClazzStackTrace(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack trace verify failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Orms_Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/orms/OplusResourceManager;->mVerifyStackFailed:Z

    .line 57
    :cond_0
    return-void
.end method

.method public static declared-synchronized whitelist getInstance(Ljava/lang/Class;)Lcom/oplus/orms/OplusResourceManager;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    const-class v0, Lcom/oplus/orms/OplusResourceManager;

    monitor-enter v0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Lcom/oplus/orms/OplusResourceManager;->sInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/orms/OplusResourceManager;

    .line 70
    .local v3, "instance":Lcom/oplus/orms/OplusResourceManager;
    if-nez v3, :cond_0

    .line 71
    new-instance v4, Lcom/oplus/orms/OplusResourceManager;

    invoke-direct {v4, p0}, Lcom/oplus/orms/OplusResourceManager;-><init>(Ljava/lang/Class;)V

    move-object v3, v4

    .line 72
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit v0

    return-object v3

    .line 67
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "instance":Lcom/oplus/orms/OplusResourceManager;
    .end local p0    # "clazz":Ljava/lang/Class;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist isAccessPermitted()Z
    .locals 4

    .line 90
    iget-boolean v0, p0, Lcom/oplus/orms/OplusResourceManager;->mVerifyStackFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 91
    return v1

    .line 93
    :cond_0
    iget v0, p0, Lcom/oplus/orms/OplusResourceManager;->mAccessPermission:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 95
    iget-object v0, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-static {v0}, Lcom/oplus/orms/OplusResourceManagerInner;->checkAccessPermission(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oplus/orms/OplusResourceManager;->mAccessPermission:I

    .line 96
    const-string v3, "Orms_Manager"

    if-ne v0, v2, :cond_1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orms service is not available now, need check again! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_1
    if-nez v0, :cond_2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no access permission to orms!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_2
    :goto_0
    iget v0, p0, Lcom/oplus/orms/OplusResourceManager;->mAccessPermission:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private static blacklist verifyClazzStackTrace(Ljava/lang/Class;)Z
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "flag":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 80
    .local v1, "stack":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x4

    .local v2, "index":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 81
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

    .line 82
    const/4 v0, 0x1

    .line 83
    goto :goto_1

    .line 80
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "index":I
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist ormsClrCtrlData()V
    .locals 2

    .line 202
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    return-void

    .line 209
    :cond_0
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/orms/OplusResourceManagerInner;->clrCtrlData(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public whitelist ormsClrSceneAction(J)V
    .locals 2
    .param p1, "request"    # J

    .line 136
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void

    .line 139
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 140
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/orms/OplusResourceManagerInner;->clrSceneAction(Ljava/lang/String;J)V

    .line 146
    return-void
.end method

.method public whitelist ormsGetModeStatus(I)I
    .locals 2
    .param p1, "mode"    # I

    .line 221
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, -0x1

    return v0

    .line 227
    :cond_0
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/orms/OplusResourceManagerInner;->getModeStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist ormsGetPerfLimit()[[[J
    .locals 2

    .line 239
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oplus/orms/OplusResourceManagerInner;->getPerfLimit(Ljava/lang/String;)[[[J

    move-result-object v0

    return-object v0
.end method

.method public whitelist ormsSendFling(Landroid/view/MotionEvent;I)V
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "duration"    # I

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, "diffX":I
    const/4 v1, 0x0

    .line 260
    .local v1, "diffY":I
    const/4 v2, 0x0

    .line 261
    .local v2, "actionMasked":I
    const/4 v3, 0x0

    .line 262
    .local v3, "pointerIndex":I
    const/4 v4, 0x0

    .line 264
    .local v4, "pointerId":I
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    move v2, v5

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    move v3, v5

    .line 266
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 270
    nop

    .line 272
    const-string v5, ""

    const-wide/16 v6, -0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 336
    :pswitch_0
    iget-wide v8, p0, Lcom/oplus/orms/OplusResourceManager;->mRequest:J

    cmp-long v5, v8, v6

    if-eqz v5, :cond_5

    .line 337
    invoke-virtual {p0, v8, v9}, Lcom/oplus/orms/OplusResourceManager;->ormsClrSceneAction(J)V

    goto/16 :goto_1

    .line 291
    :pswitch_1
    iget-object v8, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 293
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 294
    iget-wide v8, p0, Lcom/oplus/orms/OplusResourceManager;->mRequest:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_5

    .line 295
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/oplus/orms/OplusResourceManager;->mStartX:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 296
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/oplus/orms/OplusResourceManager;->mStartY:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 297
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_5

    .line 298
    const/4 v6, 0x0

    if-le v0, v1, :cond_0

    .line 299
    new-instance v7, Lcom/oplus/orms/info/OrmsSaParam;

    const-string v8, "ORMS_ACTION_SWIPE_SLOW_H"

    invoke-direct {v7, v5, v8, v6}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/oplus/orms/OplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oplus/orms/OplusResourceManager;->mRequest:J

    goto/16 :goto_1

    .line 301
    :cond_0
    new-instance v7, Lcom/oplus/orms/info/OrmsSaParam;

    const-string v8, "ORMS_ACTION_SWIPE_SLOW_V"

    invoke-direct {v7, v5, v8, v6}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v7}, Lcom/oplus/orms/OplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oplus/orms/OplusResourceManager;->mRequest:J

    goto/16 :goto_1

    .line 308
    :pswitch_2
    iget-object v8, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_5

    .line 310
    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 312
    iget-object v8, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    const v10, 0x46bb8000    # 24000.0f

    invoke-virtual {v8, v9, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 313
    iget-object v8, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, v4}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 314
    .local v8, "xVelcity":F
    iget-object v9, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 315
    .local v9, "yVelcity":F
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    .line 316
    .local v10, "initialVelocity":I
    iget-wide v11, p0, Lcom/oplus/orms/OplusResourceManager;->mRequest:J

    cmp-long v6, v11, v6

    if-eqz v6, :cond_1

    .line 317
    invoke-virtual {p0, v11, v12}, Lcom/oplus/orms/OplusResourceManager;->ormsClrSceneAction(J)V

    .line 319
    :cond_1
    const/16 v6, 0x96

    if-le v10, v6, :cond_3

    .line 321
    int-to-float v6, p2

    const/high16 v7, 0x3f800000    # 1.0f

    int-to-float v11, v10

    mul-float/2addr v11, v7

    const/high16 v7, 0x43160000    # 150.0f

    div-float/2addr v11, v7

    mul-float/2addr v6, v11

    float-to-int p2, v6

    .line 323
    cmpl-float v6, v8, v9

    if-lez v6, :cond_2

    .line 325
    new-instance v6, Lcom/oplus/orms/info/OrmsSaParam;

    const-string v7, "ORMS_ACTION_SWIPE_H"

    invoke-direct {v6, v5, v7, p2}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/oplus/orms/OplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    goto :goto_1

    .line 328
    :cond_2
    new-instance v6, Lcom/oplus/orms/info/OrmsSaParam;

    const-string v7, "ORMS_ACTION_SWIPE_V"

    invoke-direct {v6, v5, v7, p2}, Lcom/oplus/orms/info/OrmsSaParam;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v6}, Lcom/oplus/orms/OplusResourceManager;->ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J

    .line 330
    goto :goto_1

    .line 332
    .end local v8    # "xVelcity":F
    .end local v9    # "yVelcity":F
    .end local v10    # "initialVelocity":I
    :cond_3
    goto :goto_1

    .line 274
    :pswitch_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oplus/orms/OplusResourceManager;->mStartX:I

    .line 275
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/oplus/orms/OplusResourceManager;->mStartY:I

    .line 276
    iget-object v5, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_4

    .line 278
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 283
    :goto_0
    iget-object v5, p0, Lcom/oplus/orms/OplusResourceManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_5

    .line 285
    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 286
    iput-wide v6, p0, Lcom/oplus/orms/OplusResourceManager;->mRequest:J

    .line 343
    :cond_5
    :goto_1
    return-void

    .line 267
    :catch_0
    move-exception v5

    .line 268
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "Orms_Manager"

    const-string v7, "java.lang.IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist ormsSetCtrlData(Lcom/oplus/orms/info/OrmsCtrlDataParam;)V
    .locals 2
    .param p1, "ormsCtrlDataParam"    # Lcom/oplus/orms/info/OrmsCtrlDataParam;

    .line 179
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 183
    :cond_0
    if-nez p1, :cond_1

    .line 184
    const-string v0, "Orms_Manager"

    const-string v1, "ormsCtrlData param is illegal! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 190
    :cond_1
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/orms/OplusResourceManagerInner;->setCtrlData(Ljava/lang/String;Lcom/oplus/orms/info/OrmsCtrlDataParam;)V

    .line 191
    return-void
.end method

.method public whitelist ormsSetNotification(Lcom/oplus/orms/info/OrmsNotifyParam;)V
    .locals 2
    .param p1, "ormsNotifyParam"    # Lcom/oplus/orms/info/OrmsNotifyParam;

    .line 157
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/oplus/orms/info/OrmsNotifyParam;->param4:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/orms/OplusResourceManagerInner;->setNotification(Ljava/lang/String;Lcom/oplus/orms/info/OrmsNotifyParam;)V

    .line 168
    return-void

    .line 161
    :cond_2
    :goto_0
    const-string v0, "Orms_Manager"

    const-string v1, "notification param is illegal! "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public whitelist ormsSetSceneAction(Lcom/oplus/orms/info/OrmsSaParam;)J
    .locals 4
    .param p1, "ormsSaParam"    # Lcom/oplus/orms/info/OrmsSaParam;

    .line 114
    invoke-direct {p0}, Lcom/oplus/orms/OplusResourceManager;->isAccessPermitted()Z

    move-result v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    .line 115
    return-wide v1

    .line 117
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/oplus/orms/info/OrmsSaParam;->scene:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oplus/orms/info/OrmsSaParam;->action:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/oplus/orms/OplusResourceManagerInner;->getInstance()Lcom/oplus/orms/OplusResourceManagerInner;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/orms/OplusResourceManager;->mIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/oplus/orms/OplusResourceManagerInner;->setSceneAction(Ljava/lang/String;Lcom/oplus/orms/info/OrmsSaParam;)J

    move-result-wide v0

    return-wide v0

    .line 118
    :cond_2
    :goto_0
    const-string v0, "Orms_Manager"

    const-string v3, "sceneAction is illegal! "

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-wide v1
.end method
