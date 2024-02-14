.class Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;
.super Lcom/oplus/network/heartbeat/IHeartbeatListener$Stub;
.source "HeartbeatListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/network/heartbeat/HeartbeatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IHeartbeatListenerStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mHeartbeatListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/network/heartbeat/HeartbeatListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist <init>(Lcom/oplus/network/heartbeat/HeartbeatListener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "heartBeatListener"    # Lcom/oplus/network/heartbeat/HeartbeatListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 69
    invoke-direct {p0}, Lcom/oplus/network/heartbeat/IHeartbeatListener$Stub;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;->mHeartbeatListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 71
    iput-object p2, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    .line 72
    return-void
.end method

.method static synthetic blacklist lambda$onHeartbeatStateUpdate$0(Lcom/oplus/network/heartbeat/HeartbeatListener;III[I)V
    .locals 0
    .param p0, "csl"    # Lcom/oplus/network/heartbeat/HeartbeatListener;
    .param p1, "event"    # I
    .param p2, "err"    # I
    .param p3, "destroy"    # I
    .param p4, "args"    # [I

    .line 82
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/network/heartbeat/HeartbeatListener;->onHeartbeatStateUpdate(III[I)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onHeartbeatStateUpdate$1$com-oplus-network-heartbeat-HeartbeatListener$IHeartbeatListenerStub(Lcom/oplus/network/heartbeat/HeartbeatListener;III[I)V
    .locals 8
    .param p1, "csl"    # Lcom/oplus/network/heartbeat/HeartbeatListener;
    .param p2, "event"    # I
    .param p3, "err"    # I
    .param p4, "destroy"    # I
    .param p5, "args"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda0;-><init>(Lcom/oplus/network/heartbeat/HeartbeatListener;III[I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public greylist onHeartbeatStateUpdate(III[I)V
    .locals 9
    .param p1, "event"    # I
    .param p2, "err"    # I
    .param p3, "destroy"    # I
    .param p4, "args"    # [I

    .line 77
    iget-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;->mHeartbeatListenerWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/network/heartbeat/HeartbeatListener;

    .line 78
    .local v0, "csl":Lcom/oplus/network/heartbeat/HeartbeatListener;
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 81
    :cond_0
    new-instance v8, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub$$ExternalSyntheticLambda1;-><init>(Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;Lcom/oplus/network/heartbeat/HeartbeatListener;III[I)V

    invoke-static {v8}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 83
    return-void
.end method
