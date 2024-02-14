.class Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;
.super Lcom/android/internal/telephony/signalMap/ISignalMapCallback$Stub;
.source "SignalMapCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalMapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISignalMapCallbackStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mSignalMapCallbackWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/SignalMapCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/telephony/SignalMapCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "signalMapCallback"    # Landroid/telephony/SignalMapCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/signalMap/ISignalMapCallback$Stub;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mSignalMapCallbackWeakRef:Ljava/lang/ref/WeakReference;

    .line 123
    iput-object p2, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 124
    return-void
.end method

.method static synthetic blacklist lambda$onGeoFenceStateChanged$0(Landroid/telephony/SignalMapCallback$GeoFenceStateListener;ZII)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/SignalMapCallback$GeoFenceStateListener;
    .param p1, "enable"    # Z
    .param p2, "cause"    # I
    .param p3, "distance"    # I

    .line 132
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SignalMapCallback$GeoFenceStateListener;->onGeoFenceStateChanged(ZII)V

    return-void
.end method

.method static synthetic blacklist lambda$onGeoFenceStateChangedSecondly$2(Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;
    .param p1, "enable"    # Z
    .param p2, "cause"    # I
    .param p3, "distance"    # I

    .line 141
    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;->onGeoFenceStateChangedSecondly(ZII)V

    return-void
.end method

.method static synthetic blacklist lambda$onQoSPredictResultChanged$4(Landroid/telephony/SignalMapCallback$QoSPredictListener;II)V
    .locals 0
    .param p0, "listener"    # Landroid/telephony/SignalMapCallback$QoSPredictListener;
    .param p1, "beforeEnter"    # I
    .param p2, "beforeExit"    # I

    .line 150
    invoke-interface {p0, p1, p2}, Landroid/telephony/SignalMapCallback$QoSPredictListener;->onQoSPredictResultChanged(II)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onGeoFenceStateChanged$1$android-telephony-SignalMapCallback$ISignalMapCallbackStub(Landroid/telephony/SignalMapCallback$GeoFenceStateListener;ZII)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/SignalMapCallback$GeoFenceStateListener;
    .param p2, "enable"    # Z
    .param p3, "cause"    # I
    .param p4, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/SignalMapCallback$GeoFenceStateListener;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onGeoFenceStateChangedSecondly$3$android-telephony-SignalMapCallback$ISignalMapCallbackStub(Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;
    .param p2, "enable"    # Z
    .param p3, "cause"    # I
    .param p4, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic blacklist lambda$onQoSPredictResultChanged$5$android-telephony-SignalMapCallback$ISignalMapCallbackStub(Landroid/telephony/SignalMapCallback$QoSPredictListener;II)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/SignalMapCallback$QoSPredictListener;
    .param p2, "beforeEnter"    # I
    .param p3, "beforeExit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/SignalMapCallback$QoSPredictListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onGeoFenceStateChanged(ZII)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "cause"    # I
    .param p3, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mSignalMapCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalMapCallback$GeoFenceStateListener;

    .line 129
    .local v0, "listener":Landroid/telephony/SignalMapCallback$GeoFenceStateListener;
    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    new-instance v7, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;Landroid/telephony/SignalMapCallback$GeoFenceStateListener;ZII)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 133
    return-void
.end method

.method public blacklist onGeoFenceStateChangedSecondly(ZII)V
    .locals 8
    .param p1, "enable"    # Z
    .param p2, "cause"    # I
    .param p3, "distance"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mSignalMapCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;

    .line 138
    .local v0, "listener":Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;
    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    new-instance v7, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;Landroid/telephony/SignalMapCallback$GeoFenceStateListenerSecondly;ZII)V

    invoke-static {v7}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 142
    return-void
.end method

.method public blacklist onQoSPredictResultChanged(II)V
    .locals 2
    .param p1, "beforeEnter"    # I
    .param p2, "beforeExit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;->mSignalMapCallbackWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalMapCallback$QoSPredictListener;

    .line 147
    .local v0, "listener":Landroid/telephony/SignalMapCallback$QoSPredictListener;
    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    new-instance v1, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0, p1, p2}, Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub$$ExternalSyntheticLambda4;-><init>(Landroid/telephony/SignalMapCallback$ISignalMapCallbackStub;Landroid/telephony/SignalMapCallback$QoSPredictListener;II)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 151
    return-void
.end method
