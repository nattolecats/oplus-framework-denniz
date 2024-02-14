.class public Landroid/view/OplusViewRootPerfInjector;
.super Ljava/lang/Object;
.source "OplusViewRootPerfInjector.java"

# interfaces
.implements Landroid/view/performance/IOplusViewRootPerfInjector;


# static fields
.field private static blacklist DEBUG:Z = false

.field private static final blacklist DISABLE_FORCE_RELAYOUT_SDK_LOWER_R:I = 0x2e0

.field private static final blacklist TAG:Ljava/lang/String; = "OplusViewRootPerfInjector"


# instance fields
.field private blacklist FRAME_ONT:Z

.field private blacklist mBasePackageName:Ljava/lang/String;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mDisableRelayout:Z

.field private blacklist mDoFrameIndex:I

.field private blacklist mFirstFrameScheduled:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsOptApp:Z

.field private blacklist mIsWeixinLauncherUI:Z

.field private blacklist mOplusChoreographerPerfInjector:Landroid/view/performance/OplusChoreographerPerfInjector;

.field private blacklist mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public blacklist mTraversalScheduled:Z

.field private blacklist mViewRoot:Landroid/view/ViewRootImpl;

.field public blacklist mWindowAttributes:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/OplusViewRootPerfInjector;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "viewRoot"    # Landroid/view/ViewRootImpl;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mFirstFrameScheduled:Z

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/OplusViewRootPerfInjector;->FRAME_ONT:Z

    .line 38
    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mIsOptApp:Z

    .line 40
    iput v0, p0, Landroid/view/OplusViewRootPerfInjector;->mDoFrameIndex:I

    .line 45
    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mDisableRelayout:Z

    .line 49
    iput-object p1, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mHandler:Landroid/os/Handler;

    .line 51
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mChoreographer:Landroid/view/Choreographer;

    .line 52
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getWindowAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 53
    new-instance v0, Landroid/view/performance/OplusChoreographerPerfInjector;

    iget-object v1, p0, Landroid/view/OplusViewRootPerfInjector;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v0, v1}, Landroid/view/performance/OplusChoreographerPerfInjector;-><init>(Landroid/view/Choreographer;)V

    iput-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mOplusChoreographerPerfInjector:Landroid/view/performance/OplusChoreographerPerfInjector;

    .line 54
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getTraversalScheduled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mTraversalScheduled:Z

    .line 55
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getTraversalRunnable()Landroid/view/ViewRootImpl$TraversalRunnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 56
    invoke-virtual {p0}, Landroid/view/OplusViewRootPerfInjector;->initViewRoomImpl()V

    .line 57
    return-void
.end method

.method private blacklist scheduleTraversalsImmediately()Z
    .locals 12

    .line 121
    sget-boolean v0, Landroid/view/OplusViewRootPerfInjector;->DEBUG:Z

    const-string v1, "OplusViewRootPerfInjector"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduleTraversalsImmediatelys DoFrameOptEnabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v2, Landroid/app/OplusActivityThreadExtImpl;->sDoFrameOptEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->FRAME_ONT:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    sget-boolean v0, Landroid/app/OplusActivityThreadExtImpl;->sDoFrameOptEnabled:Z

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 126
    :cond_1
    iget v0, p0, Landroid/view/OplusViewRootPerfInjector;->mDoFrameIndex:I

    const/4 v3, 0x1

    if-gt v0, v3, :cond_5

    iget-boolean v4, p0, Landroid/view/OplusViewRootPerfInjector;->mIsOptApp:Z

    if-eqz v4, :cond_5

    .line 127
    if-ne v0, v3, :cond_2

    .line 128
    sget-boolean v0, Landroid/app/OplusActivityThreadExtImpl;->sDoFrameOptEnabled:Z

    if-eqz v0, :cond_2

    .line 129
    sput-boolean v2, Landroid/app/OplusActivityThreadExtImpl;->sDoFrameOptEnabled:Z

    .line 132
    :cond_2
    iget v0, p0, Landroid/view/OplusViewRootPerfInjector;->mDoFrameIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/view/OplusViewRootPerfInjector;->mDoFrameIndex:I

    .line 134
    const-wide/16 v4, 0x8

    const-string v0, "scheduleTraversalsImmediately"

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 135
    sget-boolean v2, Landroid/view/OplusViewRootPerfInjector;->DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/IViewRootImplWrapper;->setTraversalScheduled(Z)V

    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IViewRootImplWrapper;->getTraversalBarrier()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "The specified message queue synchronization  barrier token has not been posted or has already been removed "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    iget-object v1, p0, Landroid/view/OplusViewRootPerfInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/IViewRootImplWrapper;->setTraversalBarrier(I)V

    .line 148
    iget-object v6, p0, Landroid/view/OplusViewRootPerfInjector;->mOplusChoreographerPerfInjector:Landroid/view/performance/OplusChoreographerPerfInjector;

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/view/OplusViewRootPerfInjector;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/performance/OplusChoreographerPerfInjector;->postCallbackImmediately(ILjava/lang/Object;Ljava/lang/Object;J)V

    .line 151
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mOplusChoreographerPerfInjector:Landroid/view/performance/OplusChoreographerPerfInjector;

    invoke-virtual {v0}, Landroid/view/performance/OplusChoreographerPerfInjector;->doFrameImmediately()V

    .line 152
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getUnbufferedInputDispatch()Z

    move-result v0

    if-nez v0, :cond_4

    .line 153
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->scheduleConsumeBatchedInput()V

    .line 155
    :cond_4
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->notifyRendererOfFramePending()V

    .line 156
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->pokeDrawLockIfNeeded()V

    .line 157
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 158
    return v3

    .line 160
    :cond_5
    return v2

    .line 123
    :cond_6
    :goto_1
    return v2
