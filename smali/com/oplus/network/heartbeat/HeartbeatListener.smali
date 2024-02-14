.class public Lcom/oplus/network/heartbeat/HeartbeatListener;
.super Ljava/lang/Object;
.source "HeartbeatListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;
    }
.end annotation


# instance fields
.field public final greylist mCallback:Lcom/oplus/network/heartbeat/IHeartbeatListener;


# direct methods
.method public constructor greylist <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 42
    new-instance v0, Landroid/os/HandlerExecutor;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0, v0}, Lcom/oplus/network/heartbeat/HeartbeatListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 43
    return-void
.end method

.method private constructor greylist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    .line 51
    new-instance v0, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;

    invoke-direct {v0, p0, p1}, Lcom/oplus/network/heartbeat/HeartbeatListener$IHeartbeatListenerStub;-><init>(Lcom/oplus/network/heartbeat/HeartbeatListener;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/oplus/network/heartbeat/HeartbeatListener;->mCallback:Lcom/oplus/network/heartbeat/IHeartbeatListener;

    .line 52
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HeartbeatListener executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist onHeartbeatStateUpdate(III[I)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "err"    # I
    .param p3, "destroy"    # I
    .param p4, "args"    # [I

    .line 57
    return-void
.end method
