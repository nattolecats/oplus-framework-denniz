.class public Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
.super Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Stub;
.source "OplusScrollCaptureConnectionInner.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$ConsumerCallback;,
        Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$RunnableCallback;,
        Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;
    }
.end annotation


# static fields
.field private static final blacklist END_CAPTURE:Ljava/lang/String; = "endCapture"

.field private static final blacklist REQUEST_IMAGE:Ljava/lang/String; = "requestImage"

.field private static final blacklist SESSION:Ljava/lang/String; = "Session"

.field private static final blacklist START_CAPTURE:Ljava/lang/String; = "startCapture"

.field private static final blacklist TAG:Ljava/lang/String; = "OplusScrollCaptureConnection"

.field private static final blacklist TRACE_TRACK:Ljava/lang/String; = "Scroll Capture"


# instance fields
.field private volatile blacklist mActive:Z

.field private blacklist mCancellation:Landroid/os/CancellationSignal;

.field private final blacklist mCloseGuard:Landroid/util/CloseGuard;

.field private volatile blacklist mConnected:Z

.field private blacklist mLocal:Landroid/view/ScrollCaptureCallback;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private blacklist mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

.field private final blacklist mScrollBounds:Landroid/graphics/Rect;

.field private blacklist mSession:Landroid/view/ScrollCaptureSession;

.field private blacklist mTraceId:I

.field private final blacklist mUiThread:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic blacklist $r8$lambda$tFT_HF1aE_Drl__mjWI3wMFwb7Q(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->onStartCaptureCompleted()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tw9AK4Etl7fPV1ZwjfFvOuimA1E(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->onEndCaptureCompleted()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/ScrollCaptureTarget;)V
    .locals 2
    .param p1, "uiThread"    # Ljava/util/concurrent/Executor;
    .param p2, "selectedTarget"    # Landroid/view/ScrollCaptureTarget;

    .line 88
    invoke-direct {p0}, Lcom/oplus/screenshot/IOplusScrollCaptureConnectionInner$Stub;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Landroid/util/CloseGuard;

    invoke-direct {v0}, Landroid/util/CloseGuard;-><init>()V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCloseGuard:Landroid/util/CloseGuard;

    .line 89
    const-string v0, "<uiThread> must non-null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    .line 90
    const-string v0, "<selectedTarget> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getScrollBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "target.getScrollBounds() must be non-null to construct a client"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mScrollBounds:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getCallback()Landroid/view/ScrollCaptureCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 94
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/ScrollCaptureTarget;->getPositionInWindow()Landroid/graphics/Point;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mPositionInWindow:Landroid/graphics/Point;

    .line 95
    return-void
.end method

.method private blacklist cancelPendingAction()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 260
    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "CancellationSignal.cancel"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v0, "OplusScrollCaptureConnection"

    const-string v1, "cancelling pending operation."

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 265
    :cond_0
    return-void
.end method

.method private blacklist checkActive()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 279
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    if-eqz v1, :cond_0

    .line 282
    monitor-exit v0

    .line 283
    return-void

    .line 280
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not started!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
    throw v1

    .line 282
    .restart local p0    # "this":Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic blacklist lambda$close$3()V
    .locals 0

    .line 242
    return-void
.end method

.method static synthetic blacklist lambda$close$4(Landroid/view/ScrollCaptureCallback;)V
    .locals 1
    .param p0, "callback"    # Landroid/view/ScrollCaptureCallback;

    .line 242
    new-instance v0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, v0}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist onEndCaptureCompleted()V
    .locals 5

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    .line 213
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    if-eqz v1, :cond_0

    .line 214
    invoke-interface {v1}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;->onCaptureEnded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 220
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->close()V

    .line 221
    goto :goto_1

    .line 219
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "OplusScrollCaptureConnection"

    const-string v3, "Caught exception confirming capture end!"

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 222
    :goto_1
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "endCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 223
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-string v4, "Session"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 224
    return-void

    .line 219
    :goto_2
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 220
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->close()V

    .line 221
    throw v1
.end method