.end method


# virtual methods
.method public blacklist checkIsWebchatLauncherUI()V
    .locals 2

    .line 83
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 85
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mm.ui.LauncherUI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mIsWeixinLauncherUI:Z

    .line 88
    :cond_0
    return-void
.end method

.method public blacklist checkTraversalsImmediatelyProssible(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .line 100
    sget-boolean v0, Landroid/view/OplusViewRootPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTraversalsImmediatelyProssible isFirst "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFirstFrameScheduled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/OplusViewRootPerfInjector;->mFirstFrameScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusViewRootPerfInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mFirstFrameScheduled:Z

    if-nez v0, :cond_1

    .line 102
    invoke-direct {p0}, Landroid/view/OplusViewRootPerfInjector;->scheduleTraversalsImmediately()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mFirstFrameScheduled:Z

    .line 104
    return v0

    .line 107
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist checkTraversalsImmediatelyProssibleInTraversals(ZZ)Z
    .locals 2
    .param p1, "isFirst"    # Z
    .param p2, "mIsInTraversal"    # Z

    .line 112
    sget-boolean v0, Landroid/view/OplusViewRootPerfInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkTraversalsImmediatelyProssibleInTraversals isFirst "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsInTraversal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusViewRootPerfInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 114
    invoke-direct {p0}, Landroid/view/OplusViewRootPerfInjector;->scheduleTraversalsImmediately()Z

    move-result v0

    return v0

    .line 116
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist disableRelayout()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mDisableRelayout:Z

    return v0
.end method

.method public blacklist initViewRoomImpl()V
    .locals 5

    .line 61
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mViewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getWrapper()Landroid/view/IViewRootImplWrapper;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IViewRootImplWrapper;->getBasePackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mBasePackageName:Ljava/lang/String;

    .line 62
    sget-boolean v0, Landroid/view/OplusViewRootPerfInjector;->DEBUG:Z

    const-string v1, "OplusViewRootPerfInjector"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initViewRootImpl mBasePackageName"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/OplusViewRootPerfInjector;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    const-string v0, "persist.oppo.frameopts"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->FRAME_ONT:Z

    .line 65
    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Landroid/view/OplusViewRootPerfInjector;->mBasePackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Landroid/content/pm/OplusPackageManager;

    invoke-direct {v0}, Landroid/content/pm/OplusPackageManager;-><init>()V

    .line 69
    .local v0, "pm":Landroid/content/pm/OplusPackageManager;
    :try_start_0
    const-string v3, "com.tencent.mm"

    .line 70
    .local v3, "webchat":Ljava/lang/String;
    iget-object v4, p0, Landroid/view/OplusViewRootPerfInjector;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    iput-boolean v2, p0, Landroid/view/OplusViewRootPerfInjector;->mIsOptApp:Z

    .line 73
    :cond_1
    const/16 v2, 0x2e0

    iget-object v4, p0, Landroid/view/OplusViewRootPerfInjector;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/OplusPackageManager;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/OplusViewRootPerfInjector;->mDisableRelayout:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v3    # "webchat":Ljava/lang/String;
    goto :goto_0

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to query whitelist, package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/OplusViewRootPerfInjector;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/OplusViewRootPerfInjector;->mIsOptApp:Z

    .line 80
    .end local v0    # "pm":Landroid/content/pm/OplusPackageManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public blacklist isWebchatLauncherUI()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Landroid/view/OplusViewRootPerfInjector;->mIsWeixinLauncherUI:Z

    return v0
.end method

.method public blacklist setIsWebchatLauncherUI(Z)V
    .locals 0
    .param p1, "isWeixinLauncherUI"    # Z

    .line 95
    iput-boolean p1, p0, Landroid/view/OplusViewRootPerfInjector;->mIsWeixinLauncherUI:Z

    .line 96
    return-void
.end method