.method private blacklist onStartCaptureCompleted()V
    .locals 5

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;->onCaptureStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OplusScrollCaptureConnection"

    const-string v2, "Shutting down due to error: "

    invoke-static {v1, v2, v0}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->close()V

    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 134
    const-wide/16 v0, 0x2

    iget v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-string v3, "Scroll Capture"

    const-string v4, "startCapture"

    invoke-static {v0, v1, v3, v4, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 4

    .line 228
    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "binderDied"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v0, "OplusScrollCaptureConnection"

    const-string v1, "Controlling process just died."

    invoke-static {v0, v1}, Lcom/oplus/util/OplusLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->close()V

    .line 232
    return-void
.end method

.method public blacklist close()V
    .locals 4

    .line 237
    const-wide/16 v0, 0x2

    const-string v2, "Scroll Capture"

    const-string v3, "close"

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->instantForTrack(JLjava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    const-string v0, "OplusScrollCaptureConnection"

    const-string v2, "close(): capture session still active! Ending now."

    invoke-static {v0, v2}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->cancelPendingAction()V

    .line 241
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 242
    .local v0, "callback":Landroid/view/ScrollCaptureCallback;
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda5;-><init>(Landroid/view/ScrollCaptureCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 243
    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    .line 245
    .end local v0    # "callback":Landroid/view/ScrollCaptureCallback;
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    if-eqz v0, :cond_1

    .line 246
    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 248
    :cond_1
    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    .line 249
    iput-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mConnected:Z

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mSession:Landroid/view/ScrollCaptureSession;

    .line 251
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    .line 252
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    .line 253
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V

    .line 254
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 255
    invoke-static {p0}, Ljava/lang/ref/Reference;->reachabilityFence(Ljava/lang/Object;)V

    .line 256
    return-void
.end method

.method public blacklist endCapture()Landroid/os/ICancellationSignal;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "endCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 193
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->checkActive()V

    .line 194
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->cancelPendingAction()V

    .line 195
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 196
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 198
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V

    .line 199
    invoke-static {v1, v2, v3}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 201
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 206
    return-object v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCloseGuard:Landroid/util/CloseGuard;

    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    .line 298
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 301
    throw v0
.end method

.method public blacklist isActive()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    return v0
.end method

.method public blacklist isConnected()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mConnected:Z

    return v0
.end method

.method synthetic blacklist lambda$endCapture$2$com-oplus-screenshot-OplusScrollCaptureConnectionInner(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 202
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_0

    .line 203
    invoke-interface {v0, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureEnd(Ljava/lang/Runnable;)V

    .line 205
    :cond_0
    return-void
.end method

.method synthetic blacklist lambda$requestImage$1$com-oplus-screenshot-OplusScrollCaptureConnectionInner(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "requestRect"    # Landroid/graphics/Rect;

    .line 148
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    if-eqz v0, :cond_1

    .line 149
    instance-of v0, v0, Lcom/oplus/screenshot/IOplusScrollCaptureCallback;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$1;

    invoke-direct {v2, p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$1;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V

    .line 151
    invoke-static {v0, v1, v2}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    .line 157
    .local v0, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[Landroid/graphics/Rect;>;"
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    check-cast v1, Lcom/oplus/screenshot/IOplusScrollCaptureCallback;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallback;->onScrollCaptureImageRequest2(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 159
    .end local v0    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<[Landroid/graphics/Rect;>;"
    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$2;

    invoke-direct {v2, p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$2;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V

    .line 161
    invoke-static {v0, v1, v2}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object v0

    .line 167
    .local v0, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {v1, v2, v3, v4, v0}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureImageRequest(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    .line 171
    .end local v0    # "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/graphics/Rect;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method synthetic blacklist lambda$startCapture$0$com-oplus-screenshot-OplusScrollCaptureConnectionInner(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Runnable;

    .line 120
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mSession:Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    invoke-interface {v0, v1, v2, p1}, Landroid/view/ScrollCaptureCallback;->onScrollCaptureStart(Landroid/view/ScrollCaptureSession;Landroid/os/CancellationSignal;Ljava/lang/Runnable;)V

    return-void
.end method

.method varargs blacklist onImageRequestCompleted([Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "capturedArea"    # [Landroid/graphics/Rect;

    .line 179
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    const/4 v2, 0x0

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;->onImageRequestCompleted(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 185
    goto :goto_1

    .line 184
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "OplusScrollCaptureConnection"

    const-string v3, "Shutting down due to error: "

    invoke-static {v2, v3, v1}, Lcom/oplus/util/OplusLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    invoke-virtual {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 186
    :goto_1
    const-wide/16 v0, 0x2

    iget v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-string v3, "Scroll Capture"

    const-string v4, "requestImage"

    invoke-static {v0, v1, v3, v4, v2}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;Ljava/lang/String;I)V

    .line 187
    return-void

    .line 184
    :goto_2
    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 185
    throw v1
.end method

.method public blacklist requestImage(Landroid/graphics/Rect;)Landroid/os/ICancellationSignal;
    .locals 5
    .param p1, "requestRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "requestImage"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 141
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->checkActive()V

    .line 142
    invoke-direct {p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->cancelPendingAction()V

    .line 143
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 144
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 147
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda4;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;Landroid/graphics/Rect;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-object v0
.end method

.method public blacklist startCapture(Landroid/view/Surface;Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;)Landroid/os/ICancellationSignal;
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "remote"    # Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    .line 102
    const-wide/16 v1, 0x2

    const-string v3, "Scroll Capture"

    const-string v4, "Session"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 103
    iget v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mTraceId:I

    const-string v4, "startCapture"

    invoke-static {v1, v2, v3, v4, v0}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    .line 104
    iget-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCloseGuard:Landroid/util/CloseGuard;

    const-string v1, "ScrollCaptureConnection.close"

    invoke-virtual {v0, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    const-string v0, "<callbacks> must non-null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    iput-object v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    .line 110
    invoke-interface {v0}, Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mConnected:Z

    .line 113
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 114
    .local v0, "cancellation":Landroid/os/ICancellationSignal;
    invoke-static {v0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    .line 115
    new-instance v1, Landroid/view/ScrollCaptureSession;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mScrollBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mPositionInWindow:Landroid/graphics/Point;

    invoke-direct {v1, p1, v2, v3}, Landroid/view/ScrollCaptureSession;-><init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V

    iput-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mSession:Landroid/view/ScrollCaptureSession;

    .line 117
    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mCancellation:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda2;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;)V

    .line 118
    invoke-static {v1, v2, v3}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$SafeCallback;->create(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    .line 120
    .local v1, "listener":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mUiThread:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1}, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner$$ExternalSyntheticLambda3;-><init>(Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;Ljava/lang/Runnable;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-object v0

    .line 107
    .end local v0    # "cancellation":Landroid/os/ICancellationSignal;
    .end local v1    # "listener":Ljava/lang/Runnable;
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "surface must be valid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollCaptureConnection{active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mSession:Landroid/view/ScrollCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mRemote:Lcom/oplus/screenshot/IOplusScrollCaptureCallbacksInner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/screenshot/OplusScrollCaptureConnectionInner;->mLocal:Landroid/view/ScrollCaptureCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
